/**
 * LICENCE[[
 * Version: MPL 2.0/GPL 3.0/LGPL 3.0/CeCILL 2.1
 *
 * The contents of this file are subject to the Mozilla Public License Version
 * 2.0 (the "License"); you may not use this file except in compliance with
 * the License. You may obtain a copy of the License at http://www.mozilla.org/MPL/
 *
 * Software distributed under the License is distributed on an "AS IS" basis,
 * WITHOUT WARRANTY OF ANY KIND, either express or implied. See the License
 * for the specific language governing rights and limitations under the
 * License.
 *
 * The Original Code is kelis.fr code.
 *
 * The Initial Developer of the Original Code is 
 * nicolas.boyer@kelis.fr
 *
 * Portions created by the Initial Developer are Copyright (C) 2013-2017
 * the Initial Developer. All Rights Reserved.
 *
 * Contributor(s):
 * samuel.monsarrat@kelis.fr
 *
 * Alternatively, the contents of this file may be used under the terms of
 * either of the GNU General Public License Version 3.0 or later (the "GPL"),
 * or the GNU Lesser General Public License Version 3.0 or later (the "LGPL"),
 * or the CeCILL Licence Version 2.1 (http://www.cecill.info/licences.en.html),
 * in which case the provisions of the GPL, the LGPL or the CeCILL are applicable
 * instead of those above. If you wish to allow use of your version of this file
 * only under the terms of either the GPL, the LGPL or the CeCILL, and not to allow
 * others to use your version of this file under the terms of the MPL, indicate
 * your decision by deleting the provisions above and replace them with the notice
 * and other provisions required by the GPL, the LGPL or the CeCILL. If you do not
 * delete the provisions above, a recipient may use your version of this file under
 * the terms of any one of the MPL, the GPL, the LGPL or the CeCILL.
 * ]]LICENCE
 */

