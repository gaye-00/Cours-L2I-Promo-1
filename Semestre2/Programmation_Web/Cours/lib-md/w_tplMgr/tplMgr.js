/* === Opale template manager =============================================== */
var tplMgr = {
	fRootPath : "ide:root",
	fCbkPath : "des:.cbkClosed",
	fWaiMnuPath : "ide:accessibility",
	fWaiBtnPath : "des:.waiBtn",
	fResumeBtnPath : "ide:tools/des:.module/des:a",
	fSaveBtnPath : "ide:tools/des:.tools/des:a",
	fRefLnkPath : "des:.refOutlineEntry/chi:a",
	fZenMode : 0, // 0 = off by default, memoized, 1 = on by default, memoized, 2 = always off, 3 = always on
	fZenPath : "bod:.default/ide:navigation",
	fZenListeners: [],
	fNoAjax : false,

	fStrings : ["Agrandir","Cacher des éléments de l\'interface pour agrandir le contenu",
	/*02*/      "Restaurer","Restaurer l\'interface par défaut.",
	/*04*/      "Cacher le contenu de \'%s\'","Afficher le contenu de \'%s\'",
	/*06*/      "Le chargement dynamique de ressources est désactivé.\n\nLes restrictions sécuritaires de votre navigateur interdisent l\'utilisation de certaines fonctionnalités telles que la recherche ou l\'exploration du menu.",""],

/* === Public API =========================================================== */
	/** init function - must be called at the end of page body */
	init : function(){
		try {
			this.fRoot = scPaLib.findNode(this.fRootPath);
			this.fPageCurrent = scServices.scLoad.getUrlFromRoot(scCoLib.hrefBase());
			this.fStore = new LocalStore();

			// Set tooltip callback functions.
		if ("scTooltipMgr" in window) {
				scTooltipMgr.addShowListener(this.sTtShow);
				scTooltipMgr.addHideListener(this.sTtHide);
				if (scTooltipMgr.addMakeListener) scTooltipMgr.addMakeListener(this.sTtMake);
				else scTooltipMgr.addShowListener(this.sTtMake);
		}

		// Set SubWin callback functions.
		if ("scDynUiMgr" in window) {
			scDynUiMgr.subWindow.addOnLoadListener(this.sSubWinOpen);
			scDynUiMgr.subWindow.addCloseListener(this.sSubWinClose);
			scDynUiMgr.collBlk.addOpenListener(this.sCollBlkOpen);
			scDynUiMgr.collBlk.addCloseListener(this.sCollBlkClose);
		}

		// Set MediaMgr callback functions.
		if ("scMediaMgr" in window) {
			scMediaMgr.addListener("mediaError", this.sMediaError);
		}

		// Close collapsable blocks that are closed by default.
			var vCbks = scPaLib.findNodes(this.fCbkPath);
			for (var i in vCbks) {
				var vTgl = scPaLib.findNode("des:a", vCbks[i]);
				if (vTgl) vTgl.onclick();
			}

			// Add touch specific event handling
			if ("ontouchstart" in window){
				document.addEventListener("touchstart", this.sTouchHandler, true);
				document.addEventListener("touchmove", this.sTouchHandler, true);
				document.addEventListener("touchend", this.sTouchHandler, true);
				document.addEventListener("touchcancel", this.sTouchHandler, true);
				document.addEventListener("click", this.sTouchHandler, true);
				if ("scImgMgr" in window) scImgMgr.registerListener("onAnimationOpen", this.sTouchGalOpen);
				if ("scDragMgr" in window) {
					scDragMgr.addStartListener(function(){
						tplMgr.fDisableTouchEvents = true;
					});
					scDragMgr.addStopListener(function(){
						tplMgr.fDisableTouchEvents = false;
					});
				}
			}

			// Add zen button
			var vZenBtn = this.addZenButton(scPaLib.findNode(this.fZenPath));
			var vZenState = this.fStore.get("templateZen");
			if (vZenBtn) {
				if (this.fZenMode == 3 || (this.fZenMode != 2 && vZenState=="true") || (this.fZenMode == 1 && !vZenState)) vZenBtn.click();
			}

			scOnLoads[scOnLoads.length] = this;
		} catch(e) {
			alert("tplMgr init failed: "+e);
		}
	},
	/** scCoLib OnLoad  */
	onLoad: function() {
		// Set save & resume button onclicks.
		var vResumeBtns = scPaLib.findNodes(this.fResumeBtnPath);
		for (var i in vResumeBtns) {
			if(vResumeBtns[i]) vResumeBtns[i].onclick=function(){
				var vUrl = tplMgr.fStore.get("courseUrl");
				if(vUrl) this.setAttribute("href", vUrl);
			}
		}
		var vSaveBtns = scPaLib.findNodes(this.fSaveBtnPath);
		for (var i in vSaveBtns) {
			if(vSaveBtns[i]) vSaveBtns[i].onclick=function(){
				tplMgr.fStore.set("courseUrl", document.location.href);
			}
		}
		// Plan outline
		var vRetUrl = this.fStore.get("courseUrl");
		var vMnuItems = scPaLib.findNodes("ide:content/des:ul.plan/des:a");
		if (vRetUrl && vMnuItems){
			var vPage = vRetUrl.substring(vRetUrl.lastIndexOf("/")+1);
			for(var i = 0; i < vMnuItems.length; i++) {
				var vMnuItem = vMnuItems[i];
				if(vMnuItem.href.substring(vMnuItem.href.lastIndexOf("/")+1) == vPage){
					vMnuItem.className = vMnuItem.className + " sel_yes";
					break;
				}
			}
		}
	},
	loadSortKey : "AZ",
	addZenButton : function(pParent){
		if (pParent){
			var vZenBtn = this.addBtn(pParent, "btnZen", this.fStrings[0], this.fStrings[1]);
			vZenBtn.onclick = this.sToggleZen;
			return vZenBtn;
		}
	},
	addZenListener: function(pFunc) {
		this.fZenListeners.push(pFunc);
	},
	/** Load page in search */
	loadPage : function(pUrl, pDirect){
		if (pUrl && pUrl.length>0) window.location.href = scServices.scLoad.getRootUrl() + "/" + pUrl;
	},
	/** scrollTo in search */
	scrollTo : function(pId){
		this.loadPage(this.fPageCurrent +"#" + pId, true);
	},
	makeVisible : function(pNode){
		// Ouvre bloc collapsable contenant pNode
		var vCollBlk = scPaLib.findNode("anc:.collBlk_closed",pNode);
		if(vCollBlk) vCollBlk.fTitle.onclick();
	},
	xMediaFallback: function(pMedia) {
		while (pMedia.firstChild) {
			if (pMedia.firstChild instanceof HTMLSourceElement) {
				pMedia.removeChild(pMedia.firstChild);
			} else {
				pMedia.parentNode.insertBefore(pMedia.firstChild, pMedia);
			}
		}
		pMedia.parentNode.removeChild(pMedia);
	},
	/** isNoAjax */
	isNoAjax : function(){
		return this.fNoAjax;
	},
	/** setNoAjax */
	setNoAjax : function(){
		if (!this.fNoAjaxWarn) alert(this.fStrings[6]);
		this.fNoAjax = true;
		this.fNoAjaxWarn = true;
	},
	/** Load next image if gallery open or page if exists */
	next: function() {
		if ("scImgMgr" in window && scImgMgr.fCurrItem && scImgMgr.fCurrItem.fName == "gal"){
			scImgMgr.xNxtSs(scImgMgr.fCurrItem);
		} else {
			var vBtn = scPaLib.findNode("ide:navigation/des:a.next");
			if(vBtn) vBtn.click();
		}
	},
	/** Load previous image if gallery open or page if exists */
	previous: function() {
		if ("scImgMgr" in window && scImgMgr.fCurrItem && scImgMgr.fCurrItem.fName == "gal"){
			scImgMgr.xPrvSs(scImgMgr.fCurrItem);
		} else {
			var vBtn = scPaLib.findNode("ide:navigation/des:a.prev");
			if(vBtn) vBtn.click();
		}
	},
/* === Utilities ============================================================ */
	/** tplMgr.addBtn : Add a HTML button to a parent node. */
	addBtn : function(pParent, pClassName, pCapt, pTitle, pNxtSib) {
		var vBtn = scDynUiMgr.addElement("a", pParent, pClassName, pNxtSib);
		vBtn.href = "#";
		vBtn.target = "_self";
		vBtn.setAttribute("role", "button");
		//vBtn.setAttribute("tabindex", "0");
		if (pTitle) vBtn.setAttribute("title", pTitle);
		if (pCapt) vBtn.innerHTML = "<span>" + pCapt + "</span>"
		vBtn.onkeydown=function(pEvent){scDynUiMgr.handleBtnKeyDwn(pEvent);}
		vBtn.onkeyup=function(pEvent){scDynUiMgr.handleBtnKeyUp(pEvent);}
		return vBtn;
	},

	/** tplMgr.switchClass - replace a class name. */
	switchClass : function(pNode, pClassOld, pClassNew, pAddIfAbsent, pMatchExact) {
		var vAddIfAbsent = typeof pAddIfAbsent == "undefined" ? false : pAddIfAbsent;
		var vMatchExact = typeof pMatchExact == "undefined" ? true : pMatchExact;
		var vClassName = pNode.className;
		var vReg = new RegExp("\\b"+pClassNew+"\\b");
		if (vMatchExact && vClassName.match(vReg)) return;
		var vClassFound = false;
		if (pClassOld && pClassOld != "") {
			if (vClassName.indexOf(pClassOld)==-1){
				if (!vAddIfAbsent) return;
				else if (pClassNew && pClassNew != '') pNode.className = vClassName + " " + pClassNew;
			} else {
				var vCurrentClasses = vClassName.split(' ');
				var vNewClasses = new Array();
				for (var i = 0, n = vCurrentClasses.length; i < n; i++) {
					var vCurrentClass = vCurrentClasses[i];
					if (vMatchExact && vCurrentClass != pClassOld || !vMatchExact && vCurrentClass.indexOf(pClassOld) != 0) {
						vNewClasses.push(vCurrentClasses[i]);
					} else {
						if (pClassNew && pClassNew != '') vNewClasses.push(pClassNew);
						vClassFound = true;
					}
				}
				pNode.className = vNewClasses.join(' ');
			}
		}
		return vClassFound;
	},
/* === Event Handlers & lib override functions ============================== */
	/** sTouchHandler */
	sTouchHandler: function(pEvt) {
		if (tplMgr.fDisableTouchEvents) return;
		switch(pEvt.type) {
			case "click":
				if ("scTooltipMgr" in window) scTooltipMgr.hideTooltip(); // Close tooltips on click as mouseup is not available
				break;
			case "touchstart":
				if(pEvt.touches.length == 1){
					tplMgr.fSwipeStart = {x:pEvt.touches[0].pageX,y:pEvt.touches[0].pageY};
					tplMgr.fSwipeEnd = tplMgr.fSwipeStart;
				}
				break;
			case "touchmove":
				if(pEvt.touches.length == 1){
					tplMgr.fSwipeEnd = {x:pEvt.touches[0].pageX,y:pEvt.touches[0].pageY};
				}
				break;
			case "touchend":
				try{ //Swipe left & right to change page (delta Y < 30% & delta X > 200px)
					var vDeltaX = tplMgr.fSwipeStart.x - tplMgr.fSwipeEnd.x;
					if (Math.abs((tplMgr.fSwipeStart.y - tplMgr.fSwipeEnd.y)/vDeltaX) < 0.3){ 
						if (vDeltaX > 200) tplMgr.next();
						else if(vDeltaX <- 200) tplMgr.previous();
					}
					tplMgr.fSwipeStart = {x:null,y:null};
					tplMgr.fSwipeEnd = tplMgr.fSwipeStart;
				} catch(e){}
		}
	},
	/** sTouchGalOpen callback : this = function */
	sTouchGalOpen: function(pGal) {
		if (!pGal || !pGal.fFra || typeof pGal.fFra.fTouchScreen != "undefined") return;
		pGal.fFra.className = pGal.fFra.className + " " + pGal.fFra.className + "_touch";
	},
	/** sToggleZen */
	sToggleZen : function(pEvent){
		this.fFullScreen = !this.fFullScreen;
		this.innerHTML = '<span>' + tplMgr.fStrings[(this.fFullScreen ? 2 : 0)] + '</span>';
		this.title = tplMgr.fStrings[(this.fFullScreen ? 3 : 1)];
		tplMgr.fStore.set("templateZen", this.fFullScreen);
		tplMgr.switchClass(tplMgr.fRoot, "zen_"+!this.fFullScreen, "zen_"+this.fFullScreen, true);
		for (var i=0; i<tplMgr.fZenListeners.length; i++) {
			try{tplMgr.fZenListeners[i]();} catch(e){}
		}
		return false;
	},
	/** Tooltip lib make callback : this = function */
	sTtMake: function(pNode) {
		if (!pNode.fMedias) {
			pNode.fMedias = scPaLib.findNodes("des:.mediaPlayer", sc$(pNode.ttId));
			for (var i=0; i<pNode.fMedias.length; i++) scMediaMgr.initMedia(pNode.fMedias[i]);
		}
	},
	/** Tooltip lib show callback : this = function */
	sTtShow: function(pNode) {
		if (!pNode.fOpt.FOCUS && !pNode.onblur) pNode.onblur = function(){scTooltipMgr.hideTooltip(true);};
	},
	/** Tooltip lib hide callback : this = function */
	sTtHide: function(pNode) {
		if (pNode) pNode.focus();
		for (var i=0; i<pNode.fMedias.length; i++){
			scMediaMgr.xStop(pNode.fMedias[i].media);
		}
	},
	/** SubWin lib load callback : this = function */
	sSubWinOpen: function(pFra) {
		var vCo = scPaLib.findNode("ide:content", pFra.contentDocument),
			vCloseBtn = scPaLib.findNode("des:.subWindow_x",pFra.parentNode.parentNode);
		if (vCo) vCo.focus();
		var vFocusOnCloseBtn = scPaLib.findNode("des:.focusOnCloseBtn",pFra.parentNode)?scPaLib.findNode("des:.focusOnCloseBtn",pFra.parentNode):tplMgr.addBtn(pFra.parentNode,"focusOnCloseBtn",">");
		vFocusOnCloseBtn.onfocus=function(){vCloseBtn.focus();}
	},
	/** SubWin lib close callback : this = function */
	sSubWinClose: function(pId) {
		var vSubWin = scDynUiMgr.subWindow.fSubWins[pId];
		if (vSubWin && vSubWin.fAnc) vSubWin.fAnc.focus();
	},
	/** Callback function. */
	sCollBlkOpen: function(pCo, pTitle) {
		if (pTitle) pTitle.title = tplMgr.fStrings[4].replace("%s", (pTitle.innerText ? pTitle.innerText: pTitle.textContent));
	},
	/** Callback function. */
	sCollBlkClose: function(pCo, pTitle) {
		if (pTitle) pTitle.title = tplMgr.fStrings[5].replace("%s", (pTitle.innerText ? pTitle.innerText: pTitle.textContent));
	},
	/** Callback function. */
	sMediaError: function(pType) {
		if(pType && pType.error=="subsRequestNetwork"){
			tplMgr.setNoAjax();
		}
	}
}

