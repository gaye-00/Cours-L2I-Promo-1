/* === MathJax manager =============================================== */
var mathjaxMgr = {
	// See: http://docs.mathjax.org/en/latest/options
	fConfig_MathMenu : '{showLocale:false, showRenderer:false}',
	fConfig_menuSettings : '{zoom:"Double-Click", mpContext:true, mpMouse:true}',
	fConfig_extentions : '["tex2jax.js","mml2jax.js","MathML/content-mathml.js","MathMenu.js","MathZoom.js","fast-preview.js","AssistiveMML.js"]',
	fConfig_SVG : '{}',
	fConfig_TeX : '{extensions:["AMSmath.js","AMSsymbols.js","noErrors.js","noUndefined.js","color.js"]}',
	fConfig_Extras : '',
	fForceSansSerif : false,
	fCallbacks : [],
	fFinished : [],
	fReady : false,
	/* mathjaxMgr.register : register a callback function that will be called once MathJax is finished processing the page - MUST be called before init */
	register : function(pCallBack){
		this.fCallbacks.push(pCallBack);
	},
	init : function(pLoadMathJax){
		if (typeof pLoadMathJax == "undefined") pLoadMathJax = true;
		if (pLoadMathJax){
			if (scCoLib.userAgent.match("msie [678]")) {
				// Gestion fallback pour IE < 8
				var vMathJaxElements = scPaLib.findNodes("des:math");
				for (var i=0; i < vMathJaxElements.length; i++){
					vMathJaxElements[i].syle.display = "none";
				}
				var vMathJaxFallbacks = scPaLib.findNodes("des:.mathJaxFallback");
				for (var i=0; i < vMathJaxFallbacks.length; i++){
					var vMathJaxFallback = vMathJaxFallbacks[i];
					var vImg = scPaLib.findNode("des:img", vMathJaxFallback);
					var vSrc = vImg.getAttribute("data-src");
					if (vSrc) vImg.src = vSrc;
					vMathJaxFallbacks[i].syle.display = "";
				}
			} else {
				var vScript = document.createElement("script");
				vScript.type = "text/javascript";
				vScript.src  = scServices.scLoad.resolveDestUri("/lib-md/w_mathjax/MathJax.js?locale=fr");
				var vConfig = 'MathJax.Hub.Config({';
				vConfig +=    '  jax: ["input/MathML","input/TeX","output/SVG"],';
				vConfig +=    '  extensions: ' + this.fConfig_extentions + ',';
				vConfig +=    '  imageFont: null,';
				vConfig +=    '  webFont: "TeX",';
				vConfig +=    '  menuSettings: ' + this.fConfig_menuSettings + ',';
				vConfig +=    '  MathMenu: ' + this.fConfig_MathMenu + ',';
				vConfig +=    '  SVG: ' + this.fConfig_SVG + ',';
				vConfig +=    '  TeX: ' + this.fConfig_TeX + ',';
				vConfig +=    '  errorSettings: {message:["[Erreur mathématique]"]}';
				vConfig +=    '});';
				vConfig +=    'MathJax.Hub.Register.StartupHook("End",function () {';
				vConfig +=    '  mathjaxMgr.xReady();';
				vConfig +=    '});';
				if (this.fForceSansSerif){
					vConfig +=    'MathJax.Hub.Register.StartupHook("SVG Jax Ready",function () {';
					vConfig +=    '  var VARIANT = MathJax.OutputJax.SVG.FONTDATA.VARIANT;';
					vConfig +=    '  VARIANT["normal"].fonts.unshift("MathJax_SansSerif");';
					vConfig +=    '  VARIANT["bold"].fonts.unshift("MathJax_SansSerif-bold");';
					vConfig +=    '  VARIANT["italic"].fonts.unshift("MathJax_SansSerif-italic");';
					vConfig +=    '  VARIANT["-tex-mathit"].fonts.unshift("MathJax_SansSerif-italic");';
					vConfig +=    '});';
				}
				vConfig += this.fConfig_Extras;
				if (window.opera) {vScript.innerHTML = vConfig}
				else {vScript.text = vConfig}
	
				document.getElementsByTagName("head")[0].appendChild(vScript);
			}
		} else this.xReady();
	},
	isReady : function(){
		return this.fReady;
	},
	xReady : function(){
		//scCoLib.log("mathjaxMgr.ready");
		this.fReady = true;
		for (var i=0; i<this.fCallbacks.length; i++) {
			try {
				this.fCallbacks[i]();
			} catch(e){}
		}
	}
}