/* Media manager */
var scMediaMgr = {
	fMediaPath: "",
	fIsLocal: window.location.protocol == "file:",
	fNavie9: parseFloat(scCoLib.userAgent.substring(scCoLib.userAgent.indexOf("msie") + 5)) < 10,
	fListeners: { mediaLoaded: [], mediaEnded: [], mediaUpdate: [], mediaError: [] },
	fFlashPlayerPath: scServices.scLoad.resolveDestUri("/lib-md/w_scMediaMgr/player/playerFlv.swf"),
	fVideoType: /\.(webm|mp4|mp3|ogg|ogv|oga|opus|wav|m4a|m4v|WEBM|MP4|MP3|OGG|OGV|OGA|OPUS|WAV|M4A|M4V)$/,
	fYoutubeVideoIds: {},
	fProcessYoutubeUrls: null,

	fStrings: ["Montrer les sous-titres", "Cacher les sous-titres",
	/*02*/      "Choisir la langue", "Off",
	/*04*/      "Clic droit, enregistrer sous... pour télécharger", "Lecture",
	/*06*/      "Désactiver le son", "Désactiver le son",
	/*08*/      "Transcription", "Voir la transcription",
	/*10*/      "Alternative vidéo", "Voir l\'alternative vidéo (LSF,LPC)",
	/*12*/      "Audiodescription", "Voir l\'audiodescription",
	/*14*/      "Vidéo", "Voir le média d\'origine",
	/*16*/      "Sous-titres", "Voir les sous-titres",
	/*18*/      "Pause", "Lecture",
	/*20*/      "Activer le son", "Désactiver le son",
	/*22*/      "Cacher la transcription", "Voir la transcription",
	/*24*/      "Voir la vidéo en plein écran", "Revenir au mode normal (appuyer sur Échap)",
	/*26*/      "Pour quitter le plein écran, appuyer sur Échap...", "",
	/*28*/      "Barre de navigation", "Barre de volume",
	/*30*/      "Télécharger la transcription", "Chargement",
	/*32*/		"Ce type de lien n\'est pas reconnu par le lecteur. Vous pourrez y accédez en cliquant sur le lien ci-dessous", "Haute",
	/*34*/		"Moyenne", "Basse",
	/*36*/		"Qualité", "Qualité",
	/*38*/		"Erreur de connexion. Veuillez vérifier que vous êtes bien connecté à un réseau mobile ou internet ...", ""],

	init: function (pMediaPath, pOpts) {
		try {
			if (typeof pMediaPath != "undefined") this.fMediaPath = pMediaPath;

			this.fOpts = (typeof pOpts == "undefined" ? { isSkinInWidget: false, isFlashFallback: false, processYoutubeUrls: false } : pOpts);
			this.fOpts.isSkinInWidget = (typeof this.fOpts.isSkinInWidget == "undefined" ? false : this.fOpts.isSkinInWidget);
			this.fOpts.isFlashFallback = (typeof this.fOpts.isFlashFallback == "undefined" ? false : this.fOpts.isFlashFallback);
			this.fProcessYoutubeUrls = this.fProcessYoutubeUrls != null ? this.fProcessYoutubeUrls : this.fOpts.processYoutubeUrls || false;

			this.fSkinRelPath = this.fOpts.isSkinInWidget ? scServices.scLoad.resolveDestUri("/lib-md/w_scMediaMgr") : scServices.scLoad.resolveDestUri("/skin");

			// WebBrowser Type
			var vWebBrowser = this.xGetWebBrowser();
			this.fIsWebMSupported = (vWebBrowser[0] == "Chrome" && vWebBrowser[1] >= 6) || (vWebBrowser[0] == "Firefox" && vWebBrowser[1] >= 4) || (vWebBrowser[0] == "Opera" && vWebBrowser[1] >= 10.60);

			this.fStore = new LocalStore();

			var vMedias = scPaLib.findNodes(this.fMediaPath);
			if (!vMedias) return;
			for (var i = 0; i < vMedias.length; i++) {
				this.initMedia(vMedias[i]);
			}
			// Lance la création vidéos youtube
			this.xCreateYoutubeVideos();

		} catch (e) { scCoLib.log("ERROR - scMediaMgr.init : " + e); }
	},

	initMedia: function (pMediaNode) {
		try {
			if (pMediaNode.fInitialized) return pMediaNode;
			var vMedia = pMediaNode.media = {};
			vMedia.fSrcTabs = [];
			vMedia.fParent = pMediaNode;
			vMedia.fId = pMediaNode.id || "";
			vMedia.fIsTranscript = pMediaNode.getAttribute('data-alt-istranscript') || "no";
			vMedia.fTranscript = pMediaNode.getAttribute('data-alt-transcript') || "no";
			vMedia.fTranscriptInfosDoc = pMediaNode.getAttribute('data-alt-transcriptinfosdoc');
			vMedia.fSrc = pMediaNode.getAttribute('data-src');
			vMedia.fWidth = pMediaNode.getAttribute('data-width');
			vMedia.fHeight = pMediaNode.getAttribute('data-height');
			vMedia.fMaxWidth = pMediaNode.getAttribute('data-max-width');
			vMedia.fMaxHeight = pMediaNode.getAttribute('data-max-height');
			vMedia.fOtherEncoding = pMediaNode.getAttribute('data-alt-otherencoding') || "no";
			vMedia.fAltVideo = pMediaNode.getAttribute('data-alt-altvideo') || "no";
			vMedia.fAudioDesc = pMediaNode.getAttribute('data-alt-audiodesc') || "no";
			var vAudioDescType = pMediaNode.getAttribute('data-alt-audiodesctype') || "no";
			vMedia.fAudioDescType = vAudioDescType.substring(vAudioDescType.lastIndexOf("_") + 1);
			var vInnerPlayer = scPaLib.findNode('chi:video|audio', pMediaNode);
			vMedia.fType = pMediaNode.getAttribute('data-type') || vInnerPlayer ? vInnerPlayer.tagName.toLowerCase() : '';
			vMedia.fIsAltBtn = false;
			vMedia.fToolsBtnCnt = 0;
			vMedia.fSubtitles = pMediaNode.getAttribute('data-subtitles') || "no";
			pMediaNode.fInitialized = true;
			this.createMedia(vMedia, vMedia.fType);
			return pMediaNode;
		} catch (e) { 
			scCoLib.log("ERROR - scMediaMgr.initMedia : " + e); 
			return false;
		}
	},

	addListener: function (pKey, pFunc) {
		if (!this.fListeners[pKey]) return scCoLib.log("scMediaMgr.addListener ERROR : " + pKey + " is not a valid listener");
		this.fListeners[pKey].push(pFunc);
	},

	createMedia: function (pMedia, pType, pStart) {

		var vSrc = pStart != undefined ? pMedia.fSrcTabs[scCoLib.toInt(pStart)] : pMedia.fSrc;

		// Choix du type de vidéo (distante ou non)
		var vIsDistantUrl = vSrc.indexOf('http://') != -1 || vSrc.indexOf('https://') != -1;

		// C'est une vidéo distante
		if (!pMedia.fIsDistantUrlTested && vIsDistantUrl) {
			// If youtube video
			if (vSrc.indexOf('youtu.be') != -1 && pMedia.fId != "") {
				// Créer un objet de vidéos youtube
				var vYoutubeId = vSrc.substring(vSrc.lastIndexOf('/') + 1);
				this.fYoutubeVideoIds[vYoutubeId] = pMedia.fId;
			} else {
				pMedia.typeElt = pType;
				this.xGetScDepotRequest(pMedia, vSrc, pStart); // Test si dépot ou autre url distante
			}
			pMedia.fIsDistantUrlTested = true;
			return;
		}

		vSrc = pMedia.fDepotSrc || vSrc;
		pMedia.fDepotSrc = null;

		var vInnerPlayer = scPaLib.findNode('chi:video|audio', pMedia.fParent);
		// Si la source n'est pas lisible en html5, on crée un lien à la place de la vidéo
		if (vSrc.match(this.fVideoType) == null) {
			var vLnkBk = scDynUiMgr.addElement("div", pMedia.fParent);
			var vLnkBkP = scDynUiMgr.addElement("p", vLnkBk, "infoPlayer");
			vLnkBkP.innerHTML = this.fStrings[32];
			var vLnkBkA = this.xAddLnk(vLnkBk, null, vSrc);
			vLnkBkA.href = vSrc;
			vLnkBkA.target = "_blank";
			pMedia.fParent.removeChild(vInnerPlayer);
			return;
		}

		// Création du média
		pMedia.fContainer = scDynUiMgr.addElement(pType, pMedia.fParent);
		var vSources = pMedia.fOtherEncoding != "no" ? [vSrc, pMedia.fOtherEncoding] : [vSrc];

		for (var i = 0; i < vSources.length; i++) {
			var vSourceElt = scDynUiMgr.addElement("source", pMedia.fContainer);
			vSourceElt.src = vSources[i];
		}
		if (pType == 'video') {
			pMedia.fContainer.style.maxWidth = pMedia.fWidth ? pMedia.fWidth + "px" : pMedia.fMaxWidth ? pMedia.fMaxWidth + "px" : pMedia.fContainer.getAttribute("width") + "px";
			pMedia.fContainer.style.maxHeight = pMedia.fHeight ? "auto" : pMedia.fMaxHeight ? pMedia.fMaxHeight + "px" : pMedia.fContainer.getAttribute("height") + "px";
			pMedia.fContainer.setAttribute("width", "100%");
			pMedia.fContainer.setAttribute("height", "auto");
			pMedia.fContainer.style.width = "100%";
		}

		// check connexion on last source
		pMedia.fContainer.childNodes[vSources.length - 1].onerror = function () {
			scMediaMgr.xSetAltNetwork(pMedia, vInnerPlayer);
		}

		// Init internals
		var vTxtFallBack = scPaLib.findNode("chi:em", vInnerPlayer ? vInnerPlayer : pMedia.fParent);
		if (vTxtFallBack) {
			pMedia.fContainer.onerror = function () { pMedia.fParent.innerHTML = vTxtFallBack.innerHTML; };
			var vTxtFallBackParent = vInnerPlayer ? vInnerPlayer : pMedia.fParent;
			vTxtFallBackParent.removeChild(vTxtFallBack);
		}
		if (vInnerPlayer) pMedia.fParent.removeChild(vInnerPlayer);

		// Fallback Flash si erreur, si pas de fallback text et si fallback flash demandé
		if (this.fOpts.isFlashFallback && !vTxtFallBack) {
			var vFlashSrc = scServices.scLoad.resolveDestUri("/res" + vSrc.substring(vSrc.lastIndexOf("/")));
			pMedia.flashFallback = '<object width="' + pMedia.fWidth + '" height="' + pMedia.fHeight + '" class="resVideo" type="application/x-shockwave-flash" data="' + this.fFlashPlayerPath + '"><param name="movie" value="' + this.fFlashPlayerPath + '" /><param name="wmode" value="transparent" /><param name="allowFullScreen" value="true" /><param name="FlashVars" value="flv=' + vFlashSrc + '&amp;showplayer=always&amp;showstop=1&amp;loadonstop=0&amp;showvolume=1&amp;showtime=1&amp;showfullscreen=1"></param></object>';
			// Le onerror ne marche pas sur la balise source sur IE
			// pMedia.fContainer.childNodes[vSources.length-1].onerror = function(){scMediaMgr.xCreateFlashFallback(pMedia);};
			pMedia.fContainer.onerror = function () { scMediaMgr.xCreateFlashFallback(pMedia); };
		}

		// Création du lecteur et des boutons par défaut du lecteur
		pMedia.fPlayerElt = scDynUiMgr.addElement("div", pMedia.fParent, "player_bk " + pType + "_bk");

		pMedia.fPlayBtn = this.xAddBtn(pMedia.fPlayerElt, "play", this.fStrings[19], this.fStrings[19]);
		pMedia.fPlayBtn.media = pMedia;
		pMedia.fPlayBtn.onclick = this.sPlayPause;
		var vSeekProgress = scDynUiMgr.addElement("div", pMedia.fPlayerElt, "seek_progress");
		pMedia.fLoadProgress = scDynUiMgr.addElement("div", vSeekProgress, "load_progress");
		pMedia.fSeekValue = scDynUiMgr.addElement("div", vSeekProgress, "seek_value");
		// Ne pas créer l'input range si IE9 ou inférieur car non supporté
		if (!this.fNavie9) {
			var vSeekBtn = pMedia.fSeekBtn = scDynUiMgr.addElement("input", vSeekProgress, "seek_btn");
			vSeekBtn.media = pMedia;
			vSeekBtn.title = this.fStrings[28];
			vSeekBtn.type = "range";
			vSeekBtn.value = 0;
			vSeekBtn.max = "";
			vSeekBtn.onchange = function () { pMedia.fContainer.currentTime = pMedia.fSeekBtn.value; };
			vSeekBtn.setAttribute("aria-valuemin", 0);
			vSeekBtn.setAttribute("aria-valuenow", 0);

		}
		var vTime = scDynUiMgr.addElement("div", pMedia.fPlayerElt, "time_bk");
		pMedia.fMuteBtn = this.xAddBtn(pMedia.fPlayerElt, "mute", this.fStrings[6], this.fStrings[6]);
		pMedia.fMuteBtn.media = pMedia;
		pMedia.fMuteBtn.onclick = this.sMute;
		var vVolumeBk = scDynUiMgr.addElement("div", pMedia.fPlayerElt, "volume_bk");
		pMedia.fVolumeValue = scDynUiMgr.addElement("div", vVolumeBk, "volume_value");
		// Ne pas créer l'input range si IE9 ou inférieur car non supporté
		if (!this.fNavie9) {
			var vVolumeBtn = pMedia.fVolumeBtn = scDynUiMgr.addElement("input", vVolumeBk, "volume_btn");
			vVolumeBtn.media = pMedia;
			vVolumeBtn.title = this.fStrings[29];
			vVolumeBtn.type = "range";
			vVolumeBtn.step = 0.1;
			vVolumeBtn.max = vVolumeBtn.value = 1;
			vVolumeBtn.onchange = this.sSetVolume;
			vVolumeBtn.setAttribute("aria-valuemin", 0);
			vVolumeBtn.setAttribute("aria-valuemax", 100);
			vVolumeBtn.setAttribute("aria-valuenow", 100);
			vVolumeBtn.setAttribute("aria-valuetext", "100%");
		}
		pMedia.fDefaultVidsBtns = [];
		pMedia.fVidsBtns = [];

		// Init quality changer
		if (pMedia.fDepotQualityChanger && pMedia.fDepotQualityChanger.fQualityList && pType == "video") this.initQualityChanger(pMedia);
		pMedia.fDepotQualityChanger = null;

		// Init subtitles
		if (pStart != undefined || pType == 'video') this.initSubTitles(pMedia);

		// Crée les boutons de vidéos/audios alternatives si elles existent
		if (pMedia.fIsTranscript != 'no') {
			var vTitle = pMedia.fTranscript == 'text' ? this.fStrings[30] : this.fStrings[30] + " (" + pMedia.fTranscript.substring(pMedia.fTranscript.lastIndexOf('/') + 1) + pMedia.fTranscriptInfosDoc + ")",
				vTranscriptBtn = this.xAddBtn(pMedia.fPlayerElt, "transcript", this.fStrings[8], vTitle);
			vTranscriptBtn.fElt = pMedia.fTranscript == 'text' ? scPaLib.findNode("nsi:", pMedia.fParent) : pMedia.fTranscript;
			if (pMedia.fTranscript == 'text') this.xToggleTranscript(vTranscriptBtn, true);
			else vTranscriptBtn.fTranscriptIsPdf = true;
			if (pType == 'audio') vTranscriptBtn.onclick = this.sToggleTranscript;
			else {
				vTranscriptBtn.fClick = this.sToggleTranscript;
				pMedia.fDefaultVidsBtns.push(vTranscriptBtn);
				pMedia.fIsAltBtn = true;
			}
			pMedia.fToolsBtnCnt += 1;
		}
		var vAltVidsBtns = scDynUiMgr.addElement("span", pMedia.fPlayerElt, "altVids_bk");
		if (pMedia.fAltVideo != 'no') {
			var vAltVideoBtn = this.xAddBtn(vAltVidsBtns, "altvideo", this.fStrings[10], this.fStrings[11]);
			vAltVideoBtn.media = pMedia;
			vAltVideoBtn.src = pMedia.fAltVideo;
			vAltVideoBtn.typeElt = "video";
			pMedia.fVidsBtns.push(vAltVideoBtn);
			pMedia.fIsAltBtn = true;
			pMedia.fToolsBtnCnt += 1;
		}
		if (pMedia.fAudioDesc != 'no') {
			var vAudiodesc = this.xAddBtn(vAltVidsBtns, "audiodesc", this.fStrings[12], this.fStrings[13]);
			vAudiodesc.media = pMedia;
			vAudiodesc.src = pMedia.fAudioDesc;
			vAudiodesc.typeElt = pMedia.fAudioDescType == "mp4" || pMedia.fAudioDescType == "webm" || pMedia.fAudioDescType.toLowerCase().indexOf("video") != -1 ? "video" : "audio";
			pMedia.fVidsBtns.push(vAudiodesc);
			pMedia.fIsAltBtn = true;
			pMedia.fToolsBtnCnt += 1;
		}
		if (pMedia.fIsAltBtn) {
			var vDefaultMedia = this.xAddBtn(vAltVidsBtns, "defaultvideo", this.fStrings[14], this.fStrings[15]);
			vDefaultMedia.media = pMedia;
			vDefaultMedia.src = pMedia.fSrc;
			vDefaultMedia.defaultSrc = true;
			vDefaultMedia.typeElt = pMedia.fType;
			pMedia.fVidsBtns.push(vDefaultMedia);
			pMedia.fToolsBtnCnt += 1;

			// Init des onclick des boutons du player
			this.xInitClickBtns(pStart != undefined ? pMedia.fVidsBtns[scCoLib.toInt(pStart)] : vDefaultMedia);
		}

		// Listeners
		// datas blocked
		pMedia.fContainer.addEventListener('stalled', function () {
			scMediaMgr.xSetAltNetwork(pMedia, vInnerPlayer);
		})
		// datas loaded
		pMedia.fContainer.addEventListener('loadedmetadata', function () {
			if (pType == 'video' && !scPaLib.findNode("des:.icon-fullScreen", pMedia.fPlayerElt)) {
				// Création du bouton de fullscreen
				if (document.fullscreenEnabled || document.webkitFullscreenEnabled || document.mozFullScreenEnabled || document.msFullscreenEnabled) {
					var vFullScreenBtn = scMediaMgr.xAddBtn(pMedia.fPlayerElt, "fullScreen", scMediaMgr.fStrings[24], scMediaMgr.fStrings[24]);
					vFullScreenBtn.video = pMedia.fContainer;
					vFullScreenBtn.isFullScreen = false;
					vFullScreenBtn.onclick = scMediaMgr.sSetFullScreen;
					pMedia.fToolsBtnCnt += 1;
					document.addEventListener('fullscreenchange', function () { scMediaMgr.xFullScreenToggle(this) }, false);
					document.addEventListener('webkitfullscreenchange', function () { scMediaMgr.xFullScreenToggle(this) }, false);
					document.addEventListener('mozfullscreenchange', function () { scMediaMgr.xFullScreenToggle(this) }, false);
					document.addEventListener('msfullscreenchange', function () { scMediaMgr.xFullScreenToggle(this) }, false);
				}
			}
			pMedia.fPlayerElt.className += " is_" + pMedia.fToolsBtnCnt + "_toolsBtn";
			vTime.innerHTML = "<span class='curTime_bk'>" + scMediaMgr.xFormatTime(this.currentTime) + "</span><span class='sepTime_bk'> / </span><span class='totalTime_bk'>" + scMediaMgr.xFormatTime(this.duration) + "</span>";
			if (!scMediaMgr.fNavie9) {
				pMedia.fSeekBtn.max = scCoLib.toInt(this.duration);
				pMedia.fSeekBtn.setAttribute("aria-valuemax", scCoLib.toInt(this.duration));
			}
			scMediaMgr.xNotifyListener("mediaLoaded", this);
		}, false);
		pMedia.fContainer.addEventListener('timeupdate', function () {
			// TODO : Fonction à peut-être liée avec l'update flash
			if (!scMediaMgr.fNavie9) {
				pMedia.fSeekBtn.value = parseInt(this.currentTime, 10);
				pMedia.fSeekBtn.setAttribute("aria-valuenow", scCoLib.toInt(this.currentTime));
				pMedia.fSeekBtn.setAttribute("aria-valuetext", scMediaMgr.xFormatTime(this.currentTime));
			}
			pMedia.fSeekValue.style.width = (this.currentTime / this.duration) * 100 + "%";
			pMedia.fLoadProgress.style.width = (this.buffered.end(0) / this.duration) * 100 + "%";
			vTime.innerHTML = "<span class='curTime_bk'>" + scMediaMgr.xFormatTime(this.currentTime) + "</span><span class='sepTime_bk'> / </span><span class='totalTime_bk'>" + scMediaMgr.xFormatTime(this.duration) + "</span>";
			// Lance le traitement des sous-titres
			scMediaMgr.xUpdateSub(pMedia);
			scMediaMgr.xNotifyListener("mediaUpdate", this);
		}, false);
		pMedia.fContainer.addEventListener('volumechange', function () {
			if (!scMediaMgr.fNavie9) {
				pMedia.fVolumeBtn.value = this.volume;
				pMedia.fVolumeBtn.setAttribute("aria-valuenow", this.volume * 100);
				pMedia.fVolumeBtn.setAttribute("aria-valuetext", this.volume * 100 + "%");
				pMedia.fContainer.addEventListener('ended', function () { scMediaMgr.xStop(pMedia); }, false);
			}
			pMedia.fVolumeValue.style.width = this.volume * 100 + "%";
		}, false);
		pMedia.fContainer.addEventListener('ended', function () {
			pMedia.fPlayBtn.title = scMediaMgr.fStrings[19];
			pMedia.fPlayBtn.setAttribute("aria-label", scMediaMgr.fStrings[19]);
			pMedia.fPlayBtn.span.className = pMedia.fPlayBtn.span.className.replace("pause", "play");
			scMediaMgr.xSwitchClass(pMedia.fParent, "is_on", "is_off", true);
			scMediaMgr.xNotifyListener("mediaEnded", this);
		}, false);
	},

	initQualityChanger: function (pMedia) {
		pMedia.fToolsBtnCnt += 1;
		var vDepotQualityChangerBtn = this.xAddBtn(pMedia.fPlayerElt, this.fStore.get("quality") + "d" || "ld", this.fStrings[36], this.fStrings[37]);
		vDepotQualityChangerBtn.onclick = this.sToggleQualityBox;

		pMedia.fDepotQualityChanger.fList = scDynUiMgr.addElement("ul", pMedia.fPlayerElt, "qualityList subDisplay_off");
		vDepotQualityChangerBtn.fDepotQualityChanger = pMedia.fDepotQualityChanger;
		pMedia.fDepotQualityChanger.fBtns = [];
		for (var i in pMedia.fDepotQualityChanger.fQualityList) {
			var vQuality = pMedia.fDepotQualityChanger.fQualityList[i];
			var vQualityLi = scDynUiMgr.addElement("li", pMedia.fDepotQualityChanger.fList);
			var vQualityBtn = this.xAddLnk(vQualityLi, this.fStore.get("quality") && this.fStore.get("quality") == i ? "btnQuality_choice subSelect_on" : "btnQuality_choice subSelect_off", vQuality.label, vQuality.label);
			vQualityBtn.src = vQuality.src;
			vQualityBtn.fDepotQualityChanger = pMedia.fDepotQualityChanger;
			pMedia.fDepotQualityChanger.fBtns.push(vQualityBtn);
			vQualityBtn.quality = i;
			vQualityBtn.media = pMedia;
			vQualityBtn.changerBtn = vDepotQualityChangerBtn;
			vQualityBtn.onclick = this.sToggleQuality;
		}
	},

	initSubTitles: function (pMedia) {
		try {
			if (pMedia.fSubtitles == 'no') return;
			pMedia.fIsAltBtn = true;
			pMedia.fToolsBtnCnt += 1;

			// Traitement des sous titres et création de l'objet
			var vSubTemp = this.xDeserialiseObjJs(pMedia.fSubtitles).subtitles,
				isVideo = false;
			pMedia.fSubs = {};
			pMedia.fSubs.fSubtitles = [];

			for (var i = 0; i < vSubTemp.length; i++) {
				var vSubs = vSubTemp[i];
				pMedia.fSubs.fSubtitles[i] = {};
				pMedia.fSubs.fSubtitles[i].lang = vSubs.lang;
				pMedia.fSubs.fSubtitles[i].file = vSubs.url;
				var vExtension = vSubs.url.substring(vSubs.url.lastIndexOf(".") + 1);
				pMedia.fSubs.fSubtitles[i].video = vExtension != "srt" && vExtension != "vtt" ? true : false;
				if (vExtension != "srt" && vExtension != "vtt") isVideo = vSubs.url;
			}

			// Création des éléments
			pMedia.fSubs.fSubBox = scDynUiMgr.addElement("div", pMedia.fParent, "subBox subDisplay_off");
			pMedia.fSubs.fSubBoxCo = scDynUiMgr.addElement("div", pMedia.fSubs.fSubBox, "subBox_co subDisplay_off");
			pMedia.fSubs.fSubHolder = scDynUiMgr.addElement("div", pMedia.fSubs.fSubBoxCo, "subtitles");
			pMedia.fSubs.fSubHolder.title = this.fStrings[16];
			pMedia.fSubs.fSubHolder.setAttribute("aria-live", "polite");
			pMedia.fSubs.fSubHolder.setAttribute("aria-relevant", "text");

			// Déclaration de la langue par défaut : la première rentrée
			pMedia.fSubs.fLang = pMedia.fSubs.fSubtitles[0].lang;

			// Création du lien sur le bouton permettant le choix des sous-titres
			var vBtnDisplayLangSub = this.xAddBtn(pMedia.fPlayerElt, "subtitles", this.fStrings[16], this.fStrings[17]);
			if (pMedia.fSubs.fSubtitles.length == 1 && isVideo) {
				vBtnDisplayLangSub.typeElt = "video";
				vBtnDisplayLangSub.media = pMedia;
				vBtnDisplayLangSub.src = isVideo;
				pMedia.fVidsBtns.push(vBtnDisplayLangSub);
			}
			else {
				vBtnDisplayLangSub.fClick = this.sToggleSubs;
				pMedia.fDefaultVidsBtns.push(vBtnDisplayLangSub);
			}
			vBtnDisplayLangSub.fSubs = pMedia.fSubs;

			// Création de la liste des langues et changement du title de vBtnDisplayLangSub s'il y a plus d'un sous-titre
			pMedia.fSubs.fBtnsLang = [];
			if (pMedia.fSubs.fSubtitles.length > 1) {
				vBtnDisplayLangSub.title = this.fStrings[2];
				pMedia.fSubs.fBtnsLangList = scDynUiMgr.addElement("ul", pMedia.fPlayerElt, "btnsLangList subDisplay_off");
				pMedia.fSubs.fBtnsLangList.style.margin = "0px";
				pMedia.fSubs.fBtnsLangList.style.left = vBtnDisplayLangSub.offsetLeft - pMedia.fSubs.fBtnsLangList.offsetWidth + vBtnDisplayLangSub.offsetWidth + "px";
				var vSubLi = scDynUiMgr.addElement("li", pMedia.fSubs.fBtnsLangList);
				var vSubBtn = this.xAddLnk(vSubLi, "btnSub_choice subSelect_on", this.fStrings[3], this.fStrings[1]);
				pMedia.fSubs.fBtnsLang.push(vSubBtn);
				vSubBtn.fSubs = pMedia.fSubs;
				vSubBtn.onclick = this.sHideSubs;

			} else vBtnDisplayLangSub.title = this.fStrings[0];

			for (var i = 0; i < pMedia.fSubs.fSubtitles.length; i++) {
				var vSubtitles = pMedia.fSubs.fSubtitles[i];
				// Création de la liste des langues
				if (pMedia.fSubs.fSubtitles.length > 1) {
					var vSubLi = scDynUiMgr.addElement("li", pMedia.fSubs.fBtnsLangList);
					var vSubBtn = this.xAddLnk(vSubLi, "btnSub_choice", vSubtitles.lang, vSubtitles.lang);
					pMedia.fSubs.fBtnsLang.push(vSubBtn);
					vSubBtn.fSubs = pMedia.fSubs;
					vSubBtn.fSub = vSubtitles;
					if (!vSubtitles.video) vSubBtn.onclick = this.sToggleSubLang;
					else {
						vSubBtn.typeElt = "video";
						vSubBtn.src = vSubtitles.file;
						vSubBtn.media = pMedia
						pMedia.fVidsBtns.push(vSubBtn);
					}
				}
			}
		} catch (e) { scCoLib.log("ERROR - scMediaMgr.initSubTitles : " + e); }
	},

	stop: function (pBtn) {
		if (!pBtn) return;
		this.xStop(pBtn.media);
	},

	playPause: function (pBtn, pForcedPause) {
		if (!pBtn) return;
		if (!this.fNavie9) pBtn.media.fSeekBtn.max = pBtn.media.fContainer.duration;
		if (!pBtn.media.fContainer.paused || pForcedPause) {
			pBtn.title = this.fStrings[19];
			pBtn.setAttribute("aria-label", this.fStrings[19]);
			pBtn.span.className = pBtn.span.className.replace("pause", "play");
			pBtn.media.fContainer.paused = true;
			if (pBtn.media.isFlash) pBtn.media.fContainer.SetVariable("method:pause", "");
			else pBtn.media.fContainer.pause();
			this.xSwitchClass(pBtn.media.fParent, "is_on", "is_off", true);
		} else {
			pBtn.title = this.fStrings[18];
			pBtn.setAttribute("aria-label", this.fStrings[18]);
			pBtn.span.className = pBtn.span.className.replace("play", "pause");
			pBtn.media.fContainer.paused = false;
			if (pBtn.media.isFlash) pBtn.media.fContainer.SetVariable("method:play", "");
			else pBtn.media.fContainer.play();
			this.xSwitchClass(pBtn.media.fParent, "is_off", "is_on", true);
		}
	},

	mute: function (pBtn) {
		if (!pBtn) return;
		if (pBtn.media.muted == true) {
			pBtn.title = this.fStrings[21];
			pBtn.setAttribute("aria-label", this.fStrings[21]);
			pBtn.span.className = pBtn.span.className.replace("muted", "mute");
			if (!pBtn.media.isFlash) pBtn.media.fContainer.volume = 1;
			else pBtn.media.fContainer.SetVariable("method:setVolume", 100);
			pBtn.media.muted = false;
		} else {
			pBtn.title = this.fStrings[20];
			pBtn.setAttribute("aria-label", this.fStrings[20]);
			pBtn.span.className = pBtn.span.className.replace("mute", "muted");
			if (!pBtn.media.isFlash) pBtn.media.fContainer.volume = 0;
			else pBtn.media.fContainer.SetVariable("method:setVolume", 0);
			pBtn.media.muted = true;
		}
	},

	/* ===  ============================================================ */

	sPlayPause: function () {
		try {
			scMediaMgr.playPause(this);
		} catch (e) { }
		return false;
	},

	sSetVolume: function () {
		try {
			scMediaMgr.xSetVolume(this);
		} catch (e) { }
		return false;
	},

	sMute: function () {
		try {
			scMediaMgr.mute(this);
		} catch (e) { }
		return false;
	},

	sToggleTranscript: function () {
		try {
			scMediaMgr.xToggleTranscript(this);
		} catch (e) { }
		return false;
	},

	// Suppression de l'insertion de la vidéo dans le src, récréation à chaque fois pour gérer les différentes sources - A ENLEVER quand trouver pourquoi la recréation de media peut causer des ralentissements
	/*sLoadVideo : function(){
		try{
			scMediaMgr.xLoadVideo(this);
		} catch(e){}
		return false;
	},*/

	sToggleQualityBox: function () {
		try {
			scMediaMgr.xToggleQualityBox(this);
		} catch (e) { }
		return false;
	},

	sToggleQuality: function () {
		try {
			scMediaMgr.xLoadVideo(this);
			scMediaMgr.xToggleQualityBox(this);
		} catch (e) { }
		return false;
	},

	sToggleSubs: function () {
		// Choix des langues si plusieurs langues ou toggle on/off sous-titres
		try {
			var vBtn = this;
			if (vBtn.fSubs.fSubtitles.length > 1) scMediaMgr.xSubLangSelect(vBtn);
			else {
				scMediaMgr.xSubsAdd(vBtn.fSubs.fSubtitles[0].file, vBtn.fSubs.fSubtitles[0], function () {
					scMediaMgr.xToggleSubsOnOff(vBtn);
				});
			}
		} catch (e) { }
		return false;
	},

	sHideSubs: function () {
		// Cache les sous-titres et ferme le menu des sous titres
		try {
			scMediaMgr.xHideSubs(this);
			scMediaMgr.xSubLangSelect(this);
		} catch (e) { }
		return false;
	},

	sToggleSubLang: function () {
		// Choix des langues et affichage du bon sous-titres
		try {
			scMediaMgr.xSubsAdd(this.fSubs.fSubtitles[0].file, this.fSubs.fSubtitles[0]);
			scMediaMgr.xShowSubs(this);
			if (this.fSub.showing) scMediaMgr.xShowSub(this.fSubs.fSubHolder, this.fSub[this.fSub.lang][this.fSub.active].text, true);
			this.fSubs.fLang = this.fSub.lang;
			scMediaMgr.xSubLangSelect(this);
		} catch (e) { }
		return false;
	},

	sSetFullScreen: function () {
		try {
			scMediaMgr.xSetFullScreen(this);
		} catch (e) { }
		return false;
	},


	/* ===  ============================================================ */

	xCreateFlashFallback: function (pMedia) {
		// Remplacement de l'objet et définition des attributs
		pMedia.fParent.innerHTML = pMedia.flashFallback;
		pMedia.fContainer = pMedia.flashFallback;
		var vFullScreenBtn = scMediaMgr.xAddBtn(pMedia.fPlayerElt, "fullScreen_btn", scMediaMgr.fStrings[24], scMediaMgr.fStrings[24]);
		vFullScreenBtn.isFlash = pMedia.isFlash = true;
		pMedia.fPlayerElt.style.display = "none";
		pMedia.flashFallback.style.visibility = "visible";
		pMedia.fContainer.paused = true;
		vFullScreenBtn.video = pMedia.fContainer;
	},

	xSetVolume: function (pBtn) {
		if (!pBtn) return;
		if (!pBtn.media.isFlash) pBtn.media.fContainer.volume = pBtn.value;
		// Todo : A tester dans lexique
		else pBtn.media.fContainer.SetVariable("method:setVolume", pBtn.value * 100);
		if (pBtn.media.fContainer.volume != 0) {
			pBtn.media.fMuteBtn.title = this.fStrings[20];
			pBtn.media.fMuteBtn.setAttribute("aria-label", this.fStrings[20]);
			pBtn.media.fMuteBtn.span.className = pBtn.media.fMuteBtn.span.className.replace("muted", "mute");
		} else {
			pBtn.media.fMuteBtn.title = this.fStrings[21];
			pBtn.media.fMuteBtn.setAttribute("aria-label", this.fStrings[21]);
			pBtn.media.fMuteBtn.span.className = pBtn.media.fMuteBtn.span.className.replace("mute", "muted");
		}
	},

	xToggleTranscript: function (pBtn, pVis) {
		if (!pBtn) return;
		if (pBtn.fTranscriptIsPdf) {
			window.open(pBtn.fElt, "_blank");
			return;
		}
		var vVis = pBtn.fElt.vis ? pBtn.fElt.vis : pVis;

		var vClasse = pBtn.className.indexOf(' ') == -1 ? pBtn.className : pBtn.className.substr(0, pBtn.className.indexOf(' '));

		if (!vVis) {
			scMediaMgr.xSwitchClass(pBtn.fElt, "display_off", "display_on", true);
			pBtn.title = this.fStrings[22];
			pBtn.setAttribute("aria-label", this.fStrings[22]);
			scMediaMgr.xSwitchClass(pBtn, "act_off", "act_on", true);
			pBtn.fElt.vis = true;
		} else {
			scMediaMgr.xSwitchClass(pBtn.fElt, "display_on", "display_off", true);
			pBtn.title = this.fStrings[23];
			pBtn.setAttribute("aria-label", this.fStrings[23]);
			scMediaMgr.xSwitchClass(pBtn, "act_on", "act_off", true);
			pBtn.fElt.vis = false;
		}
	},

	xStop: function (pMedia) {
		if (!pMedia) return;
		scMediaMgr.playPause(pMedia.fPlayBtn, true);
		if (!pMedia.isFlash) pMedia.fContainer.currentTime = 0;
		else pMedia.fContainer.SetVariable("method:setPosition", 0)
	},

	xFullScreenToggle: function () {
		scCoLib.log("scMediaMgr.xFullScreenToggle");
		var vFullscreenElement = document.fullscreenElement || document.webkitFullscreenElement || document.mozFullScreenElement || document.msFullscreenElement;
		if (vFullscreenElement) {
			this.fCurrentFullScreenElement = vFullscreenElement;
			this.fCurrentFullScreenElement.setAttribute("controls", true);
		} else if (this.fCurrentFullScreenElement) {
			this.fCurrentFullScreenElement.removeAttribute("controls");
			this.fCurrentFullScreenElement = null;
		}
	},

	xSetFullScreen: function (pBtn) {
		if (pBtn.video.requestFullscreen) {
			pBtn.video.requestFullscreen();
		} else if (pBtn.video.msRequestFullscreen) {
			pBtn.video.msRequestFullscreen();
		} else if (pBtn.video.mozRequestFullScreen) {
			pBtn.video.mozRequestFullScreen();
		} else if (pBtn.video.webkitRequestFullscreen) {
			pBtn.video.webkitRequestFullscreen();
		}
	},
	xNotifyListener: function (pKey, pParam) {
		try {
			for (var i = 0; i < this.fListeners[pKey].length; i++) {
				this.fListeners[pKey][i](pParam);
			}
		} catch (e) {
			scCoLib.log("scMediaMgr.xNotifyListener(" + pKey + ") - ERROR : " + e);
		}
	},

	xLoadVideo: function (pBtn) {
		if (!pBtn || !pBtn.media) return;
		// A commenter pour remettre le currentTime sur la nouvelle vidéo
		// this.xStop(pBtn.media);

		var vContainer = pBtn.media.fContainer;
		// A décommenter pour remettre le currentTime sur la nouvelle vidéo
		var vCurrentTime = vContainer.currentTime;

		if (pBtn.media.isFlash) vContainer.SetVariable("method:setUrl", pBtn.src);
		else vContainer.src = pBtn.src;
		// scMediaMgr.xInitClickBtns(pBtn);		

		if (!pBtn.media.isFlash) vContainer.load();
		scMediaMgr.playPause(pBtn.media.fPlayBtn);
		// A décommenter pour remettre le currentTime sur la nouvelle vidéo
		vContainer.addEventListener('loadedmetadata', function () {
			this.currentTime = vCurrentTime;
		}, false);
	},

	xInitClickBtns: function (pBtn) {
		if (!pBtn) return;
		pBtn.media.fIsDistantUrlTested = false;
		for (var i = 0; i < pBtn.media.fVidsBtns.length; i++) {
			// Init click pour les boutons sous titre et transcript affichés seulement lorsqu'on est sur le bouton défaut
			for (var j = 0; j < pBtn.media.fDefaultVidsBtns.length; j++) {
				var vDefaultVidsBtn = pBtn.media.fDefaultVidsBtns[j];
				if (pBtn.defaultSrc) {
					vDefaultVidsBtn.onclick = vDefaultVidsBtn.fClick;
					vDefaultVidsBtn.disabled = false;
					scMediaMgr.xSwitchClass(vDefaultVidsBtn, "video_act_on", "video_act_off", true);
				} else {
					vDefaultVidsBtn.onclick = function () { return false; };
					vDefaultVidsBtn.disabled = true;
					scMediaMgr.xSwitchClass(vDefaultVidsBtn, "video_act_off", "video_act_on", true);
					// Gestion spécifique pour les sous-titres (quand srt ou vtt)
					if (vDefaultVidsBtn.fSubs) {
						if (vDefaultVidsBtn.fSubs.fSubtitles.length > 1) {
							scMediaMgr.xHideSubs(vDefaultVidsBtn);
							vDefaultVidsBtn.fSubs.subLangState = true;
							scMediaMgr.xSubLangSelect(vDefaultVidsBtn);
						} else scMediaMgr.xToggleSubsOnOff(vDefaultVidsBtn, true)
					}
				}
			}
			// Init click pour le bouton défaut at les boutons alternatifs
			var vAltVidsBtn = pBtn.media.fVidsBtns[i],
				vSrcTabs = pBtn.media.fSrcTabs;
			if (!vSrcTabs.length || vSrcTabs.length != i + 1) pBtn.media.fSrcTabs[i] = vAltVidsBtn.src;
			vAltVidsBtn.pos = i;
			if (pBtn == vAltVidsBtn) {
				vAltVidsBtn.onclick = function () { return false; };
				vAltVidsBtn.disabled = true;
				scMediaMgr.xSwitchClass(vAltVidsBtn, "video_act_off", "video_act_on", true);
			} else {
				vAltVidsBtn.onclick = function () {
					var vMedia = this.media;
					scMediaMgr.xStop(vMedia);
					while (vMedia.fParent.hasChildNodes()) {
						vMedia.fParent.removeChild(vMedia.fParent.lastChild);
					}
					//vMedia.fParent.innerHTML = "";
					scMediaMgr.createMedia(vMedia, this.typeElt, this.pos);
					setTimeout(function () {
						scMediaMgr.playPause(vMedia.fPlayBtn);
					}, 50)
				}
				vAltVidsBtn.disabled = false;
				scMediaMgr.xSwitchClass(vAltVidsBtn, "video_act_on", "video_act_off", true);
			}
		};
	},

	/* === Subtitles ============================================================ */
	xToggleSubsOnOff: function (pBtn, pVis) {
		// Toggle sous-titres on/off
		if (!pBtn) return;
		var vSubVis = pBtn.subvis ? pBtn.subvis : pVis;
		if (vSubVis) {
			scMediaMgr.xHideSubs(pBtn);
			pBtn.title = scMediaMgr.fStrings[0];
			pBtn.subvis = false;
		} else {
			scMediaMgr.xShowSubs(pBtn);
			pBtn.title = scMediaMgr.fStrings[1];
			pBtn.subvis = true;
		}
	},

	xShowSubs: function (pBtn) {
		// Montre les sous-titres
		if (!pBtn) return;
		this.xSwitchClass(pBtn.fSubs.fSubBox, "subDisplay_off", "subDisplay_on", true);
		this.xSwitchClass(pBtn, "btnSubDisplay_off", "btnSubDisplay_on", true);

		if (pBtn.tagName.toLowerCase() != "a") {
			var vClasse = pBtn.className.indexOf(' ') == -1 ? pBtn.className : pBtn.className.substr(0, pBtn.className.indexOf(' '));
			pBtn.title = this.fStrings[1];
			pBtn.setAttribute("aria-label", this.fStrings[1]);
		}

	},

	xHideSubs: function (pBtn) {
		// Cache les sous-titres
		if (!pBtn) return;
		this.xSwitchClass(pBtn.fSubs.fSubBox, "subDisplay_on", "subDisplay_off", true);
		this.xSwitchClass(pBtn, "btnSubDisplay_on", "btnSubDisplay_off", true);
		if (pBtn.tagName.toLowerCase() != "a") {
			var vClasse = pBtn.className.indexOf(' ') == -1 ? pBtn.className : pBtn.className.substr(0, pBtn.className.indexOf(' '));
			pBtn.title = this.fStrings[0];
			pBtn.setAttribute("aria-label", this.fStrings[0]);
		}

		// On repasse la liste de choix active sur le off
		for (var i = 0; i < pBtn.fSubs.fBtnsLang.length; i++) {
			var vBtn = pBtn.fSubs.fBtnsLang[i];
			if (i == 0) this.xSwitchClass(vBtn, "subSelect_off", "subSelect_on", true);
			else this.xSwitchClass(vBtn, "subSelect_on", "subSelect_off", true);
		}
	},

	xSubLangSelect: function (pBtn) {
		// Ouverture du menu des sous-titres
		if (!pBtn) return;
		if (!pBtn.fSubs.subLangState) {
			this.xSwitchClass(pBtn.fSubs.fBtnsLangList, "subDisplay_off", "subDisplay_on", true);
			pBtn.fSubs.subLangState = true;
		} else {
			this.xSwitchClass(pBtn.fSubs.fBtnsLangList, "subDisplay_on", "subDisplay_off", true);
			if (pBtn.fSubs.fBtnsLang.indexOf(pBtn) != -1) {
				for (var i = 0; i < pBtn.fSubs.fBtnsLang.length; i++) {
					var vBtn = pBtn.fSubs.fBtnsLang[i];
					if (pBtn == vBtn) this.xSwitchClass(pBtn, "subSelect_off", "subSelect_on", true);
					else this.xSwitchClass(vBtn, "subSelect_on", "subSelect_off", true);
				}
			}
			pBtn.fSubs.subLangState = false;
		}
	},

	xShowSub: function (pElt, pText, pIsActive) {
		// Insertion des sous-titre s'ils sont actifs
		if (pIsActive) pElt.innerHTML = pText;
		else pElt.innerHTML = "";
	},

	xUpdateSub: function (pMedia) {
		// Affichage des sous-titres en fonction de la postion et du temps
		if (pMedia.fSubtitles == 'no') return;
		for (var i in pMedia.fSubs.fSubtitles) {
			var vSubsObj = pMedia.fSubs.fSubtitles[i];
			if (!vSubsObj[vSubsObj.lang]) return 0;
			var vRecordedTime = vSubsObj[vSubsObj.lang].curTime,
				vCurrentTime = pMedia.fContainer.currentTime;
			if (vCurrentTime === vRecordedTime) continue;
			else {
				var j = vSubsObj.active;
				vSubsObj[vSubsObj.lang].curTime = vCurrentTime;
				if (vRecordedTime < vCurrentTime) {
					if ((vSubsObj[vSubsObj.lang][j] && vSubsObj[vSubsObj.lang][j].end > vCurrentTime && vSubsObj.showing)) continue;

					for (var dd = j; dd < vSubsObj[vSubsObj.lang].length; dd++)
						if (!scMediaMgr.xSubtitleLoop(vSubsObj, vCurrentTime, dd, pMedia)) break;

					for (var dd = 0; dd < j; dd++)
						if (!scMediaMgr.xSubtitleLoop(vSubsObj, vCurrentTime, dd, pMedia)) break;

				} else if (vRecordedTime > vCurrentTime)
					for (j = j; j >= 0; j--)
						if (!scMediaMgr.xSubtitleLoop(vSubsObj, vCurrentTime, dd, pMedia)) break;
			}
		}
	},

	xSubtitleLoop: function (pSubsObj, pCurrentTime, pKey, pMedia) {
		// Loop sur le tableau des sous-titres pour affichage
		var vSrtTmp = pSubsObj[pSubsObj.lang][pKey];

		// Réinititalisation si pas de vSrtTmp
		if (!vSrtTmp) {
			for (var i in pMedia.fSubs.fSubtitles) pMedia.fSubs.fSubtitles[i].showing = false;
			this.xSwitchClass(pMedia.fSubs.fSubBoxCo, "subDisplay_on", "subDisplay_off", true);
			return;
		}

		var vTimeStart = vSrtTmp.start,
			vTimeEnd = vSrtTmp.end;

		if (pCurrentTime > vTimeStart && pCurrentTime < vTimeEnd) {
			if (pSubsObj.active !== pKey || pSubsObj.showing === false) {
				pSubsObj.active = pKey;
				if (pSubsObj[pMedia.fSubs.fLang]) this.xShowSub(pMedia.fSubs.fSubHolder, vSrtTmp.text, true); //on
				pSubsObj.showing = true;
				this.xSwitchClass(pMedia.fSubs.fSubBoxCo, "subDisplay_off", "subDisplay_on", true);
			}
			return false;
		} else {
			if (pSubsObj.active === pKey) {
				pSubsObj.showing = false;
				if (pSubsObj[pMedia.fSubs.fLang]) this.xShowSub(pMedia.fSubs.fSubHolder, vSrtTmp.text, false); //off
				this.xSwitchClass(pMedia.fSubs.fSubBoxCo, "subDisplay_on", "subDisplay_off", true);
			}
		}
		return true;
	},

	xSubsAdd: function (pFile, pSubtitles, pSuccess) {
		// Chargement des sous-titres
		if (pSubtitles.video) return;
		if (pSubtitles[pSubtitles.lang]) {
			if (pSubtitles[pSubtitles.lang].length > 0 && pSuccess) pSuccess();
			return;
		}
		pSubtitles.showing = false;
		pSubtitles.active = 0;
		var vReq = this.xGetHttpRequest();
		vReq.open("GET", pFile, true);
		vReq.onreadystatechange = function () {
			if(vReq.readyState != 4) return;
			if (vReq.status != 0 && vReq.status != 200 && vReq.status != 304) {
				scMediaMgr.xNotifyListener("mediaError", { error: "subRequestStatus", content:vReq.status });
				return;
			}
			pSubtitles[pSubtitles.lang] = scMediaMgr.xSubsParser(vReq.responseText);
		}
		vReq.onload = function () {
			if (pSuccess) pSuccess();
		}
		vReq.onerror = function (pError) {
			scMediaMgr.xNotifyListener("mediaError", { error: "subsRequestNetwork" });
		}
		vReq.send();
	},

	//Parser from http://bubbles.childnodes.com/
	xSubsParser: function (obj) {
		try {
			// Parsage des sous-titres dans un objet
			var fileLines = obj.split('\n'),
				len = fileLines.length - 1,
				ret = [],
				old_int = 0,
				j = 0,
				tmp,
				c,
				str = "";

			for (var i = 0; i < len; i++) {
				var string = fileLines[i].replace(/^\s+|\s+$/g, "");
				if (!isNaN(string) && parseInt(fileLines[i]) === (old_int + 1)) {
					++j;

					old_int = parseInt(fileLines[i]);
					ret[j] = [];

					tmp = [];
					tmpEnd = [];
					tmp = fileLines[++i].split("-->");

					tmpEnd = tmp[1].split(" ");
					tmp[1] = tmpEnd[1].replace(".", ",");
					tmp[0] = tmp[0].replace(".", ",");

					ret[j]["start"] = this.xToSecs(tmp[0]);
					ret[j]["end"] = this.xToSecs(tmp[1]);
					ret[j]["text"] = "";
					ret[j]["cue"] = tmpEnd[2] ? tmpEnd[2] : "";

					c = 0;
					while (fileLines[i + c + 1] && fileLines[i + ++c].replace(/^\s+|\s+$/g, "") !== "")
						ret[j]["text"] += fileLines[i + c].replace(/\n\r|\r\n|\n|\r/g, "<br />");
				}
			}

			//printing the array
			tmp = ret.length;
			str = [];
			for (var i = 1; i < tmp; i++) {
				str[i - 1] = {
					start: ret[i]["start"],
					end: ret[i]["end"],
					text: ret[i]["text"],
					cue: ret[i]["cue"]
				};
			}
			return str;
		} catch (e) { scCoLib.log("ERROR - scMediaMgr.xSubsParser : " + e); }
	},

	xToggleQualityBox: function (pBtn) {
		if (!pBtn) return;
		if (!pBtn.fDepotQualityChanger.state) {
			this.xSwitchClass(pBtn.fDepotQualityChanger.fList, "subDisplay_off", "subDisplay_on", true);
			pBtn.fDepotQualityChanger.state = true;
		} else {
			this.xSwitchClass(pBtn.fDepotQualityChanger.fList, "subDisplay_on", "subDisplay_off", true);
			if (pBtn.fDepotQualityChanger.fBtns.indexOf(pBtn) != -1) {
				for (var i = 0; i < pBtn.fDepotQualityChanger.fBtns.length; i++) {
					var vBtn = pBtn.fDepotQualityChanger.fBtns[i];
					if (pBtn == vBtn) {
						this.fStore.set("quality", vBtn.quality);
						pBtn.changerBtn.span.className = "icon-" + vBtn.quality + "d";
						this.xSwitchClass(pBtn, "subSelect_off", "subSelect_on", true);
					}
					else this.xSwitchClass(vBtn, "subSelect_on", "subSelect_off", true);
				}
			}
			pBtn.fDepotQualityChanger.state = false;
		}
	},

	/* === Youtube = Déprécié ================================================= */
	xCreateYoutubeVideos: function () {
		if (this.fProcessYoutubeUrls) {
			var vFrameScript = document.createElement('script');
			vFrameScript.type = "text/javascript";
			document.body.appendChild(vFrameScript);
			var vFrameScriptCo = "";
			var vFrameScriptVar = "";
			for (var i in this.fYoutubeVideoIds) {
				var vId = this.fYoutubeVideoIds[i];
				var vYoutubeVideoBk = sc$(vId);
				var vFrameApiScript = document.createElement('script');
				vFrameApiScript.src = "https://www.youtube.com/iframe_api";
				vFrameApiScript.type = "text/javascript";
				vYoutubeVideoBk.parentNode.appendChild(vFrameApiScript, vYoutubeVideoBk);
				vFrameScriptVar += "var " + vId + ";";
				vFrameScriptCo += vId + " = new YT.Player('" + vId + "', {height: '390',width: '640',videoId: '" + i + "',events: {'onReady': onPlayerReady}});";
			}
			vFrameScript.innerHTML = vFrameScriptVar + "function onYouTubeIframeAPIReady() {" + vFrameScriptCo + "}function onPlayerReady(event) {/*event.target.playVideo();*/}";
		} else {
			for (var i in this.fYoutubeVideoIds) {
				var vYoutubeVideoBk = sc$(this.fYoutubeVideoIds[i]);
				var vLnkBk = scDynUiMgr.addElement("div", vYoutubeVideoBk.parentNode);
				var vLnkBkP = scDynUiMgr.addElement("p", vLnkBk, "infoPlayer");
				vLnkBkP.innerHTML = this.fStrings[32];
				var vSrc = vYoutubeVideoBk.getAttribute("data-src");
				var vLnkBkA = this.xAddLnk(vLnkBk, null, vSrc);
				vLnkBkA.href = vSrc;
				vLnkBkA.target = "_blank";
				vYoutubeVideoBk.parentNode.removeChild(vYoutubeVideoBk);
			}
		}
	},

	/* === ScDepot ============================================================ */
	xGetScDepotMedia: function (pMedia, pJson, pSrc, pStart) {
		this.xShowLoader(pMedia.fParent);
		var vScDepotVideoJson = pJson.views;
		var vHigherQuality;
		pMedia.fDepotQualityChanger = {};
		pMedia.fDepotQualityChanger.fQualityList = {};
		for (var i in vScDepotVideoJson) {
			var vVideo = vScDepotVideoJson[i];
			var vPatterns = vVideo.urlPatterns;
			for (var j = 0; j < vPatterns.length; j++) {
				var vPattern = vPatterns[j];

				if (vPattern.indexOf('SD') != -1) {
					var vQuality = vPattern.substring(vPattern.indexOf('D') + 1, vPattern.indexOf('D') + 2);
					var vLabel = vQuality == "h" ? this.fStrings[33] : vQuality == "m" ? this.fStrings[34] : this.fStrings[35];
					pMedia.fDepotQualityChanger.fQualityList[vQuality] = { 'src': pSrc + vPattern, 'label': vLabel };
				}
			}
		}
		var vDefaultQuality = this.fStore.get("quality") && pMedia.fDepotQualityChanger.fQualityList[this.fStore.get("quality")] ? this.fStore.get("quality") : pMedia.fDepotQualityChanger.fQualityList["h"] ? "h" : pMedia.fDepotQualityChanger.fQualityList["m"] ? "m" : "l";
		this.fStore.set("quality", vDefaultQuality);
		if (pMedia.typeElt == "video") pMedia.fDepotSrc = pMedia.fDepotQualityChanger.fQualityList[vDefaultQuality].src;
		this.createMedia(pMedia, pMedia.typeElt, pStart);
		this.xHideLoader(pMedia.fParent);
	},

	xGetScDepotRequest: function (pMedia, pSrc, pStart) {
		try {
			var vReq = this.xGetHttpRequest();
			vReq.open("GET", pSrc + "?V=infoViews.json", true);
			//vReq.withCredentials = true; // Supprimé pour permettre l'usage de Access-Control-Allow-Origin: * 
			vReq.onreadystatechange = function () {
				if (vReq.readyState == 4) {
					try {
						if (vReq.status == 200) {
							var vJson = scMediaMgr.xDeserialiseObjJs(vReq.responseText);
							scMediaMgr.xGetScDepotMedia(pMedia, vJson, pSrc, pStart);
						} else { throw "ERROR" };
					} catch (e) {
						// Si pas de depot, alors c une ressource distante non youtube et non dépot
						scMediaMgr.createMedia(pMedia, pMedia.typeElt, pStart);
					}
				}
			}
			vReq.send(null);
		} catch (e) {
			scCoLib.log("ERROR - ScMediaMgr.xGetRequest : " + e);
		}
	},

	xSetAltNetwork: function (pMedia, pInnerPlayer) {
		if (pMedia.fIsDistantUrlTested) {
			var vAltNetwork = scPaLib.findNode("chi:div.altNetwork", pInnerPlayer ? pInnerPlayer : pMedia.fParent);
			pMedia.fParent.innerHTML = vAltNetwork ? vAltNetwork.innerHTML : "<div class='altNetwork'><p>" + this.fStrings[38] + "</p></div>";
			return;
		}
	},

	xShowLoader: function (pDiv) {
		pDiv.style.display = "none";
		if (!pDiv.fLoader) {
			pDiv.fLoader = scDynUiMgr.addElement("div", pDiv.parentNode, "loader_bk icon-loader", null, { "display": "none" });
		}
		pDiv.fLoader.setAttribute("aria-label", this.fStrings[31]);
		pDiv.fLoader.style.display = "";
	},

	xHideLoader: function (pDiv) {
		pDiv.fLoader.style.display = "none";
		pDiv.style.display = "";
	},

	/* === Utilities ============================================================ */
	xGetWebBrowser: function () {
		var ua = navigator.userAgent, tem, M = ua.match(/(opera|chrome|safari|firefox|msie|trident(?=\/))\/?\s*(\d+)/i) || [];
		if (/trident/i.test(M[1])) {
			tem = /\brv[ :]+(\d+)/g.exec(ua) || [];
			return 'IE ' + (tem[1] || '');
		}
		if (M[1] === 'Chrome') {
			tem = ua.match(/\bOPR\/(\d+)/)
			if (tem != null) return 'Opera ' + tem[1];
		}
		M = M[2] ? [M[1], M[2]] : [navigator.appName, navigator.appVersion, '-?'];
		if ((tem = ua.match(/version\/(\d+)/i)) != null) M.splice(1, 1, tem[1]);
		return M;
	},
	/** scMediaMgr.xFormatTime : Format time. */
	xFormatTime: function (pTime) {
		pTime = Number(pTime);
		var h = Math.floor(pTime / 3600);
		var m = Math.floor(pTime % 3600 / 60);
		var s = Math.floor(pTime % 3600 % 60);
		return ((h > 0 ? h + ":" : "") + (m > 0 ? (h > 0 && m < 10 ? "0" : "") + m + ":" : "0:") + (s < 10 ? "0" : "") + s);
	},
	/** scMediaMgr.xToSecs. */
	xToSecs: function (pTime) {
		var vSec = 0.0, vTimeTab = [];
		if (pTime) {
			vTimeTab = pTime.split(':');
			for (var i = 0; i < vTimeTab.length; i++) vSec = vSec * 60 + parseFloat(vTimeTab[i].replace(',', '.'));
		}
		return vSec;
	},

	/** scMediaMgr.xDeserialiseObjJs. */
	xDeserialiseObjJs: function (pStr) {
		if (!pStr) return {};
		var vVal;
		eval("vVal=" + pStr);
		return vVal;
	},

	xGetHttpRequest: function () {
		if (window.XMLHttpRequest && (!this.fIsLocal || !window.ActiveXObject)) return new XMLHttpRequest();
		else if (window.ActiveXObject) return new ActiveXObject("Microsoft.XMLHTTP");
	},

	/** scMediaMgr.xAddBtn : Add a HTML button to a parent node. */
	xAddBtn: function (pParent, pClassName, pCapt, pTitle, pNxtSib) {
		var vBtn = pParent.ownerDocument.createElement("button");
		vBtn.className = pClassName;
		if (pTitle) {
			vBtn.setAttribute("title", pTitle.replace("&apos;", "'"));
			vBtn.setAttribute("aria-label", pTitle.replace("&apos;", "'"));
		}
		if (pCapt) {
			vBtn.span = scDynUiMgr.addElement("span", vBtn, "icon-" + pClassName);
		}
		if (pNxtSib) pParent.insertBefore(vBtn, pNxtSib);
		else pParent.appendChild(vBtn);
		return vBtn;
	},

	/** scMediaMgr.xAddLnk : Add a tag A to a parent node. */
	xAddLnk: function (pParent, pClassName, pCapt, pTitle, pNxtSib) {
		var vBtn = pParent.ownerDocument.createElement("a");
		vBtn.className = pClassName;
		vBtn.fName = pClassName;
		vBtn.href = "#";
		vBtn.target = "_self";
		if (pTitle) vBtn.setAttribute("title", pTitle);
		if (pCapt) vBtn.innerHTML = '<span class="capt">' + pCapt + '</span>';
		if (pNxtSib) pParent.insertBefore(vBtn, pNxtSib);
		else pParent.appendChild(vBtn);
		return vBtn;
	},

	/** scMediaMgr.xSwitchClass - replace a class name. */
	xSwitchClass: function (pNode, pClassOld, pClassNew, pAddIfAbsent, pMatchExact) {
		var vAddIfAbsent = typeof pAddIfAbsent == "undefined" ? false : pAddIfAbsent;
		var vMatchExact = typeof pMatchExact == "undefined" ? true : pMatchExact;
		var vClassName = pNode.className;
		var vReg = new RegExp("\\b" + pClassNew + "\\b");
		if (vMatchExact && vClassName.match(vReg)) return;
		var vClassFound = false;
		if (pClassOld && pClassOld != "") {
			if (vClassName.indexOf(pClassOld) == -1) {
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
	}
}

/** Local Storage API (localStorage/userData/cookie) */
function LocalStore(pId) {
	if (pId && !/^[a-z][a-z0-9]+$/.exec(pId)) throw new Error("Invalid store name");
	this.fId = pId || "";
	this.fRootKey = document.location.pathname.substring(0, document.location.pathname.lastIndexOf("/")) + "/";
	if ("localStorage" in window && typeof window.localStorage != "undefined") {
		this.get = function (pKey) { var vRet = localStorage.getItem(this.fRootKey + this.xKey(pKey)); return (typeof vRet == "string" ? unescape(vRet) : null) };
		this.set = function (pKey, pVal) { localStorage.setItem(this.fRootKey + this.xKey(pKey), escape(pVal)) };
	} else if (window.ActiveXObject) {
		this.get = function (pKey) { this.xLoad(); return this.fIE.getAttribute(this.xEsc(pKey)) };
		this.set = function (pKey, pVal) { this.fIE.setAttribute(this.xEsc(pKey), pVal); this.xSave() };
		this.xLoad = function () { this.fIE.load(this.fRootKey + this.fId) };
		this.xSave = function () { this.fIE.save(this.fRootKey + this.fId) };
		this.fIE = document.createElement('div');
		this.fIE.style.display = 'none';
		this.fIE.addBehavior('#default#userData');
		document.body.appendChild(this.fIE);
	} else {
		this.get = function (pKey) { var vReg = new RegExp(this.xKey(pKey) + "=([^;]*)"); var vArr = vReg.exec(document.cookie); if (vArr && vArr.length == 2) return (unescape(vArr[1])); else return null };
		this.set = function (pKey, pVal) { document.cookie = this.xKey(pKey) + "=" + escape(pVal) };
	}
	this.xKey = function (pKey) { return this.fId + this.xEsc(pKey) };
	this.xEsc = function (pStr) { return "LS" + pStr.replace(/ /g, "_") };
}