/** Local Storage API (localStorage/userData/cookie) */
function LocalStore(pId){
	if (pId && !/^[a-z][a-z0-9]+$/.exec(pId)) throw new Error("Invalid store name");
	this.fId = pId || "";
	this.fRootKey = document.location.pathname.substring(0,document.location.pathname.lastIndexOf("/")) +"/";
	if ("localStorage" in window && typeof window.localStorage != "undefined") {
		this.get = function(pKey) {var vRet = localStorage.getItem(this.fRootKey+this.xKey(pKey));return (typeof vRet == "string" ? unescape(vRet) : null)};
		this.set = function(pKey, pVal) {localStorage.setItem(this.fRootKey+this.xKey(pKey), escape(pVal))};
	} else if (window.ActiveXObject){
		this.get = function(pKey) {this.xLoad();return this.fIE.getAttribute(this.xEsc(pKey))};
		this.set = function(pKey, pVal) {this.fIE.setAttribute(this.xEsc(pKey), pVal);this.xSave()};
		this.xLoad = function() {this.fIE.load(this.fRootKey+this.fId)};
		this.xSave = function() {this.fIE.save(this.fRootKey+this.fId)};
		this.fIE=document.createElement('div');
		this.fIE.style.display='none';
		this.fIE.addBehavior('#default#userData');
		document.body.appendChild(this.fIE);
	} else {
		this.get = function(pKey){var vReg=new RegExp(this.xKey(pKey)+"=([^;]*)");var vArr=vReg.exec(document.cookie);if(vArr && vArr.length==2) return(unescape(vArr[1]));else return null};
		this.set = function(pKey,pVal){document.cookie = this.xKey(pKey)+"="+escape(pVal)};
	}
	this.xKey = function(pKey){return this.fId + this.xEsc(pKey)};
	this.xEsc = function(pStr){return "LS" + pStr.replace(/ /g, "_")};
}

