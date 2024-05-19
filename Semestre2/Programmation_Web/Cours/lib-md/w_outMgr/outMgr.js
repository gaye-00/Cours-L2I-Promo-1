/* === Opale Aurora menu manager =============================================== */
var outMgr = {
	fMnuPath : "ide:menu",
	fOutPath : "ide:menu/des:ul.mnu",
	fClsOut : "tplOut",
	fClsOffUp : "btnOff",
	fClsOffDown : "btnOff",
	
	fOut : null,
	fTglBtn : null,
	fUrlOutline : null,

	fCls : "mnu",
	fClsTgl : "btnOutTgl",
	fResPrefix : "/skin/img/mnu",
	fOverflowMethod : "hidden",

	fWheelScrollFactor : 5,

	fStrings : ["défilement haut","Faire défiler le menu vers le haut",
	/*02*/      "défilement bas","Faire défiler le menu vers le bas",
	/*04*/      "Masquer le plan","Afficher le plan",
	/*06*/      "Masquer / afficher le plan","",
	/*08*/      "Ouvrir le menu \'%s\'","Fermer le menu \'%s\'"],


	/* === Public ============================================================= */
	init : function() {
		this.fIsLocal = window.location.protocol == "file:";
		var vMnu = scPaLib.findNode(this.fMnuPath);
		this.fOut = scPaLib.findNode(this.fOutPath);
		if (!this.fOut || !vMnu) return;
		this.fMnuFra = this.fOut.parentNode;
		this.fFilterIsClosed = scPaLib.compileFilter("ul.mnu_closed");
		this.fFilterIsBranch = scPaLib.compileFilter(".type_b");

		// Init
		var vSubLbls = scPaLib.findNodes("des:li.type_b/chi:div",this.fOut);
		for (var i=0; i < vSubLbls.length; i++) {
			var vLbl = vSubLbls[i];
			this.xAddToggleBtn(vLbl, vLbl.firstChild.textContent, scPaLib.findNode("nsi:ul",vLbl));
		}
		if ("scormMgr" in window){
			var vLbls = scPaLib.findNodes("des:li/chi:div",this.fOut);
			for (var i=0; i < vLbls.length; i++) {
				var vLbl = vLbls[i];
				var vLnk = scPaLib.findNode("chi:a.item",vLbl);
				scormMgr.buildSeenBtn(vLbl, vLnk? vLnk.href : scCoLib.hrefBase(), vLbl.firstChild.textContent);
			}
		}
		
		// Init Scroll
		var vVisRule = null;
		if ("ScSiRuleEnsureVisible" in window) vVisRule = new ScSiRuleEnsureVisible("ide:menu/des:.sel_yes/chi:div", "anc:ul.mnu");
		this.fOut.className = this.fOut.className.replace("static", "");
		this.fOut.style.overflow=this.fOverflowMethod;
		this.fSrlUp = scDynUiMgr.addElement("div", this.fMnuFra, this.fCls+"SrlUpFra "+this.fClsOffUp, this.fOut);
		this.fSrlUpBtn = tplMgr.addBtn(this.fSrlUp, this.fCls+"SrlUpBtn", this.fStrings[0], this.fStrings[1]);
		this.fSrlUpBtn.setAttribute("aria-hiden", "true");
		this.fSrlDwn = scDynUiMgr.addElement("div", this.fMnuFra, this.fCls+"SrlDwnFra "+this.fClsOffDown, this.fOut);
		this.fSrlDwnBtn = tplMgr.addBtn(this.fSrlDwn, this.fCls+"SrlDwnBtn", this.fStrings[2], this.fStrings[3]);
		this.fSrlDwnBtn.setAttribute("aria-hiden", "true");
		
		scOnLoads[scOnLoads.length] = this;
	},

	declareOutline : function(pUrl){
		this.fUrlOutline = pUrl;
	},

	onLoad : function() {
		try{
		// Init Scroll up button
		this.fSrlUp.ontouchstart = function(){
			this.fIsTouched = true;
		}
		this.fSrlUp.onclick = function(){
			this.fIsTouched = false;
		}
		this.fSrlUp.onmouseover = function(){
			if (this.fIsTouched) return;
			if(outMgr.scrollTask.fSpeed >= 0) {
				outMgr.scrollTask.fSpeed = -2; 
				scTiLib.addTaskNow(outMgr.scrollTask);
			}
		}
		this.fSrlUp.onmouseout = function(){
			if (this.fIsTouched) return;
			outMgr.scrollTask.fSpeed = 0;
		}
		this.fSrlUpBtn.onclick = function(){
			outMgr.scrollTask.step(-20); 
			return false;
		}
		// Init Scroll down button
		this.fSrlDwn.ontouchstart = function(){
			this.fIsTouched = true;
		}
		this.fSrlDwn.onclick = function(){
			this.fIsTouched = false;
		}
		this.fSrlDwn.onmouseover = function(){
			if (this.fIsTouched) return;
			if(outMgr.scrollTask.fSpeed <= 0) {
				outMgr.scrollTask.fSpeed = 2; 
				scTiLib.addTaskNow(outMgr.scrollTask);
			}
		}
		this.fSrlDwn.onmouseout = function(){
			if (this.fIsTouched) return;
			outMgr.scrollTask.fSpeed = 0;
		}
		this.fSrlDwnBtn.onclick = function(){
			outMgr.scrollTask.step(20);
			return false;
		}
		// Init scroll manager
		this.scrollTask.checkBtn();
		scSiLib.addRule(this.fOut, this.scrollTask);
		this.fOut.onscroll = function(){outMgr.scrollTask.checkBtn()};
		this.fOut.onmousewheel = function(){outMgr.scrollTask.step(Math.round(-event.wheelDelta/(scCoLib.isIE ? 60 : 40)*outMgr.fWheelScrollFactor))}; //IE, Safari, Chrome, Opera.
		if(this.fOut.addEventListener) this.fOut.addEventListener('DOMMouseScroll', function(pEvent){outMgr.scrollTask.step(pEvent.detail*outMgr.fWheelScrollFactor)}, false);
		}catch(e){alert(e);}
	},
	openAll : function() {
		for (var i=0; i < this.fSubs.length; i++) {
			var vSub = this.fSubs[i];
			if (scPaLib.checkNode(this.fFilterIsClosed,vSub)) this.xAutoToggleItem(vSub.fTglBtn);
		}
	},

	getOutline : function() {
		try{
			if (!this.fOutlineSrc){
				var vReq = this.xGetHttpRequest();
				vReq.open("GET",this.fUrlOutline,false);
				vReq.send();
				this.fOutlineSrc = this.xDeserialiseObjJs(vReq.responseText);
				var iOutlineSetup = function (pItem) {
					if (pItem.children){
						for (var i=0; i < pItem.children.length; i++){
							pItem.children[i].parent = pItem;
							iOutlineSetup(pItem.children[i]);
						}
					}
				}
				iOutlineSetup(this.fOutlineSrc.module);
				iOutlineSetup(this.fOutlineSrc.tools);
			}
			return this.fOutlineSrc
		}catch(e){
			scCoLib.log("ERROR - outMgr.getOutline : "+e);
			if (e.code==19) tplMgr.setNoAjax();
		}
	},

	getProgress : function(){
		var vOutline = this.getOutline().module;
		var vProgress = {'count':0};
		var vCurrentUrl = window.location.href;
		var vCurrentPage = vCurrentUrl.substring(vCurrentUrl.lastIndexOf("/")+1);
		var iOutlineWalker = function (pNode) {
			for (var i=0; i < pNode.length; i++){
				var vNode = pNode[i];
				vProgress.count++;
				if (vNode.url.substring(vNode.url.lastIndexOf("/")+1) == vCurrentPage) {
					vProgress.cur = vProgress.count;
					vProgress.currentUrl = vNode.url;
				}
				if (vNode.children) iOutlineWalker(vNode.children);
			}
		}
		iOutlineWalker(vOutline.children);
		return vProgress;
	},

	loadSortKey : "AZ",

	/* === Callbacks ========================================================== */
	sToggleItem : function() {
		try{
			if (tplMgr.isNoAjax()) return false;
			outMgr.xToggleItem(this,false);
			outMgr.scrollTask.checkBtn();
		} catch(e){}
		return false;
	},

	/* === Private ============================================================ */
	xAutoToggleItem : function(pBtn) {
		this.xToggleItem(pBtn,true);
	},

	xBuildSub : function(pBtn) {
		if (!this.fOutline) this.xInitOutline();
		var vLbl = pBtn.fLbl;
		pBtn.fUl = scDynUiMgr.addElement("ul",vLbl.parentNode,"sub mnu_open");
		pBtn.fUl.fTglBtn = pBtn;
		var vLi, vDiv, vLnk, vType, vCls;
		var vChildren = vLbl.fSrc.children;
		for (var i=0; i < pBtn.fLbl.fSrc.children.length; i++){
			var vChi =vChildren[i];
			vType = vChi.children ? "b" : "l";
			vCls = "sel_no type_"+vType+" "+vChi.source+" dpt_"+(scPaLib.findNodes("anc:ul.sub", pBtn).length + 1)+" "+vChi.className;
			vLi = scDynUiMgr.addElement("li",pBtn.fUl,vCls);
			vDiv = scDynUiMgr.addElement("div",vLi,"lbl "+vCls);
			vDiv.fSrc = vChi;
			vLnk = scDynUiMgr.addElement("a",vDiv,"item");
			vLnk.href = scServices.scLoad.getRootUrl() + "/" + vChi.url;
			vLnk.target = "_self";
			vLnk.innerHTML = '<span>'+vChi.label+'</span>';
			if (vType == "b") this.xAddToggleBtn(vDiv, vChi.label);
			if ("scormMgr" in window) scormMgr.buildSeenBtn(vDiv, vLnk.href, vChi.label);
		}
		if ("scormMgr" in window) scormMgr.updateMenu();
	},

	xAddToggleBtn : function(pParent, pLabel, pSub) {
		pParent.fTglBtn = tplMgr.addBtn(pParent,"tgle_"+(pSub?"o":"c"),(pSub?"v":">"),(pSub?this.fStrings[9].replace("%s",pLabel):this.fStrings[8]).replace("%s",pLabel), pParent.firstChild);
		pParent.fTglBtn.onclick = this.sToggleItem;
		pParent.fTglBtn.fLbl = pParent;
		if(pSub) pParent.fTglBtn.fUl = pSub;
		pParent.fTglBtn.fLblText = pLabel;
	},

	xInitOutline : function() {
		try{
			this.fOutline = this.getOutline().module;
			var iOutlineWalker = function (pNode, pSrc) {
				var vChildren = scPaLib.findNodes("chi:li/chi:div.lbl", pNode);
				for (var i=0; i < vChildren.length; i++){
					var vChild = vChildren[i];
					vChild.fSrc = pSrc.children[i];
					if (scPaLib.checkNode(outMgr.fFilterIsBranch,vChild)) iOutlineWalker(scPaLib.findNode("nsi:ul",vChild),pSrc.children[i]);
				}
			}
			iOutlineWalker(this.fOut, this.fOutline);
		}catch(e){
			scCoLib.log("ERROR - outMgr.xInitOutline : "+e);
		}
	},

	xToggleItem : function(pBtn) {
		if (!pBtn) return;
		var vStatus = pBtn.className;
		if (!pBtn.fUl) this.xBuildSub(pBtn);
		var vUl = pBtn.fUl;
		if (!vUl) return;
		if(vStatus == "tgle_c") {
			pBtn.className = "tgle_o";
			pBtn.innerHTML = "<span>v</span>";
			pBtn.title = this.fStrings[9].replace("%s", pBtn.fLblText);
			vUl.className = vUl.className.replace("mnu_closed", "mnu_open");
			vUl.style.display = "";
			vUl.fClosed = false;
		} else {
			pBtn.className = "tgle_c";
			pBtn.innerHTML = "<span>></span>";
			pBtn.title = this.fStrings[8].replace("%s", pBtn.fLblText);
			vUl.className = vUl.className.replace("mnu_open", "mnu_closed");
			vUl.style.display = "none";
			vUl.fClosed = true;
			var vOpendSubMnus = scPaLib.findNodes("des:ul.mnu_open",vUl);
			for (var j=0; j < vOpendSubMnus.length; j++) this.xAutoToggleItem(vOpendSubMnus[j].fTglBtn);
		}
	},

	xToggleMnu : function(pDontResize,pDontMemorize) {
		if (this.fMnuCollapse) return this.xOpenMnu(pDontResize,pDontMemorize);
		else return this.xCloseMnu(pDontResize,pDontMemorize);
	},

	/* === Utilities ========================================================== */
	xGetHttpRequest: function(){
		if ("XMLHttpRequest" in window && (!this.fIsLocal || !("ActiveXObject" in window))) return new XMLHttpRequest();
		else if ("ActiveXObject" in window) return new ActiveXObject("Microsoft.XMLHTTP");
	},

	xDeserialiseObjJs : function(pStr){
		if(!pStr) return {};
		var vVal;
		eval("vVal="+pStr);
		return vVal;
	},
	
	/* === Tasks ============================================================== */
	/** outMgr.scrollTask : menu scroll timer & size task */
	scrollTask : {
		fSpeed : 0,
		execTask : function(){
			try {
				if(this.fSpeed == 0) return false;
				outMgr.fOut.scrollTop += this.fSpeed;
				return true;
			}catch(e){
				this.fSpeed = 0;
				return false;
			}
		},
		step: function(pPx) {
			try { outMgr.fOut.scrollTop += pPx; }catch(e){}
		},
		checkBtn: function(){
			var vScrollTop = outMgr.fOut.scrollTop;
			var vBtnUpOff = outMgr.fSrlUp.className.indexOf(outMgr.fClsOffUp);
			if(vScrollTop <= 0) {
				if(vBtnUpOff < 0) outMgr.fSrlUp.className+= " "+outMgr.fClsOffUp;
			} else {
				if(vBtnUpOff >= 0) outMgr.fSrlUp.className = outMgr.fSrlUp.className.substring(0, vBtnUpOff);
			}
		
			var vContentH = scSiLib.getContentHeight(outMgr.fOut);
			var vBtnDownOff = outMgr.fSrlDwn.className.indexOf(outMgr.fClsOffDown);
			if( vContentH - vScrollTop <= outMgr.fOut.offsetHeight){
				if(vBtnDownOff < 0) outMgr.fSrlDwn.className+= " "+outMgr.fClsOffDown;
			} else {
				if(vBtnDownOff >=0) outMgr.fSrlDwn.className = outMgr.fSrlDwn.className.substring(0, vBtnDownOff);
			}
		},
		onResizedAnc:function(pOwnerNode, pEvent){
			if(pEvent.phase==2) this.checkBtn();
		},
		ruleSortKey : "checkBtn"
	}
}