
if (!Array.isArray) {
	Array.isArray = function(arg) {
		return Object.prototype.toString.call(arg) === '[object Array]';
	};
}
scServices.dataUtil = {
	serialiseObjJs : function(pObj){
		try{
			return JSON.stringify(pObj);
		} catch(e){ // TODO: purge when IE7 not supported
			var vBuf="";
			if(pObj) for (var vKey in pObj){
				var vLbl = (Array.isArray(pObj)) ? "" : '"' + vKey + '":';
				var vObj = pObj[vKey];
				if(vObj != null) {
					vBuf+= (vBuf!="" ? "," : "") + vLbl;
					if(Array.isArray(vObj) || typeof vObj == "object" || vObj instanceof Object) vBuf+= this.serialiseObjJs(vObj);
					else if(typeof vObj == "number") vBuf+= '"' + vObj + '"';
					else vBuf+= '"' + vObj.toString().replace(/[\t\n\r\\'"]/g, this.escapeJs) + '"';
				}
			}
			if(Array.isArray(pObj)) return "[" + vBuf + "]";
			else if(typeof pObj == "object" || vObj instanceof Object) return "{" + vBuf + "}";
			else return vBuf;
		}
	},
	deserialiseObjJs : function(pString){
		if(!pString) return {};
		try{
			return JSON.parse(pString);
		} catch(e){ // TODO: purge when IE7 not supported
			var vVal;
			eval("vVal="+pString);
			return vVal;
		}
	},
	escapeJs : function(pChar){ // TODO: purge when IE7 not supported
		switch(pChar) {
			case '\t' : return "\\t";
			case '\n' : return "\\n";
			case '\r' : return "\\r";
			case '\'' : return "\\\'";
			case '\"' : return "\\\"";
			case '\\' : return "\\\\";
		} 
		return "";
	}
}

scServices.storage = scOnLoads[scOnLoads.length] = {
	fIsActive : false,
	fIsLocal : false,
	fDomain : document.location.hostname,
	fRootKey : document.location.pathname+"/",
	fStorage : null,
	isStorageActive : function(){return this.fIsActive;},
	activeStorage : function(pBoolean){
		if(!pBoolean) this.fIsActive = false;
		else {
			try {
				if (typeof localStorage != "undefined") {
					this.fStorage = localStorage;
					this.fIsLocal = true;
				} else {
					this.fStorage = globalStorage[this.fDomain];
				}
				this.fIsActive = true;
			}catch(e){
				this.fIsActive = false;
			}
		}
		return this.fIsActive;
	},
	getStorage : function(){return this.fStorage},
	getRootKey : function(){return this.fRootKey},
	setItem : function(pKey,pVal){
		if (!this.isStorageActive) return null;
		return this.fStorage.setItem(pKey, pVal);
	},
	getItem : function(pKey){
		if (!this.isStorageActive) return null;
		var vIt = this.fStorage.getItem(pKey);
		return vIt ? (this.fIsLocal ? vIt : vIt.value) : null;
	},
	resetData : function(pRootKey){
		if (this.fIsLocal){
			this.fStorage.clear();
		} else {
			if(!pRootKey) pRootKey = this.fRootKey;
			var vCnt = this.fStorage.length;
			for(var i = 0; i < vCnt; i++) {
				var vKey = this.fStorage.key(i);
				if(vKey.indexOf(pRootKey)==0) this.fStorage.setItem(vKey, "");
			}
		}
	},
	onLoad: function(){
		if(scServices.scorm2k4 && scServices.scorm2k4.isScorm2k4Active()) return;
		if(scServices.scorm12 && scServices.scorm12.isScorm12Active()) return;
		this.activeStorage(true);
	},
	loadSortKey: "0storage"
}


scServices.assmntMgr = scOnLoads[scOnLoads.length] = scOnUnloads[scOnUnloads.length] = {
	_SendDataOnSave : true,
	setResponse: function(pId, pSession, pField, pValue){
		this.xSetResponse(pId, pSession, pField, pValue);
		if(this._listeners) this.xFireEvent({fId:pId, fSession:pSession, fField:pField, fValue:pValue}, "handleAssmntResponse");
		return pValue;
	},
	resetResponses: function(pId, pSession){
		this.xResetResponses(pId, pSession);
		if(this._listeners) this.xFireEvent({fId:pId, fSession:pSession}, "handleAssmntResponse");
	},
	resetAll: function(){
		this.xResetAll();
		if(this._listeners) this.xFireEvent({}, "handleAssmntResponse");
	},
	setPts: function(pId, pSession, pMin, pScore, pMax){
		this.xSetPts(pId, pSession, pMin, pScore, pMax);
		if(this._listeners) this.xFireEvent({fId:pId, fSession:pSession, fMin:pMin, fScore:pScore, fMax:pMax}, "handleAssmntPts");
	},
	getCompletionStatus: function(pId, pSession){
		return this.xGetCompletionStatus(pId, pSession) || "notAttempt";
	},
	setCompletionStatus: function(pId, pSession, pStatus){
		switch(pStatus) {
			case "attempt" : 
			case "complete" : 
			case "notAttempt" : 
				break;
			default :
				pStatus = "notAttempt";
		}
		this.xSetCompletionStatus(pId, pSession, pStatus);
		if(this._listeners) this.xFireEvent({fId:pId, fSession:pSession, fStatus:pStatus}, "handleAssmntStatus");
		return pStatus;
	},
	setHintsShown: function(pId, pSession, pHintsShown){
		this.xSetHintsShown(pId, pSession, pHintsShown);
		if(this._listeners) this.xFireEvent({fId:pId, fSession:pSession, fHintsShown:pHintsShown}, "handleAssmntHints");
		return pHintsShown;
	},
	
	_listeners : null,
	addEventListener : function (pListerner){
		this._listeners = {l:pListerner, next:this._listeners};
	},
	removeEventListener : function (pListerner){
		var vListener = this._listeners;
		var vPrev = null;
		while(vListener) {
			if(vListener.l === pListerner) {
				if(vPrev) vPrev.next = vListener.next; else this._listeners = vListener.next;
			}
			vPrev = vListener;
			vListener = vListener.next;
		}
	},
	xFireEvent : function (pEvent, pMethod){
		var vListener = this._listeners;
		while(vListener) {
			try{vListener.l[pMethod].call(vListener.l, pEvent)}catch(e){}
			vListener = vListener.next;
		}
	},
	xConnect2k4 : function(){
		this._api = scServices.scorm2k4.getScorm2k4API();
		var vCount = this._api.GetValue("cmi.interactions._count");
		this._interactionsMap = {};
		for(var i = 0; i < vCount; i++) this._interactionsMap[this._api.GetValue("cmi.interactions."+i+".id")] = {idx:i};
		this.xGetStruct = function(pId, pSession, pStruct){
			if(pId==null) return null;
			pSession = pSession ? pSession+"X" : "#"; /* X:protection bug parsers JS (ex: si pSession=eval sur firefox)*/
			var vInterac = this._interactionsMap[pId];
			if(vInterac) {
				if( ! ("session" in vInterac)) try{vInterac.session=scServices.dataUtil.deserialiseObjJs(this._api.GetValue("cmi.interactions."+this._interactionsMap[pId].idx+".learner_response"))}catch(e){vInterac.session={};};
				var vSess = vInterac.session[pSession];
				if(vSess) return vSess[pStruct];
			}
			return null;
		};
		this.xSetStruct = function(pId, pSession, pStruct, pValue){
			if(pId==null) return null;
			pSession = pSession ? pSession+"X" : "#";
			var vInterac = this._interactionsMap[pId];
			if(!vInterac) {
				vInterac = {};
				vInterac.session = {};
				this._interactionsMap[pId] = vInterac;
			} else if( ! ("session" in vInterac)) try{vInterac.session=scServices.dataUtil.deserialiseObjJs(this._api.GetValue("cmi.interactions."+this._interactionsMap[pId].idx+".learner_response"))}catch(e){vInterac.session={};};
			vInterac.updated = true;
			if(! (pSession in vInterac.session))vInterac.session[pSession] = {};
			vInterac.session[pSession][pStruct] = pValue;
		};
		this.xSynch = function(){
			for(var vId in this._interactionsMap) {
				var vInterac = this._interactionsMap[vId];
				if(vInterac.updated) {
					try {
					if(! ("idx" in vInterac)) {
						vInterac.idx = this._api.GetValue("cmi.interactions._count");
						this._api.SetValue("cmi.interactions."+vInterac.idx+".id", vId);
						this._api.SetValue("cmi.interactions."+vInterac.idx+".type", "other");
					}
					this._api.SetValue("cmi.interactions."+vInterac.idx+".learner_response", scServices.dataUtil.serialiseObjJs(vInterac.session));
					}catch(e){}
					vInterac.updated = false;
				}
			}
		};
		// Enregistrement des données
		this.commit = function(pForceSendData){
			var vMustSendData = pForceSendData!=undefined ?  pForceSendData : this._SendDataOnSave;
			this.xSynch(); 
			if(vMustSendData) this._api.Commit("");
		};
		this.getResponse = function(pId, pSession, pField){var vStruct = this.xGetStruct(pId, pSession, "r"); return vStruct ? vStruct[pField] : null;};
		this.xSetResponse = function(pId, pSession, pField, pValue){var vStruct = this.xGetStruct(pId, pSession, "r") || {}; vStruct[pField] = pValue; this.xSetStruct(pId, pSession, "r", vStruct);};
		this.xResetResponses = function(pId, pSession){this.xSetStruct(pId, pSession, "r", {});};
		this.xResetAll = function(){
			for (var vId in this._interactionsMap){
				var vInterac = this._interactionsMap[vId];
				vInterac.updated = true;
				for (var vSession in vInterac.session)
					vInterac.session[vSession]={};
			} 
		};
		this.getMinPts = function(pId, pSession){return this.xGetStruct(pId, pSession, "i");};
		this.getScorePts = function(pId, pSession){return this.xGetStruct(pId, pSession, "s");};
		this.getMaxPts = function(pId, pSession){return this.xGetStruct(pId, pSession, "a");};
		this.xSetPts = function(pId, pSession, pMin, pScore, pMax){this.xSetStruct(pId, pSession, "i", pMin); this.xSetStruct(pId, pSession, "s", pScore); this.xSetStruct(pId, pSession, "a", pMax);};
		this.xGetCompletionStatus = function(pId, pSession){return this.xGetStruct(pId, pSession, "st");};
		this.xSetCompletionStatus = function(pId, pSession, pStatus){this.xSetStruct(pId, pSession, "st", pStatus);};
		this.getHintsShown = function(pId, pSession){return this.xGetStruct(pId, pSession, "h");};
		this.xSetHintsShown = function(pId, pSession, pHintsShown){this.xSetStruct(pId, pSession, "h", pHintsShown);};
	},
	xConnect12 : function(){
		this.commit = function(pForceSendData){scServices.suspendDataStorage.commit(pForceSendData);};
		this.xSynch = function(){};
		this.getResponse = function(pId, pSession, pField){return scServices.suspendDataStorage.getVal(["assmnt", pSession ? pSession+"X" : "#", pId, "r", pField]);};
		this.xSetResponse = function(pId, pSession, pField, pValue){scServices.suspendDataStorage.setVal(["assmnt", pSession ? pSession+"X" : "#", pId, "r", pField], pValue);};
		this.xResetResponses = function(pId, pSession){scServices.suspendDataStorage.removeVal(["assmnt", pSession ? pSession+"X" : "#", pId, "r"]);};
		this.xResetAll = function(){scServices.suspendDataStorage.removeVal(["assmnt"])};
		this.getMinPts = function(pId, pSession){return scServices.suspendDataStorage.getVal(["assmnt", pSession ? pSession+"X" : "#", pId, "i"]);};
		this.getScorePts = function(pId, pSession){return scServices.suspendDataStorage.getVal(["assmnt", pSession ? pSession+"X" : "#", pId, "s"]);};
		this.getMaxPts = function(pId, pSession){return scServices.suspendDataStorage.getVal(["assmnt", pSession ? pSession+"X" : "#", pId, "a"]);};
		this.xSetPts = function(pId, pSession, pMin, pScore, pMax){scServices.suspendDataStorage.setVal(["assmnt", pSession ? pSession+"X" : "#", pId, "i"], pMin); scServices.suspendDataStorage.setVal(["assmnt", pSession ? pSession+"X" : "#", pId, "s"], pScore); scServices.suspendDataStorage.setVal(["assmnt", pSession ? pSession+"X" : "#", pId, "a"], pMax); };
		this.xGetCompletionStatus = function(pId, pSession){return scServices.suspendDataStorage.getVal(["assmnt", pSession ? pSession+"X" : "#", pId, "st"]);};
		this.xSetCompletionStatus = function(pId, pSession, pStatus){scServices.suspendDataStorage.setVal(["assmnt", pSession ? pSession+"X" : "#", pId, "st"], pStatus);};
		this.getHintsShown = function(pId, pSession){return scServices.suspendDataStorage.getVal(["assmnt", pSession ? pSession+"X" : "#", pId, "h"]);};
		this.xSetHintsShown = function(pId, pSession, pHintsShown){scServices.suspendDataStorage.setVal(["assmnt", pSession ? pSession+"X" : "#", pId, "h"], pHintsShown);};
	},
	xConnectNone : function(){
		this.commit = function(pForceSendData){};
		this.xSynch = function(){};
		this.getResponse = function(pId, pSession, pField){return this.data.resp[pSession+"."+pId+"."+pField];};
		this.xSetResponse = function(pId, pSession, pField, pValue){this.data.resp[pSession+"."+pId+"."+pField] = pValue;};
		this.xResetAll = function(){this.xInitData();};
		this.xResetResponses = function(pId, pSession){var vRegexp = new RegExp("^"+pSession+"\\."+pId+".*"); for(var vK in this.data.resp) if(vRegexp.test(vK)) delete this.data.resp[vK]};
		this.getMinPts = function(pId, pSession){return this.data.minPts[pSession+"."+pId];};
		this.getScorePts = function(pId, pSession){return this.data.scorePts[pSession+"."+pId];};
		this.getMaxPts = function(pId, pSession){return this.data.maxPts[pSession+"."+pId];};
		this.xSetPts = function(pId, pSession, pMin, pScore, pMax){this.data.minPts[pSession+"."+pId] = pMin; this.data.scorePts[pSession+"."+pId] = pScore; this.data.maxPts[pSession+"."+pId] = pMax;};
		this.xGetCompletionStatus = function(pId, pSession){return this.data.status[pSession+"."+pId];};
		this.xSetCompletionStatus = function(pId, pSession, pStatus){this.data.status[pSession+"."+pId] = pStatus;};
		this.getHintsShown = function(pId, pSession){return this.data.hints[pSession+"."+pId];};
		this.xSetHintsShown = function(pId, pSession, pHintsShown){this.data.hints[pSession+"."+pId] = pHintsShown;};
		this.xInitData = function(){try{this.data = {resp:{},scorePts:{},minPts:{},maxPts:{},status:{},hints:{}};} catch(e){}};
		this.xInitData();
	},
	xConnectStorage : function(){
		this.xConnectNone();
		this.reloadData = function(){try{this.xInitData();var vItem=scServices.storage.getItem(scServices.storage.getRootKey()+"assmnt");if(vItem) this.data=scServices.dataUtil.deserialiseObjJs(vItem);} catch(e){}};
		this.xInitData = function(){this.data={resp:{},scorePts:{},minPts:{},maxPts:{},status:{},hints:{}}};
		this.commit = function(pForceSendData){scServices.storage.getStorage().setItem(scServices.storage.getRootKey()+"assmnt", scServices.dataUtil.serialiseObjJs(this.data))};	
		this.reloadData();
	},
	/* interne */
	onLoad: function(){
		if(scServices.scorm2k4 && scServices.scorm2k4.isScorm2k4Active()) this.xConnect2k4();
		else if(scServices.scorm12 && scServices.scorm12.isScorm12Active() && scServices.suspendDataStorage) this.xConnect12();
		else if(scServices.storage && scServices.storage.isStorageActive()) this.xConnectStorage();
		else this.xConnectNone();
	},
	loadSortKey: "2assmntMgr",
	onUnload: function(){
		this.xSynch();
	},
	unloadSortKey: "2assmntMgr"
};