/** ### ScSiRuleAutoMarginW ######### */
function ScSiRuleAutoMarginW(pIdMarginWNode, pPathContainer, pIsDynSize, pMinWidth, pMaxMargin) {
	this.fIsDynSize = pIsDynSize;
	this.fId = pIdMarginWNode;
	this.fPath = pPathContainer;
	this.fMinWidth = pMinWidth;
	this.fMaxMargin = pMaxMargin;
	scOnLoads[scOnLoads.length] = this;
}
ScSiRuleAutoMarginW.prototype.onResizedAnc = function(pOwnerNode, pEvent) {
	if( ! this.fIsDynSize) {
		pEvent.stopBranch = true;
		return;
	}
	if(pEvent.resizedNode == pOwnerNode) return;
	if(pEvent.phase==1) this.xReset();
	else this.xRedraw();
}
ScSiRuleAutoMarginW.prototype.onResizedDes = function(pOwnerNode, pEvent) {
	if(pEvent.phase==1) this.xReset();
	else this.xRedraw();
}
ScSiRuleAutoMarginW.prototype.xReset = function() {
	this.fNode.style.marginLeft = "0px";
	this.fNode.style.marginRight = "0px";
}
ScSiRuleAutoMarginW.prototype.xRedraw = function() {
	var vH = this.fContainer.clientHeight;
	if(isNaN(vH) || vH <= 0) return;
	var vContentH = scSiLib.getContentHeight(this.fContainer);
	if(isNaN(vContentH) || vContentH <= 0) return;
	if(vContentH < vH) {
		var vW = this.fContainer.clientWidth;
		if(vW <= this.fMinWidth) return;
		var vMargin = Math.min( this.fMaxMargin * (1 - vContentH / vH), (vW - this.fMinWidth)/2) + "px";
		this.fNode.style.marginLeft = vMargin;
		this.fNode.style.marginRight = vMargin;
	}
}
ScSiRuleAutoMarginW.prototype.onLoad = function() {
	this.fNode = sc$(this.fId);
	if( ! this.fNode) return;
	this.fContainer = scPaLib.findNode(this.fPath, this.fNode);
	if( ! this.fContainer) return;
	scSiLib.addRule(this.fContainer, this);
	this.xRedraw();
}
ScSiRuleAutoMarginW.prototype.loadSortKey = "Si2";
ScSiRuleAutoMarginW.prototype.ruleSortKey = "2";

/** ### ScSiRuleFlexH ######### */
function ScSiRuleFlexH(pIdFlexNode, pPathContainer, pIsDynSize, pRatioFreeSpace) {
	this.fIsDynSize = pIsDynSize;
	this.fId = pIdFlexNode;
	this.fPath = pPathContainer;
	this.fRatioFreeSpace = pRatioFreeSpace;
	scOnLoads[scOnLoads.length] = this;
}
ScSiRuleFlexH.prototype.onResizedAnc = ScSiRuleAutoMarginW.prototype.onResizedAnc;
ScSiRuleFlexH.prototype.onResizedDes = ScSiRuleAutoMarginW.prototype.onResizedDes;
ScSiRuleFlexH.prototype.xReset = function() {
	this.fNode.style.height = null;
}
ScSiRuleFlexH.prototype.xRedraw = function() {
	var vH = this.fContainer.clientHeight;
	if(isNaN(vH) || vH <= 0) return;
	var vContentH = scSiLib.getContentHeight(this.fContainer);
	if(isNaN(vContentH) || vContentH <= 0) return;
	if(vContentH < vH) this.fNode.style.height = Math.round( (vH-vContentH) * this.fRatioFreeSpace)+"px";
}
ScSiRuleFlexH.prototype.onLoad = function() {
	this.fNode = sc$(this.fId);
	if( ! this.fNode) return;
	this.fContainer = scPaLib.findNode(this.fPath, this.fNode);
	if( ! this.fContainer) return;
	scSiLib.addRule(this.fContainer, this);
	this.xRedraw();
}
ScSiRuleFlexH.prototype.loadSortKey = "Si3";
ScSiRuleFlexH.prototype.ruleSortKey = "3";

/** ### ScSiRuleEnsureVisible ######### */
function ScSiRuleEnsureVisible(pPathNode, pPathContainer) {
	this.fPathNode = pPathNode;
	this.fPathContainer = pPathContainer;
	this.fEnable = true;
	scOnLoads[scOnLoads.length] = this;
}
ScSiRuleEnsureVisible.prototype.enable = function(pState) {
	this.fEnable = pState;
}
ScSiRuleEnsureVisible.prototype.updateNode = function(pNode) {
	this.fEnable = true;
	this.fNode = pNode;
	if(!this.fNode) this.fEnable = false;
	this.fContainer = scPaLib.findNode(this.fPathContainer, this.fNode);
	if(!this.fContainer) this.fEnable = false;
	this.xEnsureVis();
}
ScSiRuleEnsureVisible.prototype.updateNodePath = function(pPathNode) {
	this.fEnable = true;
	if (typeof pPathNode != "undefined") this.fPathNode = pPathNode;
	this.fNode = scPaLib.findNode(this.fPathNode);
	if(!this.fNode) this.fEnable = false;
	this.fContainer = scPaLib.findNode(this.fPathContainer, this.fNode);
	if(!this.fContainer) this.fEnable = false;
	this.xEnsureVis();
}
ScSiRuleEnsureVisible.prototype.onResizedAnc = function(pOwnerNode, pEvent) {
	if(pEvent.phase==1 || pEvent.resizedNode == pOwnerNode) return;
	this.xEnsureVis();
}
ScSiRuleEnsureVisible.prototype.onResizedDes = function(pOwnerNode, pEvent) {
	if(pEvent.phase==1) return;
	this.xEnsureVis();
}
ScSiRuleEnsureVisible.prototype.xEnsureVis = function() {
	if (!this.fEnable) return;
	var vOffsetTop = scSiLib.getOffsetTop(this.fNode, this.fContainer)+this.fContainer.scrollTop;
	var vOffsetMiddle = vOffsetTop + this.fNode.offsetHeight/2;
	var vMiddle = this.fContainer.clientHeight / 2;
	this.fContainer.scrollTop = Math.min(vOffsetMiddle - vMiddle, vOffsetTop);
}
ScSiRuleEnsureVisible.prototype.onLoad = function() {
	try {
		if (this.fPathNode) this.fNode = scPaLib.findNode(this.fPathNode);
		if(!this.fNode) this.fEnable = false;
		this.fContainer = scPaLib.findNode(this.fPathContainer, this.fNode);
		if(!this.fContainer) this.fEnable = false;
		else scSiLib.addRule(this.fContainer, this);
		this.xEnsureVis();
	} catch(e){alert(e);}
}
ScSiRuleEnsureVisible.prototype.loadSortKey = "SiZ";
ScSiRuleEnsureVisible.prototype.ruleSortKey = "Z";

/** ### ScSiRuleResize ######### */
function ScSiRuleResize( pPathContainer, pResizeFunc) {
	this.fPathContainer = pPathContainer;
	this.xResizeFunc = pResizeFunc;
	scOnLoads[scOnLoads.length] = this;
}
ScSiRuleResize.prototype.onResizedAnc = function(pOwnerNode, pEvent) {
	if(pEvent.phase==1 || pEvent.resizedNode == pOwnerNode) return;
	this.xResizeFunc();
}
ScSiRuleResize.prototype.onResizedDes = function(pOwnerNode, pEvent) {
	if(pEvent.phase==1) return;
	this.xResizeFunc();
}
ScSiRuleResize.prototype.xResizeFunc = function() {
}
ScSiRuleResize.prototype.onLoad = function() {
try {
	this.fContainer = scPaLib.findNode(this.fPathContainer, this.fNode);
	if( ! this.fContainer) return;
	scSiLib.addRule(this.fContainer, this);
	this.xResizeFunc();
} catch(e){alert(e);}
}
ScSiRuleResize.prototype.loadSortKey = "SiZZ";
ScSiRuleResize.prototype.ruleSortKey = "ZZ";
