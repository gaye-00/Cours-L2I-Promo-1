<!DOCTYPE html>
<script>var exnames = [], excounts = [], exheadings = [];exnames[0] = 'syntax';excounts[0] = '2';exheadings[0] = 'Syntax';exnames[1] = 'comments';excounts[1] = '2';exheadings[1] = 'Comments';exnames[2] = 'variables';excounts[2] = '7';exheadings[2] = 'Variables';exnames[3] = 'datatypes';excounts[3] = '7';exheadings[3] = 'Data Types';exnames[4] = 'numbers';excounts[4] = '3';exheadings[4] = 'Numbers';exnames[5] = 'strings';excounts[5] = '8';exheadings[5] = 'Strings';exActiveNo = 5;exnames[6] = 'booleans';excounts[6] = '5';exheadings[6] = 'Booleans';exnames[7] = 'operators';excounts[7] = '5';exheadings[7] = 'Operators';exnames[8] = 'lists';excounts[8] = '8';exheadings[8] = 'Lists';exnames[9] = 'tuples';excounts[9] = '4';exheadings[9] = 'Tuples';exnames[10] = 'sets';excounts[10] = '5';exheadings[10] = 'Sets';exnames[11] = 'dictionaries';excounts[11] = '5';exheadings[11] = 'Dictionaries';exnames[12] = 'ifelse';excounts[12] = '9';exheadings[12] = 'If...Else';exnames[13] = 'while_loops';excounts[13] = '4';exheadings[13] = 'While Loops';exnames[14] = 'for_loops';excounts[14] = '4';exheadings[14] = 'For Loops';exnames[15] = 'functions';excounts[15] = '6';exheadings[15] = 'Functions';exnames[16] = 'lambda';excounts[16] = '1';exheadings[16] = 'Lambda';exnames[17] = 'classes';excounts[17] = '4';exheadings[17] = 'Classes';exnames[18] = 'inheritance';excounts[18] = '2';exheadings[18] = 'Inheritance';exnames[19] = 'modules';excounts[19] = '4';exheadings[19] = 'Modules';</script>
<html lang="en-US">

<!-- Mirrored from www.w3schools.com/python/exercise.asp?filename=exercise_strings7 by HTTrack Website Copier/3.x [XR&CO'2014], Tue, 31 May 2022 13:51:00 GMT -->
<head>
<title>Exercise v3.0</title>
<meta name="viewport" content="width=device-width">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="preload" href="https://www.w3schools.com/lib/fonts/fontawesome.woff2?80702bb7" as="font" type="font/woff2" crossorigin> 
<link rel="preload" href="../lib/fonts/source-code-pro-v14-latin-regular.woff2" as="font" type="font/woff2" crossorigin> 
<link rel="stylesheet" href="../lib/w3schools30.css">
<link rel="stylesheet" href="../lib/codemirror.css">
<script>
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','../../www.google-analytics.com/analytics.js','ga');
  ga('create', 'UA-3855518-1', 'auto');
  ga('require', 'displayfeatures');
  ga('require', 'GTM-WJ88MZ5');
  ga('send', 'pageview');
</script>
<script src="../lib/my-learning21cd.js?v=1.0.9"></script>

<script src="../lib/uic2c70.js?v=1.0.3"></script>
<script data-cfasync="false" type="text/javascript">
var k42 = false;

k42 = true;

</script>
<script data-cfasync="false" type="text/javascript">
    window.snigelPubConf = {
    "adengine": {

      "activeAdUnits": ["try_it_leaderboard"]

  }
}
uic_r_a()
</script>
<script async data-cfasync="false" src="../../cdn.snigelweb.com/adengine/w3schools.com/loader.js" type="text/javascript"></script>
<script>
if (window.addEventListener) {              
    window.addEventListener("resize", browserResize);
} else if (window.attachEvent) {                 
    window.attachEvent("onresize", browserResize);
}
var xbeforeResize = window.innerWidth;

function browserResize() {
    var afterResize = window.innerWidth;
    if ((xbeforeResize < (970) && afterResize >= (970)) || (xbeforeResize >= (970) && afterResize < (970)) ||
        (xbeforeResize < (728) && afterResize >= (728)) || (xbeforeResize >= (728) && afterResize < (728)) ||
        (xbeforeResize < (468) && afterResize >= (468)) ||(xbeforeResize >= (468) && afterResize < (468))) {
        xbeforeResize = afterResize;
        
        if (document.getElementById("adngin-try_it_leaderboard-0")) {
                adngin.queue.push(function(){  adngin.cmd.startAuction(["try_it_leaderboard"]); });
              }
         
    }
}
</script>
<script type="text/javascript">
var exsection = "PYTHON";
var blueprint = "";
if (exsection == "JS") {
    storageBlip = "js_";
} else if (exsection == "SQL") {
    storageBlip = "sql_";
} else if (exsection == "MySQL") {
    storageBlip = "mysql_";
} else if (exsection == "PYTHON") {
    storageBlip = "python_";
} else if (exsection == "PANDAS") {
    storageBlip = "pandas_";
} else if (exsection == "NUMPY") {
    storageBlip = "numpy_";
} else if (exsection == "HTML_2") {
    storageBlip = "html_2_";
} else if (exsection == "JSREF") {
    storageBlip = "jsref_";
} else if (exsection == "JAVA") {
    storageBlip = "java_";
} else if (exsection == "CPP") {
    storageBlip = "cpp_";
} else if (exsection == "R") {
    storageBlip = "r_";
} else if (exsection == "CS") {
    storageBlip = "cs_";
} else if (exsection == "BS3") {
    storageBlip = "bs3_";
} else if (exsection == "BS4") {
    storageBlip = "bs4_";
} else if (exsection == "JQ") {
    storageBlip = "jq_";
} else if (exsection == "PHP") {
    storageBlip = "php_";
} else if (exsection == "CSS" || exsection == "CSS_2") {
    storageBlip = "css_";
} else if (exsection == "GIT") {
    storageBlip = "git_";
} else if (exsection == "REACT") {
    storageBlip = "react_";
} else {
    storageBlip = "";
}
var checkReq = function () {
    checkCode(required);
    document.getElementById("codeCheckWarning").contentEditable = true;
    document.getElementById("codeCheckWarning").focus();
    document.getElementById("codeCheckWarning").contentEditable = false;    
}
function submitTryit(n, cc) {
  if (window.editor) {
    window.editor.save();
  }
  var text = document.getElementById("textareaCode" + n).value;
  var ifr = document.createElement("iframe");
  ifr.setAttribute("frameborder", "0");
  ifr.setAttribute("id", "iframeResult" + n);  
  document.getElementById("iframewrapper" + n).innerHTML = "";
  document.getElementById("iframewrapper" + n).appendChild(ifr);
  var ifrw = (ifr.contentWindow) ? ifr.contentWindow : (ifr.contentDocument.document) ? ifr.contentDocument.document : ifr.contentDocument;
  if (cc == 1) {
      document.getElementById("iframeResult").addEventListener("load", checkReq);
  }
  ifrw.document.open();
  ifrw.document.write(text);  
  ifrw.document.close();
}
function showCorrectAnswer() {
	document.getElementById("editSection").style.display = "none";
  document.getElementById("correctSection").style.display = "table-row";
	document.getElementById("showCorrectBtn").style.display = "none";
	document.getElementById("hideCorrectBtn").style.display = "inline";
	submitTryit("2", 0);
  if (window.editor2) {
    window.editor2.refresh();
  }

}
function hideCorrectAnswer() {
	document.getElementById("editSection").style.display = "table-row";
    document.getElementById("correctSection").style.display = "none";
	document.getElementById("hideCorrectBtn").style.display = "none";
	document.getElementById("showCorrectBtn").style.display = "inline";
}

function setAnswerObj(nam, val, all) {
  if (userLoggedOn) {
    var xhttp = new XMLHttpRequest();
    xhttp.onreadystatechange = function() {
      if (this.readyState == 4) {
        if (this.status == 200) {
          if (this.responseText == "NOTLOGGEDIN") {
            localStorage.setItem(nam, val);
          } else {
            retval = this.responseText;
            retval = JSON.parse(retval);
            //alert(retval["recordcount"])
            checkCompletedExercises(0);
          }
        } else {
          localStorage.setItem(nam, val);
        }
      }
    };
    xhttp.open("POST.html", MyLearning.getUrl('api.exercise.html'), true);
//  xhttp.open("POST", "https://mypage.w3schools.com/mypage/set_exercise_obj.php", true);
    xhttp.withCredentials = true;
    xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
    var reqData = "n=" + nam + "&v=" + val + "&a=" + all;
    xhttp.send(reqData);

    if (MyLearning._version === '2') { // send a copy to mylv1
      MyLearning.makeLegacyPostRequest(
        MyLearning.getUrl('api.exercise.html', '1.5L'),
        reqData
      );
    }
  } else {
    localStorage.setItem(nam, val);
  }
  answerObj[nam] = val;
}
function checkCode(jsonObj) {
    var func, cc, i, l, errs = [], bptxt = "", feilmargin = 0, score_arr = [];
    document.getElementById("codeCheckWarningText").innerHTML = "";
    document.getElementById("codeCheckWarning").style.display = "none";
    document.getElementById("codeCheckCorrect").style.display = "none";
    if (typeof jsonObj == 'object') {
        checkTag(jsonObj.tags, document.getElementById("iframeResult").contentWindow.document, "tagname");
        checkTag(jsonObj.tagswithclass, document.getElementById("iframeResult").contentWindow.document, "classname");
        checkTag(jsonObj.tagsbyqueryselector, document.getElementById("iframeResult").contentWindow.document, "queryselector");        
        checkStyle(jsonObj.styles, document.getElementById("iframeResult").contentWindow.document);        
        func = jsonObj.functions;
        l = (func ? func.length : 0);
        for (i = 0; i < l; i++) {
            if (func[i].name) {
                cc = window[func[i].name](document.getElementById("textareaCode").value);
                if (!cc) {
                    errs.push(func[i].errname);
                }
            }
        }
    }
    for (i = 0; i < errs.length; i++) {
        document.getElementById("codeCheckWarning").style.display = "block";    
        document.getElementById("codeCheckWarningText").innerHTML += errs[i] + "<br>";
    }
    if (errs.length == 0) {
        if (jsonObj.alsorequired) {
            checkCode(jsonObj.alsorequired);
        } else {
            answers[exActiveNo].splice((exNo-1), 1, 1);
            setAnswerObj("w3exerciseanswers_" + storageBlip + exnames[exActiveNo], answers[exActiveNo].toString(), false);
            score_arr = checkCompletedExercises();
            document.getElementById("codeCheckCorrect").style.display = "block";
        }
    }
    function checkTag(elmnt, parent, collectiontype) {
        var tag, tagname, method, container, a, b, func, tag, attr, tagsinresult, cc, i, ii, iii, l, ll, lll, regexp, errortxt, errorintxt;
        tag = elmnt;
        container = parent;   
        l = (tag ? tag.length : 0);        
        for (i = 0; i < l; i++) {
            if (tag[i].name) {
                tagname = tag[i].name;
                if (tagname.substr(0,1) == "*") {
                    method = "ALL";
                    tagname = tagname.substr(1);
                }
                tagsinresult = getElements(tagname, container, collectiontype);
                ll = (tagsinresult ? tagsinresult.length : 0);
                if (ll == 0) {
                    errs.push(tag[i].errname);
                    continue;
                }
                if (tag[i].count) {
                    if (ll < tag[i].count) {
                        errs.push(tag[i].errname);
                        continue;
                    }
                }
                errortxt = (tag[i].errvalue ? tag[i].errvalue : "");
                errorintxt = (tag[i].errinvalue ? tag[i].errinvalue : "");
                for (ii = 0; ii < ll; ii++) {
                    if (method == "ALL") {
                        errortxt = (tag[i].errvalue ? tag[i].errvalue : "");
                        errorintxt = (tag[i].errinvalue ? tag[i].errinvalue : "");                        
                    }
                    if (tag[i].value) {
                        if (compare("TAG", tagsinresult[ii], tagname, tag[i].value, tagsinresult[ii].innerHTML)) {
                            errortxt = "";
                        }
                    }
                    if (tag[i].invalue) {
                        if (compare("TAG", tagsinresult[ii], tagname, tag[i].invalue, tagsinresult[ii].innerHTML, "IN")) {
                            errorintxt = "";
                        }
                    }
                    checkTag(tag[i].tags, tagsinresult[ii]);
                    if (method == "ALL") {
                        if (errortxt != "") {
                            errs.push(errortxt);
                            errortxt = "";
                        }
                        if (errorintxt != "") {
                            errs.push(errorintxt);
                            errorintxt = "";
                        }
                    } else {
                        if (errortxt == "" && errorintxt == "") {break;}
                    }
                }
                if (errortxt != "") {errs.push(errortxt); }
                if (errorintxt != "") {errs.push(errorintxt); }                
                attr = tag[i].attr;
                lll = (attr ? attr.length : 0);
                for (iii = 0; iii < lll; iii++) {
                    errortxt = attr[iii].errname;
                    for (ii = 0; ii < ll; ii++) {
                        if (method == "ALL") {
                            errortxt = attr[iii].errname;
                        }
                        if (tagsinresult[ii].hasAttribute(attr[iii].name)) {
                            errortxt = "";
                        }
                        if (method == "ALL") {
                            if (errortxt != "") {
                                errs.push(errortxt);
                                errortxt = "";
                            }
                        } else {
                            if (errortxt == "") {break;}
                        }
                    }
                    if (errortxt != "") {errs.push(errortxt);}
                    if (attr[iii].value) {
                        errortxt = attr[iii].errvalue;
                        for (ii = 0; ii < ll; ii++) {
                            if (method == "ALL") {
                                errortxt = attr[iii].errvalue;
                            }
                            if (tagsinresult[ii].hasAttribute(attr[iii].name)) {
                                if (compare("TAG", tagsinresult[ii], attr[iii].name, attr[iii].value, tagsinresult[ii].getAttribute(attr[iii].name))) {
                                    errortxt = "";
                                }
                            }
                            if (method == "ALL") {
                                if (errortxt != "") {
                                    errs.push(errortxt);
                                    errortxt = "";
                                }
                            } else {
                                if (errortxt == "") {break;}
                            }
                        }
                       if (errortxt != "") {errs.push(errortxt); }
                    }
                    if (attr[iii].invalue) {
                        errortxt = attr[iii].errinvalue;
                        for (ii = 0; ii < ll; ii++) {
                            if (method == "ALL") {
                                errortxt = attr[iii].errinvalue;
                            }
                            if (tagsinresult[ii].hasAttribute(attr[iii].name)) {
                                if (compare("TAG", tagsinresult[ii], attr[iii].name, attr[iii].invalue, tagsinresult[ii].getAttribute(attr[iii].name), "IN")) {
                                    errortxt = "";
                                }
                            }
                            if (method == "ALL") {
                                if (errortxt != "") {
                                    errs.push(errortxt);
                                    errortxt = "";
                                }
                            } else {
                                if (errortxt == "") {break;}
                            }
                        }
                        if (errortxt != "") {errs.push(errortxt); }
                    }
                }
                css = tag[i].css;
                lll = (css ? css.length : 0);
                for (iii = 0; iii < lll; iii++) {
                    for (ii = 0; ii < ll; ii++) {
                        errortxt = "No " + css[iii].style + " property present for the " + tagsinresult[ii].tagName + " element";
                     // if (css[iii].style == "margin" && css[iii].value == "auto") {
                     //     if (w3_getStyleValue(tagsinresult[ii], "margin-left").replace("px", "") > 0 && (w3_getStyleValue(tagsinresult[ii], "margin-left") == w3_getStyleValue(tagsinresult[ii], "margin-right"))) {
                     //         errortxt = "";
                     //     }
                     // }
                        style = w3_getStyleValue(tagsinresult[ii], css[iii].style);
                        if (style) {
                            errortxt = ""
                        }
                        if (method == "ALL") {
                            if (errortxt != "") {
                                errs.push(errortxt);
                                errortxt = "";
                            }
                        } else {
                            if (errortxt == "") {break;}
                        }
                    }
                    if (errortxt != "") {errs.push(errortxt); }                    
                    if (css[iii].value) {
                        errortxt = (css[iii].errvalue ? css[iii].errvalue : "");
                        for (ii = 0; ii < ll; ii++) {
                            if (method == "ALL") {
                                errortxt = (css[iii].errvalue ? css[iii].errvalue : "");
                            }
                            style = w3_getStyleValue(tagsinresult[ii], css[iii].style);
                            if (compare("STYLE", tagsinresult[ii], css[iii].style, css[iii].value, style)) {
                                errortxt = "";  
                  
                            }
                            if (method == "ALL") {
                                if (errortxt != "") {
                                    errs.push(errortxt);
                                    errortxt = "";
                                }
                            } else {
                                if (errortxt == "") {break;}
                            }
                        }
                        if (errortxt != "") {errs.push(errortxt); }                    
                    } 

                    if (css[iii].invalue) {
                        errortxt = (css[iii].errinvalue ? css[iii].errinvalue : "");
                        for (ii = 0; ii < ll; ii++) {
                            if (method == "ALL") {
                                errortxt = (css[iii].errinvalue ? css[iii].errinvalue : "");
                            }
                            style = w3_getStyleValue(tagsinresult[ii], css[iii].style);
                            if (compare("STYLE", tagsinresult[ii], css[iii].style, css[iii].invalue, style, "IN")) {
                                errortxt = "";                    
                            }
                            if (method == "ALL") {
                                if (errortxt != "") {
                                    errs.push(errortxt);
                                    errortxt = "";
                                }
                            } else {
                                if (errortxt == "") {break;}
                            }
                        }
                        if (errortxt != "") {errs.push(errortxt); }                    
                    } 
                }
            }
            if (tag[i].order) {
                if (checkOrder(tag[i].order, container) == -1) {
                    errs.push(tag[i].errorder);
                }
            }
        }
    }
    function checkStyle(elmnt, parent) {
        var tag, a, b, container, stylesheets, ruls, rules = [], i, ii, iii, iiii, l, ll, lll, llll, j, jj, errortxt, errstyletxt, errvaluetxt, cc, ccArr = [], ccArr2 = [], nn;
        tag = elmnt;
        container = parent;   
        l = (tag ? tag.length : 0);
        for (i = 0; i < l; i++) {
            stylesheets = container.styleSheets;
            ll = stylesheets.length;
            if (tag[i].selector) {
                errortxt = (tag[i].errselector ? tag[i].errselector : "");
                errstyletxt = "";
                errvaluetxt = "";
                errinvaluetxt = "";                
                for (ii = 0; ii < ll; ii++) {
                    ruls = stylesheets[ii].cssRules;
                    for (iii = 0; iii < ruls.length; iii++) {
                        rules.push(ruls[iii])
                    }
                    for (iii = 0; iii < rules.length; iii++) {
                        if ((rules[iii].type == 1 && rules[iii].selectorText.indexOf(tag[i].selector.toLowerCase()) > -1)
                         || (rules[iii].type == 5 && tag[i].selector.toLowerCase() == "@font-face")
                         || (rules[iii].type == 7 && tag[i].selector.toLowerCase() == "@keyframes")
                         || (rules[iii].type == 8 && tag[i].selector.toLowerCase() == rules[iii].keyText)) {
                            errortxt = "";
                            if (rules[iii].type == 7) {
                                for (iiii = 0; iiii < rules[iii].cssRules.length; iiii++) {
                                    rules.push(rules[iii].cssRules[iiii]);
                                }
                                continue;
                            }
                            styles = rules[iii].style;
                            llll = styles.length;
                            errstyletxt = (tag[i].errstyle ? tag[i].errstyle : "");                
                            for (iiii = 0; iiii < llll; iiii++) {
                                ss = styles[iiii];
                                //console.log(tag[i].style + " ### " + ss);
                                if (ss == "text-decoration-color" || ss == "text-decoration-line" || ss == "moz-text-decoration-color" || ss == "moz-text-decoration-line" || ss == "moz-text-blink") {
                                    continue;
                                }
                                if (ss == "text-decoration-style" || ss == "moz-text-decoration-style") {ss = "text-decoration"; }
                                if (compare("", "", "", tag[i].style, ss)) {
                                    errstyletxt = "";
                                    errvaluetxt = (tag[i].errvalue ? tag[i].errvalue : "");
                                    errinvaluetxt = (tag[i].errinvalue ? tag[i].errinvalue : "");                                    
                                    /*
                                    cc = styles.cssText
                                    console.log(tag[i].style + " " + cc)                                    
                                    cc = cc.substr(cc.indexOf(ss),cc.indexOf(";", cc.indexOf(ss)));
                                    cc = cc.replace(ss + ": ","");
                                    cc = cc.replace(ss + ":","");
                                    if (cc.indexOf(";") == (cc.length - 1)) {cc = cc.substr(0,(cc.length - 1)); }
                                    */
                                    ccArr = styles.cssText.split(";");
                                    for (j = 0; j < ccArr.length; j++) {
                                        a = w3_trim(ccArr[j].substr(0, ccArr[j].indexOf(":")))
                                        b = w3_trim(ccArr[j].substr(ccArr[j].indexOf(":") + 1))
                                        //console.log(a + " ### " + b);
                                        if (tag[i].style == a) {                                        
                                            cc = b;
                                            break;
                                        }
                                        if (tag[i].style.substr(0, 11) == "background-" && a == "background") {
                                            ccArr = b.split(" ");
                                            cc = ccArr[0];
                                            break;
                                        }
                                        //ccArr2 = ccArr[j].split(":");
                                        //for (jj = 0; jj < ccArr2.length; jj++) {
                                        //    if (tag[i].style == w3_trim(ccArr2[0])
                                        //     || (tag[i].style.substr(0, 11) == "background-" && w3_trim(ccArr2[0]) == "background")) {
                                        //        cc = w3_trim(ccArr2[1]);
                                        //    }
                                        //}
                                    }
                                    if (tag[i].value) {
                                        if (compare("", "", styles[iiii], tag[i].value, cc)) {
                                            errvaluetxt = "";
                                            break
                                        }
                                    }
                                    if (tag[i].invalue) {
                                        if (compare("", "", styles[iiii], tag[i].invalue, cc, "IN")) {
                                            errinvaluetxt = "";
                                            break
                                        }
                                    }
                                }
                            }
                            if (errstyletxt != "") {errortxt = errstyletxt; }
                            if (errvaluetxt != "") {errortxt = errvaluetxt; }
                            if (errinvaluetxt != "") {errortxt = errinvaluetxt; }                            
                        }
                    }
                    if (errortxt == "") {break;}
                }
            }
            if (errortxt != "") {errs.push(errortxt); }
        }
    }
    function getElements(elements, obj, collectiontype) {
        var tagNames, resultArray = [], i, tags, j;
        if (!obj) var obj = document;
        tagNames = elements.split('|');
        for (i = 0; i < tagNames.length; i++) {
            if (collectiontype == "classname") {
                tags = obj.getElementsByClassName(tagNames[i]);
            } else if (collectiontype == "queryselector") {
                tags = obj.querySelectorAll(tagNames[i]);
            } else {
                tags = obj.getElementsByTagName(tagNames[i]);
            }
            for (j = 0; j < tags.length; j++) {
                resultArray.push(tags[j]);
            }
        }
        return resultArray;
    }
    function checkOrder(elements, obj) {
        var stat = "OK", tagNames, tags, j, i, x;
        if (!obj) var obj = document;
        tagNames = elements.split(',');
        for (i = 0; i < tagNames.length - 1; i++) {
            try {
                x = obj.getElementsByTagName(tagNames[i])[0].compareDocumentPosition(obj.getElementsByTagName(tagNames[i+1])[0]);
            } catch (er) {
                stat = -1;
                break;
            }
            if (x != 4) {
                stat = -1;
                break;
            }
        }
        return stat;
    }
    function compare(a, tag, prop, xx, y, typ) {
        var comp, oper, valueARR = [], i, x, hit, margin = 0;
        valueARR = xx.split("|");
        hit = false;
        for (i = 0; i < valueARR.length; i++) {
            x = valueARR[i];
            comp = "LIKE";
            if (x.substr(0,1) == "!") {
                comp = "NOT LIKE";
                x = x.substr(1);
            }
            oper = "=";
            if (x.substr(0,2) == "<=") {
                oper = "<=";
                x = x.substr(2);
            }
            if (x.substr(0,1) == "<") {
                oper = "<";
                x = x.substr(1);
            }
            if (x.substr(0,2) == ">=") {
                oper = ">=";
                x = x.substr(2);
            }
            if (x.substr(0,1) == ">") {
                oper = ">";
                x = x.substr(1);
            }
            if (prop.indexOf("color") > -1 ) {
                x = convert_cssColor(x);
                y = convert_cssColor(y);
            }
            if (prop.indexOf("font-size") > -1 ) {
                x = convert_cssFontSize(x);
                y = convert_cssFontSize(y);
            }
            if (prop.indexOf("background") > -1 && x.indexOf("linear-gradient") > -1 ) {
                x = convert_cssGradient(tag, x);
                y = convert_cssGradient(tag, y);
            }
            if (prop.indexOf("background") > -1 && x.indexOf("radial-gradient") > -1 ) {
                x = convert_cssGradient(tag, x);
                y = convert_cssGradient(tag, y);
            }
            if (prop == "transform") {
                x = convert_cssTransform(tag, x);
                y = convert_cssTransform(tag, y);
            }
            if (prop.indexOf("transition-timing-function") > -1) {
                x = convert_cssTransitionTiming(tag, x);
                y = convert_cssTransitionTiming(tag, y);
            }
            if (prop.indexOf("animation-timing-function") > -1) {
                x = convert_cssAnimationTiming(tag, x);
                y = convert_cssAnimationTiming(tag, y);
            }
            if (prop.indexOf("text-shadow") > -1) {
                x = convert_cssTextShadow(tag, x);
                y = convert_cssTextShadow(tag, y);
            }
            if (prop.indexOf("box-shadow") > -1) {
                x = convert_cssBoxShadow(tag, x);
                y = convert_cssBoxShadow(tag, y);
            }
            if (prop.indexOf("opacity") > -1 ) {
                x = Number(x).toFixed(2);
                y = Number(y).toFixed(2);                
            }
            if (a == "STYLE" && prop == "font-weight") {
                x = convert_cssFontWeight(tag, x);
                y = convert_cssFontWeight(tag, y);
            }
            if (a == "STYLE" && prop == "width" && tag.tagName != "IMG") {
                feilmargin = 0;
                x = convert_cssSize(tag, x, prop);
                y = convert_cssSize(tag, y, prop);
                margin = 2 + feilmargin;
            }
            if ((prop == "border-top-width"
                || prop == "border-right-width"
                || prop == "border-bottom-width"
                || prop == "border-left-width"
                || prop == "outline-width"
                || prop == "width"
                || prop == "height") && y.substr(y.length - 2, 2) == "px") {
                y = y.replace("px", "");
                if (Number(y)) {
                    y = Math.ceil(y);
                }
                y = y + "px";
            }
            if (blueprint == "OK") {
                bptxt += "<p>" + a + ": " + tag + "<br>Test for " + prop + "<br>Your code: " + y + "<br>Correct code: " + x + "</p>";
                document.getElementById("blueprint").innerHTML = bptxt;
            }
            if (typ == "IN") {
                if (y.toLowerCase().indexOf(x.toLowerCase()) > -1) {
                    if (comp == "NOT LIKE") {
                        return false;
                    } else {
                        return true;
                    }
                } else {
                    if (comp == "NOT LIKE") {
                        hit = true;
                    } else {
                        hit = false;
                    }
                }
            } else {
                if (margin != 0) {
                    if (Number(y.replace("px","")) < (Number(x.replace("px","")) + margin) && Number(y.replace("px","")) > ((Number(x.replace("px","")) - margin))) {
                        if (comp == "NOT LIKE") {
                            return false;
                        } else {
                            return true;
                        }
                    } else {
                        if (comp == "NOT LIKE") {
                            hit = true;
                        } else {
                            hit = false;
                        }
                    }
                } else {
                if (oper == "=") {
                    if (y.toLowerCase() == x.toLowerCase()) {
                        if (comp == "NOT LIKE") {
                            return false;
                        } else {
                            return true;
                        }
                    } else {
                        if (comp == "NOT LIKE") {
                            hit = true;
                        } else {
                            hit = false;
                        }
                    }
                }
                if (oper == "<") {
                    if (y < x) {
                        if (comp == "NOT LIKE") {
                            return false;
                        } else {
                            return true;
                        }
                    } else {
                        if (comp == "NOT LIKE") {
                            hit = true;
                        } else {
                            hit = false;
                        }
                    }
                }
                if (oper == "<=") {
                    if (y <= x) {
                        if (comp == "NOT LIKE") {
                            return false;
                        } else {
                            return true;
                        }
                    } else {
                        if (comp == "NOT LIKE") {
                            hit = true;
                        } else {
                            hit = false;
                        }
                    }
                }
                if (oper == ">") {
                    if (y > x) {
                        if (comp == "NOT LIKE") {
                            return false;
                        } else {
                            return true;
                        }
                    } else {
                        if (comp == "NOT LIKE") {
                            hit = true;
                        } else {
                            hit = false;
                        }
                    }
                }
                if (oper == ">=") {
                    if (y >= x) {
                        if (comp == "NOT LIKE") {
                            return false;
                        } else {
                            return true;
                        }
                    } else {
                        if (comp == "NOT LIKE") {
                            hit = true;
                        } else {
                            hit = false;
                        }
                    }
                }                
                }
            }
        }
        return hit;
    }
    function convert_cssColor(color) {
        var doc = document.createElement('div');
        doc.style.backgroundColor = color;
        document.body.appendChild(doc);
        return w3_getStyleValue(doc, "background-color");
    }
    function convert_cssFontSize(size) {
        var doc = document.createElement('div');
        doc.style.fontSize = size;
        document.getElementById("iframeResult").contentWindow.document.body.appendChild(doc);
        return w3_getStyleValue(doc, "font-size");
    }
    /*function convert_cssSize(tag, size, p) {
        var rv, doc = document.createElement(tag.tagName);
        if (p == "width") {doc.style.width = size; }
        if (p == "height") {doc.style.height = size; }        
        tag.parentNode.insertBefore(doc, tag);        
        rv = w3_getStyleValue(doc, p);
        tag.parentNode.removeChild(doc);
        return rv
    }*/
    function convert_cssSize(tag, size, p) {
        var rv, doc = document.createElement(tag.tagName);
        //doc = tag.cloneNode(true);
        if (p == "width") {
            feilmargin += calc_feilmargin(tag, "border-left-width");
            feilmargin += calc_feilmargin(tag, "border-right-width");
            feilmargin += calc_feilmargin(tag, "padding-left");
            feilmargin += calc_feilmargin(tag, "padding-right");                                    
            doc.style.width = size;
        }
        if (p == "height") {
            feilmargin += calc_feilmargin(tag, "border-top-width");
            feilmargin += calc_feilmargin(tag, "border-bottom-width");
            feilmargin += calc_feilmargin(tag, "padding-top");
            feilmargin += calc_feilmargin(tag, "padding-bottom");                                    
            doc.style.height = size;
        }
        tag.parentNode.insertBefore(doc, tag);        
        rv = w3_getStyleValue(doc, p);
        tag.parentNode.removeChild(doc);
        return rv
    }
    function convert_cssGradient(tag, size, p) {
        var rv, doc = document.createElement(tag.tagName);
        doc.style.backgroundImage = size;
        tag.parentNode.insertBefore(doc, tag);        
        rv = w3_getStyleValue(doc, "background-image");
        tag.parentNode.removeChild(doc);
        return rv
    }
    function convert_cssTransform(tag, size, p) {
        var rv, doc = document.createElement(tag.tagName);
        doc.style.transform = size;
        tag.parentNode.insertBefore(doc, tag);        
        rv = w3_getStyleValue(doc, "transform");
        tag.parentNode.removeChild(doc);
        return rv
    }
    function convert_cssTransitionTiming(tag, size, p) {
        var rv, doc = document.createElement(tag.tagName);
        doc.style.transitionTimingFunction = size;
        tag.parentNode.insertBefore(doc, tag);        
        rv = w3_getStyleValue(doc, "transition-timing-function");
        tag.parentNode.removeChild(doc);
        return rv
    }
    function convert_cssAnimationTiming(tag, size, p) {
        var rv, doc = document.createElement(tag.tagName);
        doc.style.animationTimingFunction = size;
        tag.parentNode.insertBefore(doc, tag);        
        rv = w3_getStyleValue(doc, "animation-timing-function");
        tag.parentNode.removeChild(doc);
        return rv
    }
    function convert_cssTextShadow(tag, size, p) {
        var rv, doc = document.createElement(tag.tagName);
        doc.style.textShadow = size;
        tag.parentNode.insertBefore(doc, tag);
        rv = w3_getStyleValue(doc, "text-shadow");
        tag.parentNode.removeChild(doc);
        return rv
    }
    function convert_cssBoxShadow(tag, size, p) {
        var rv, doc = document.createElement(tag.tagName);
        doc.style.boxShadow = size;
        tag.parentNode.insertBefore(doc, tag);
        rv = w3_getStyleValue(doc, "box-shadow");
        tag.parentNode.removeChild(doc);
        return rv
    }
    function convert_cssFontWeight(tag, size, p) {
        var rv, doc = document.createElement(tag.tagName);
        doc.style.fontWeight = size;
        tag.parentNode.insertBefore(doc, tag);
        rv = w3_getStyleValue(doc, "font-weight");
        tag.parentNode.removeChild(doc);
        return rv
    }
    function calc_feilmargin(tag, cssprop) {
        var cssvalue = w3_getStyleValue(tag, cssprop);
        cssvalue = cssvalue.replace("px", "");
        return (Number(cssvalue) || 0);
    }
}
function w3_getStyleValue(elmnt,style) {
    if (window.getComputedStyle) {
        return window.getComputedStyle(elmnt,null).getPropertyValue(style);
    } else {
        return elmnt.currentStyle[style];
    }
}
function w3_trim(x) {
    return x.replace(/^\s+|\s+$/gm,'') 
}
var validHTML = function (html) {
    var doc = document.createElement('html');
    if (html.toLowerCase().indexOf("<head>") == -1) {
        html = "<head></head>" + html;
    }
    html = html.replace("<!DOCTYPE html>","");
    html = html.replace("<html>","");
    html = html.replace("</html>","");
    html = html.trim();
    doc.innerHTML = html;
    return ( doc.innerHTML.toLowerCase() === html.toLowerCase() );
}
function codeCheckWarningClose() {
    document.getElementById("codeCheckWarning").style.display = "none";
}
function codeCheckCorrectClose() {
    document.getElementById("codeCheckCorrect").style.display = "none";
}
</script>
<style>
.hintBtn {
    border:none;
    background-color:#f0ad4e;
    padding:5px 10px;
    color:#ffffff;
    font-size:16px;
    border-radius:4px;
    margin-bottom:12px;
    cursor:pointer;
    position:absolute;
}
.hintBtn:hover {
    background-color:#ec971f;
}
#hint {
	visibility:hidden;
}
#codeCheckWarning {
	display:none;
	position: absolute;
	z-index:1;
	right: 25px;
	top: 120px;
	color: #b94a48;
	xxxtext-shadow: 0 1px 0 rgba(255, 255, 255, 0.5);
	background-color: #f2dede;
  background-color: #F3ECEA;
  border-radius:5px;
	xxxborder: 1px solid #eed3d7;
}
#closeCodeCheckWarning, #closeCodeCheckCorrect {
    float:right;
    padding: 5px 10px 0 0;
    color: inherit;
    cursor: pointer;
    font-size:20px;
}
.checkText {
	padding:20px 30px;
}

#codeCheckCorrect {
	display:none;
	position: absolute;
	right: 25px;
	top: 120px;
	color: #04AA6D;
	background-color: #dff0d8;
  background-color: #D9EEE1;
  border-radius:5px;
	xxborder: 1px solid #d6e9c6;
}
#iframeResult,#iframeResult2 {
    height:100%;
    width:100%;
    border:none;
    background-color:#ffffff;
}
.codecontainer textarea {
    font:15px consolas,Menlo,"courier new",monospace;
    padding:5px;
}
.codecontainer {
    height:99%;
    width:100%;
    position:relative;
    
    float:left;
    height:450px;    
}
.codecontainerinner {
    position:absolute;
    top:0;
    height:auto;
    width:100%;
    
    height:400px;
}
.resultcontainer {
    height:99%;
    width:100%;
    position:relative;
    
    float:left;
    height:450px;
}
.resultcontainerinner {
    position:absolute;
    top:0;
    height:auto;
    width:100%;
    
    height:400px;
}
#iframewrapper, #iframewrapper2 {
    height:95%;
    width:100%;
    border:1px solid #d3d3d3;
    background-color:#ffffff;
}
#topTD,#topTD2 {
    xxbackground-color:#ffffff;
    padding:20px;
    vertical-align:top;
}
#codeTD,#codeTD2 {
    height:100%;
    padding:20px 20px 20px 20px;
    vertical-align:top;
}
.exercisemenu {
    font-family:"Segoe UI",Arial,sans-serif;
    float:left;
    z-index:2;
    color:#ffffff;
    color:#000;
    height:auto;
    width:auto;
    display:none;
    background-color:#888888;
    background-color:#E7E9EB;
    position:fixed;
    box-shadow: 0 2px 5px 0 rgb(0 0 0 / 16%), 0 2px 10px 0 rgb(0 0 0 / 12%);
}
.exercisemenuinner {
    background-color:#555555;
    background-color:#282A35;
    background-color:#38444d;
    position:fixed;
    height:100%;
    height:auto;
    top:169px;
    top:99px;
    bottom:0;
    width:260px;
    overflow:hidden;
    padding:0 1px 50px 1px;
    -webkit-overflow-scrolling:touch;
        box-shadow: 0 2px 5px 0 rgb(0 0 0 / 16%), 0 2px 10px 0 rgb(0 0 0 / 12%);

}
body.darkpagetheme .exercisemenuinner {
    background-color:#38444d;
}

.exercisemenuinner:hover {
    overflow:auto;
}
.exercisemenuinner::-webkit-scrollbar {
    width: 12px;
}
.exercisemenuinner::-webkit-scrollbar-track {
    background:#555555; 
}
.exercisemenuinner::-webkit-scrollbar-thumb {
    background: #999999; 
}
#tryitLeaderboard {
    padding-left:30px;
    margin-left:30px;
}
#correctSection {
    display:none;
}
.w3s-exercisebtn {
    border: none;
    display: inline-block;
    outline: 0;
    padding: 8px 16px;
    vertical-align: middle;
    overflow: hidden;
    text-decoration: none!important;
    color: #fff;
    background-color: #04AA6D;
    border-radius:25px;
    text-align: center;
    cursor: pointer;
    white-space: nowrap;
    font-size:18px;
    font-family: "Source Sans Pro", sans-serif;
    min-width:180px;
}
.w3s-exercisebtn:hover, .w3s-exercisebtn:active {
  background-color: #059862 !important;
}
.menucontainer {
  width:260px;
  background-color:#fff;
  overflow:auto;
  padding:10px 5px;
}
body.darkpagetheme .menucontainer {
  background-color:rgb(21,32,43);
  color:#ddd;
}
@media screen and (min-width: 900px) {
    .codecontainer {
        width:49%;
        height:99%;    
    }
    .codecontainerinner {
        bottom:0;
        height:auto;
    }
    .resultcontainer {
        width:49%;
        height:99%;
        float:right;
    }
    .resultcontainerinner {
        bottom:0;
        height:auto;
    }
    #topTD,#topTD2 {
        padding-left:280px;
    }
    #codeTD,#codeTD2 {
        padding-left:280px;
    }
    .exercisemenu {
        height:100%;
        width:260px;        
        display:block;        
    }    
    #tryitLeaderboard {
       padding-left:0;
       margin-left:0;
    }
}
@media screen and (max-width: 899px) {
    #codeTD,#codeTD2 {
        padding:20px 20px 20px 20px !important;
    }    
    div.exercisemenu {
        display:none;
    }
    .w3s-exercisebtn {
      min-width:100px;
    }
}
#menubtn {
    font-size:21px;
    color:#555555;
    border:1px solid transparent;
    position:absolute;
    z-index:1;
    width:auto;  
    cursor:pointer;  
    padding:6px;
    left:10px;
}
#menubtn:hover {
    xbackground-color:#f1f1f1;
    xborder:1px solid #d3d3d3;
    color:#000;
}
.exercisemenu a.exbtn {
    display:block;
    text-decoration:none;
    padding:10px 0 10px 20px;
    background-color:#ffffff;
    color:#555555;
    font-size:16px;
}
body.darkpagetheme .exercisemenu a.exbtn {
    background-color:rgb(21,32,43);
    color:#eee;
}
.exercisemenu a.exbtn:hover {
    background-color:#f1f1f1;
}
body.darkpagetheme .exercisemenu a.exbtn:hover {
    background-color:#000;
}
div.exmenulinks a.active {
    background-color:#04AA6D !important;    
    color:#ffffff;
}
.exercisemenu a.exbtn i.fa-square-o {
    color: rgba(244, 67, 54, 0.8);
}
.exercisemenu a.exbtn i.fa-check {
    color:#04AA6D;
    visibility:hidden;
}
.exercisemenu a.exbtn i.fa-check.active {
    color:#ffffff;
    visibility:hidden;
}
.exercisemenuinner i.fa-check {
    visibility:hidden;
}
.menubtn {
    font-size:24px;
    color:#282A35;
    padding:1px 6px 2px 6px;
    width:auto;
    xposition:absolute;
    right:0;
    top:0;
    cursor:pointer;
}
body.darkpagetheme .menubtn {
    color:#ddd;
}
.menubtn:hover {
    color:#000000;
}
.tooltip {
    background-color:#000000;
    color:#ffffff;
    position:absolute;
    width:auto;
    padding:5px 10px;
    word-spacing:normal;
    font-size:14px;
    display:none;
    top:45px;
    z-index:10;
}
.exmenuitemheader {
    color:#dadada;
    padding:10px;
    padding-left:20px;
    cursor:pointer;
    font-size:18px;
    border-bottom:1px solid #4f4f4f;
    border-bottom:1px solid #000000;
    -webkit-user-select: none;
    -moz-user-select: none;
    -ms-user-select: none;
    user-select: none;
}
.exmenuitemheader:hover {
    color:#ffffff;
}
.exmenuitemheader.active {
    color:#ffffff;
}
.exmenulinks {
    height:0px;
    overflow:hidden;
    webkit-transition:all 0.3s ease;
    moz-transition:all 0.3s ease;
    o-transition:all 0.3s ease;
    transition:all 0.3s ease;    
}
.exmenulinks.active {
    height:auto;
}
.exdot {
    background-color:#dadada;
    margin-top:-10px;
    height:4px;
    overflow:hidden;
    position:absolute;
    left:1px;
    width:4px;
}
.exdot.success {
    background-color:#4CAF50;
}
#blueprint {
    font:12px consolas;
}
.CodeMirror.cm-s-default {
  line-height:normal;
  padding: 1px;
  height:95%;
  width:100%;
  border:1px solid #d3d3d3;
}

@media screen and (max-width: 468px) {
  #menubtn {
    top:80px;
  }    
}

</style>
<!--[if IE]>
<style>
#textareaCode, #iframeResult, #textareaCode2, #iframeResult2 {height:400px;}
td {vertical-align:top;}
</style>
<![endif]-->
<script>
var x, exNo, answers = [];
if (window.addEventListener) {              
    window.addEventListener("load", constructAnswerObj);
} else if (window.attachEvent) {                 
    window.attachEvent("onload", constructAnswerObj);
}

var answerObj = {};
var userLoggedOn = false;
var userscore = 0;
var numberofexercises = 0;
function constructAnswerObj() {


  userLoggedOn = MyLearning.userIsLoggedIn();

  if (!userLoggedOn) {
    getFromLocalStorage();
    w3LoadExercise();
    return false;
  }

  var xhttp = new XMLHttpRequest();
  xhttp.onreadystatechange = function() {
    var i, aa, l, retval;
    if (this.readyState == 4) {
      if (this.status == 200) {
        if (this.responseText == "NOTLOGGEDIN") {
          userLoggedOn = false;
          getFromLocalStorage();
        } else {
          userLoggedOn = true;
          retval = this.responseText;
          retval = JSON.parse(retval);
          if (retval["recordcount"] == 0) {
            //getFromLocalStorage();
            for (i = 0; i < exnames.length; i++) {
              numberofexercises += Number(excounts[i]);
              aa = "";
              l = excounts[i];
              for (j = 0; j < l; j++) {
                if (j > 0) {aa += ","; }
                aa += "0";
              }
              answerObj["w3exerciseanswers_" + storageBlip + exnames[i]] = aa;
            }
          } else {
            if (retval["exscore"]) userscore = retval["exscore"];
            for (i = 0; i < exnames.length; i++) {
              aa = "";
              numberofexercises += Number(excounts[i]);
              if (retval["w3exerciseanswers_" + storageBlip + exnames[i]]) {
                answerObj["w3exerciseanswers_" + storageBlip + exnames[i]] = retval["w3exerciseanswers_" + storageBlip + exnames[i]];
              } else {
                l = excounts[i];
                for (j = 0; j < l; j++) {
                  if (j > 0) {aa += ","; }
                  aa += "0";
                }
                answerObj["w3exerciseanswers_" + storageBlip + exnames[i]] = aa;
              }
            }
          }      
          drawUserProgress();  
        }
      }
      // else {
      //   userLoggedOn = false;
      //   getFromLocalStorage();
      // }

      w3LoadExercise();
    }
  };
  xhttp.open("POST.html", MyLearning.getUrl('api.exercise.get'), true);
//xhttp.open("POST", "https://mypage.w3schools.com/mypage/get_exercise_obj2.php", true);  
  xhttp.withCredentials = true;
  xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
  xhttp.send("t=" + storageBlip);
}

function getFromLocalStorage() {
  var i, aa, l;
  for (i = 0; i < exnames.length; i++) {
    aa = "";
    if (localStorage.getItem("w3exerciseanswers_" + storageBlip + exnames[i])) {
      answerObj["w3exerciseanswers_" + storageBlip + exnames[i]] = localStorage.getItem("w3exerciseanswers_" + storageBlip + exnames[i]);
    } else {
      l = excounts[i];
      for (j = 0; j < l; j++) {
        if (j > 0) {aa += ","; }
        aa += "0";
      }
      answerObj["w3exerciseanswers_" + storageBlip + exnames[i]] = aa;
    }
  }
}
function w3LoadExercise() {
    var hint, i, j, l, x, aa;
    hint = document.getElementById("hint");
    if (hint) {
        x = document.createElement("BUTTON");
        x.setAttribute("type", "button");
        x.setAttribute("class", "w3s-exercisebtn");    
        x.setAttribute("style", "position:absolute;min-width:80px;");            
        x.setAttribute("title", "Click to get a hint");
        x.setAttribute("onclick", "needHint(this)");            
        var t = document.createTextNode("Hint");
        x.appendChild(t);
        hint.parentNode.insertBefore(x, hint);
    }
    for (i = 0; i < exnames.length; i++) {
//      answers[i] = localStorage.getItem("w3exerciseanswers_" + storageBlip + exnames[i]).split(",");
        answers[i] = answerObj["w3exerciseanswers_" + storageBlip + exnames[i]].split(",");
        if (i == exActiveNo) {
            exNo = "exercise_strings7".replace("exercise_","");
            exNo = exNo.replace(exnames[i],"");
            exNo = Number(exNo);
        }
    }
    checkCompletedExercises(0);
    if (exNo) {
        document.getElementsByClassName("exmenulinks")[exActiveNo].getElementsByClassName("exbtn")[exNo-1].contentEditable = true;
        document.getElementsByClassName("exmenulinks")[exActiveNo].getElementsByClassName("exbtn")[exNo-1].focus();
        document.getElementsByClassName("exmenulinks")[exActiveNo].getElementsByClassName("exbtn")[exNo-1].blur();        
        document.getElementsByClassName("exmenulinks")[exActiveNo].getElementsByClassName("exbtn")[exNo-1].contentEditable = false;    
        if (document.getElementsByClassName("editablesection")[0]) document.getElementsByClassName("editablesection")[0].focus();
    }
    if ('ontouchstart' in window || 'onmsgesturechange' in window) {
        document.getElementsByClassName("exercisemenuinner")[0].style.overflowY = "scroll";
    }
    
}
function checkCompletedExercises(n) {
    var i, j, l, cc = 0, dd = 0, rr = 0, q = 0, rightAnswers, totRightAnswers = 0;
    for (i = 0; i < exnames.length; i++) {
        dd = 1;
        rightAnswers = 0;
        l = excounts[i];
        for (var j = 0; j < l; j++) {
            q++;
            if (answers[i][j] == 1) {
                totRightAnswers++;
                rightAnswers++;
                rr++;
//                document.getElementsByClassName("exdot")[cc].style.backgroundColor = "#73ad21";                
//                document.getElementsByClassName("exmenulinks")[i].getElementsByTagName("a")[j].getElementsByClassName("fa-check")[0].style.display = "none";
                document.getElementsByClassName("exmenulinks")[i].getElementsByTagName("a")[j].getElementsByClassName("fa-check")[0].style.visibility = "visible";
            } else {
                dd = 0;
//                document.getElementsByClassName("exdot")[cc].style.backgroundColor = "#dadada";                        
//                document.getElementsByClassName("exmenulinks")[i].getElementsByTagName("a")[j].getElementsByClassName("fa-check")[0].style.display = "inline";
                document.getElementsByClassName("exmenulinks")[i].getElementsByTagName("a")[j].getElementsByClassName("fa-check")[0].style.visibility = "hidden";
            }
            cc++;        
        }
        if (dd == 1) {
            document.getElementsByClassName("exmenuitemheader")[i].getElementsByClassName("fa-check")[0].style.visibility = "visible";
        }
    }
    document.getElementById("completedExercisesNo").innerHTML = "Completed " + rr + " of " + q + " Exercises:";
    if (n != 0 && totRightAnswers == q) {
        document.getElementById('id02').style.display = 'block';    
    }
    if (userLoggedOn) {
      userAddOnePoint(rr);
    }
    return [rr, q];
}
function resetScore() {
    document.getElementById('id01').style.display = 'none';
    var i, aa;
    for (i = 0; i < exnames.length; i++) {
        aa = "";
        for (j = 0; j < excounts[i]; j++) {
            if (j > 0) {aa += ","; }
            aa += "0";
        }
        if (userLoggedOn == false) {
          localStorage.setItem("w3exerciseanswers_" + storageBlip + exnames[i], aa);
        }
        answerObj["w3exerciseanswers_" + storageBlip + exnames[i]] = aa;
        answers[i] = answerObj["w3exerciseanswers_" + storageBlip + exnames[i]].split(",");    
    }
    if (userLoggedOn == false) {
      checkCompletedExercises(0);
    } else {
      setAnswerObj("w3exerciseanswers_" + storageBlip, "", true);
      document.getElementById("mypage_circle1").setAttribute("d", describeArc(26, 35, 24, 0, 359.99));
      document.getElementById("mypage_circle2").setAttribute("d", describeArc(26, 35, 24, 0, 0));
    }
}
function modalReset() {
    document.getElementById('id01').style.display = 'block';
}

function needHint(x) {
    x.style.display = "none";
    document.getElementById("hint").style.visibility = "visible";
}
function userAddOnePoint(n) {
  var x;
  if (n > userscore) {
    document.getElementById("pluspointcontainer").style.display = "inline-block";
    x = Math.round((n/numberofexercises) * 100);
    degrees = x * 3.6;
    if (degrees > 359) degrees = 359.99;
    document.getElementById("mypage_circle1").setAttribute("d", describeArc(26, 35, 24, 0, 359.99));
    document.getElementById("mypage_circle2").setAttribute("d", describeArc(26, 35, 24, 0, degrees));
  }
}

</script>

    <meta property="og:url"           content="https://www.w3schools.com/PYTHON/exercise.asp" />
    <meta property="og:type"          content="website" />
    <meta property="og:title"         content="W3Schools PYTHON Exercise" />
    <meta property="og:description"   content="I completed all the PYTHON exercises on w3schools.com" />
    <meta property="og:image" content="https://www.w3schools.com/images/w3schools_logo_436_2.png">
    <meta property="og:image:type" content="image/png">
    <meta property="og:image:width" content="436">
    <meta property="og:image:height" content="228">
</head>
<body class="w3-white">
    <!-- Load Facebook SDK for JavaScript -->
<div id="fb-root"></div>
<script>(function(d, s, id) {
  var js, fjs = d.getElementsByTagName(s)[0];
  if (d.getElementById(id)) return;
  js = d.createElement(s); js.id = id;
  js.src = "../../connect.facebook.net/nb_NO/sdk.js#xfbml=1&version=v2.5";
  fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));</script>
<table style="width:100%;height:100%;position:absolute;overflow:auto;min-height:650px;">
<tr>
<td id="topTD">
  <div id="menubtn"  class="fa fa-menu" onclick="open_menu()" onmouseover="showtooltip(0)" onmouseout="hidetooltip(0)" ontouchstart="open_menu();return false;"></div>
  <div class="tooltip" style="top:65px;">Menu</div>
  <div style="height:90px;">
  <div style="position:absolute;">
<div id='tryitLeaderboard' style="height:90px;text-align:center;background-color:#ffffff">
<!-- TryitLeaderboard -->

  <!--<pre>try_it_leaderboard, all: [320,50][728,90][468,60]</pre>-->
  <div id="adngin-try_it_leaderboard-0"></div>
  <!-- adspace tryit-->
 
</div>
  </div>
  </div>
  <div>
    <div id="codeCheckWarning">
      <div id="closeCodeCheckWarning" onclick="codeCheckWarningClose()">&times;</div>
      <div id="codeCheckWarningText" class="checkText"></div>
    </div>
    <div id="codeCheckCorrect">
      <div id="closeCodeCheckCorrect" onclick="codeCheckCorrectClose()">&times;</div>
      <div class="checkText">Correct!</div>
    </div>
    <h1>Exercise:</h1>
    <div id="assignmenttext" style='display:none'>
      <p>Replace the character <code class="w3-codespan">H</code> with a <code class="w3-codespan">J</code>.</p>

<div id="assignmentcode">
txt = "Hello World"
txt = txt.@(7)(@(3), @(3))
</div>

<div id="correctcode">
txt = "Hello World"
txt = txt.replace("H", "J")
</div>

<div id="correctcode2">
txt = "Hello World"
txt = txt.replace('H', 'J')
</div>

<div id="correctcode3">
txt = "Hello World"
txt = txt.replace("H", 'J')
</div>

<div id="correctcode4">
txt = "Hello World"
txt = txt.replace('H', "J")
</div>

    </div>
    <div id="blueprint"></div>




<div style="position:relative;width:100%;" class="notranslate">
  <div id="assignmentNotCorrect" onclick="closeNotCorrect(event)">
    <h2>Not Correct</h2>
    <p>Click <u>here</u> to try again.</p>   
  </div>
  <div id="assignmentCorrect" onclick="nextexercise()">
    <h2>Correct!</h2>
    <span style="cursor:pointer" id="correctnextbtn">Next &#10095;</span>
  </div>
  
  <pre id="assignmentcontainer" style="overflow:auto"></pre>
  <pre id="showcorrectanswercontainer" style="overflow:auto"></pre>
  
  <button class="w3s-exercisebtn showanswerbutton hide-from-small" type="button" onclick="showanswer();uic_r_p();">Show Answer</button>
  <button class="w3s-exercisebtn hideanswerbutton hide-from-small" style="display:none;" type="button" onclick="hideanswer();uic_r_p();">Hide Answer</button>
</div>

<br>
<div id="answerbuttoncontainer">
<button id="answerbutton" class="w3s-exercisebtn" style="xpadding:20px;" type="button" onclick="checkassignmentcode();ga('send', 'event', 'checkExercise', 'click');uic_r_p();">Submit Answer &#10095;</button>
  <button class="w3s-exercisebtn showanswerbutton hide-from-large" type="button" onclick="showanswer();ga('send', 'event', 'showAnswerExercise', 'click');uic_r_p();">Show Answer</button>
  <button class="w3s-exercisebtn hideanswerbutton hide-from-large" style="display:none;" type="button" onclick="hideanswer();ga('send', 'event', 'hideAnswerExercise', 'click');uic_r_p();">Hide Answer</button>
</div>

<br>
<br>
<br>

<style>
#assignmentNotCorrect, #assignmentCorrect {
  display:none;
  width:100%;
  height:100%;
  position:absolute;
  background-color:rgba(242, 222, 222, 0.99);
  background-color:#FFC0C7;
  padding:50px;
	z-index:1;
	color: #b94a48;
  cursor:pointer;
  border-radius:5px;
}

#assignmentCorrect {
  color: #04AA6D;
  background-color: #D9EEE1;
}

#assignmentcontainer, #showcorrectanswercontainer {
  background-color:#E7E9EB;
  padding:30px;
  padding-top:0;
  padding-bottom:90px;
  min-height:250px;
  font-family:Consolas,Menlo,"Courier New", Courier, monospace;
  font-size:120%;
  line-height:1.7em;
  border-radius:5px;
}
#assignmentcontainer[contenteditable], #assignmentcontainer[contenteditable]~#showcorrectanswercontainer {
  background-color:#fff;
  outline:10px solid #f1f1f1;
}

body.darkpagetheme #assignmentcontainer[contenteditable],body.darkpagetheme  #assignmentcontainer[contenteditable]~#showcorrectanswercontainer {
  background-color:#38444d;
}

body.darkpagetheme #assignmentcontainer,body.darkpagetheme  #showcorrectanswercontainer {
  background-color:#38444d;
}


#showcorrectanswercontainer {
  display:none;
}
.editablesection {
  background-color:#ffffff;
  display:inline-block;
  border:none;
  height:1.3em;
  padding:1px 2px;
/*
  height:1.2em;
  padding:0;
  outline-offset:0;*/
}
/*
.editablesection:focus {
  outline:2px solid #ffffff;
}
*/
.meassureInputWidth {
  display:inline-block;
  position:absolute;
}

.w3-codespan {
  color:#000000;
}

[id^="correctcode"] {
  display:none;
}

#showcorrectanswercontainer input {
  color:mediumblue;
}

.phonebr {
  display:none;
}

.showanswerbutton, .hideanswerbutton {
  background-color:#282A35;
  position:absolute;
  right:20px;
  bottom:20px;
}
.showanswerbutton:hover,.showanswerbutton:active, .hideanswerbutton:hover,.hideanswerbutton:active {
  background-color:#000!important;
}
@media screen and (max-width: 899px) {
  #answerbuttoncontainer {
    position:fixed;
    bottom:0;
    background-color:rgba(85,85,85,0.9);
    background-color:#D9EEE1;
    padding:20px;
    width:100%;
    left:0;
  }
  #assignmentcontainer, #showcorrectanswercontainer {
    min-height:150px;
    padding-bottom:60px;
    margin-left:-20px;
    margin-right:-20px;
    border-radius:0;
  }
  #assignmentNotCorrect, #assignmentCorrect {
    padding:20px;
  }
}

@media screen and (max-width: 475px) {
  .phonebr {
    display:initial;
  }
}

@media (max-width:899px){.hide-from-small{display:none!important}}
@media (min-width:900px) {.hide-from-large{display:none!important}}
@media only screen and (max-device-width: 480px) {
#assignmentcontainer, #showcorrectanswercontainer {
  font-family:'Source Code Pro',Menlo,Consolas,"Courier New", Courier, monospace;
}
#assignmentcontainer input, #showcorrectanswercontainer input {padding:0;height:1.5em}
</style>

<script>
var formanswers = [];
var editable = false
formanswers.push('');formanswers.push('');formanswers.push('');formanswers.push('');formanswers.push('');formanswers.push('');formanswers.push('');formanswers.push('');formanswers.push('');formanswers.push('');formanswers.push('');formanswers.push('');formanswers.push('');formanswers.push('');formanswers.push('');formanswers.push('');formanswers.push('');formanswers.push('');formanswers.push('');formanswers.push('');
var originalassignmentcode;
function initAssignment() {
  var x, y, txt, i, newtxt, c, cc, n, numberofchar, j, inputs, templates, l, inputcount = -1;
  document.getElementById("assignmenttext").style.display = "block";
  x = document.getElementById("assignmentcode");
  x.style.display = "none";
  txt = x.innerHTML;
  originalassignmentcode = txt;
  if (x.getAttribute("contenteditable") == "true") {
    editable = true;
    document.getElementById("assignmentcontainer").innerHTML = txt;
    document.getElementById("assignmentcontainer").setAttribute("contenteditable", "true");
    document.getElementById("assignmentcontainer").addEventListener("keydown", function(e) {
      if(e.keyCode == 9){
        e.preventDefault();
         var doc = document.getElementById("assignmentcontainer").ownerDocument.defaultView;
        var sel = doc.getSelection();
        var range = sel.getRangeAt(0);
        var blankspaces = document.createTextNode("    ");
        range.insertNode(blankspaces);
        range.setStartAfter(blankspaces);
        range.setEndAfter(blankspaces); 
        sel.removeAllRanges();
        sel.addRange(range);        
      }    
    });    
  } else {
    newtxt = "";
    for (i = 0; i < txt.length; i++) {
      c = txt[i]
      numberofchar = 0;
      if (c == "@") {
        inputcount++
        if (txt[i + 1] == "(") {
          startpos = i + 2;
          endpos = txt.indexOf(")", startpos);
          n = txt.substring(startpos, endpos)
          if (!isNaN(n)) {numberofchar = n;}
        }
        if (numberofchar > 0) {
          i = endpos;
          c = "<pre class='meassureInputWidth'>"
          for (j = 0; j < numberofchar; j++) {
            c += " ";
          }
          c += "</pre>"
          c += "<input spellcheck='false' class='editablesection' onkeypress='checkKey(event)' oninput='writinginput(this, " + inputcount + ")' maxlength='" + numberofchar + "'>"
        }
      }
      newtxt += c;
    }
    document.getElementById("assignmentcontainer").innerHTML = newtxt;
    inputs = document.getElementsByClassName("editablesection");
    templates = document.getElementsByClassName("meassureInputWidth");
    for (i = 0; i < inputs.length; i++) {
      //inputs[i].style.width = ((templates[i].offsetWidth) + 1) + "px";
      inputs[i].style.width = ((templates[i].offsetWidth) + 4) + "px";      
      templates[i].style.display = 'none';
      templates[i].innerHTML = "w3exercise_input_no_" + i;
      cc = formanswers[i];
      cc = cc.replace(/&apos;/g, "'");
      cc = cc.replace(/&quot;/g, '"');
      inputs[i].value = cc;
    }
  }
  //window.setTimeout(function () {inputs[0].focus()}, 800);
}

function checkKey(event) {
  if (event.keyCode == 13) {
    checkassignmentcode();
    uic_r_p();
  }
}

function checkassignmentcode() {
  var check, correct, correct2, inputs, i, moreCorrect = true, cc, result = "", score_arr = [];
  check = document.getElementById("assignmentcontainer").textContent;
  inputs = document.getElementsByClassName("editablesection");
  for (i = 0; i < inputs.length; i++) {
    check = check.replace("w3exercise_input_no_" + i, inputs[i].value);
  }
  i = 1;
  while (moreCorrect) {
    cc = (i == 1) ? "" : i;
    if (document.getElementById("correctcode" + cc)) {
      correct = document.getElementById("correctcode" + cc).textContent;
      if (exsection == "BS3") {
        correct = document.getElementById("correctcode" + cc).innerHTML;
        correct = correct.replace(/&lt;/g, "<");
        correct = correct.replace(/&gt;/g, ">");
      }
      if (exsection == "BS4") {
        correct = document.getElementById("correctcode" + cc).innerHTML;
        correct = correct.replace(/&lt;/g, "<");
        correct = correct.replace(/&gt;/g, ">");
      }
      if (exsection == "SQL") {
        check = check.toLowerCase();
        correct = correct.toLowerCase();
      }
      if (exsection == "MySQL") {
        check = check.toLowerCase();
        correct = correct.toLowerCase();
      }
      if (exsection == "HTML_2") {
        check = check.toLowerCase();
        correct = correct.toLowerCase();
      }
      if (exsection == "CSS_2") {
        check = check.toLowerCase();
        correct = correct.toLowerCase();
      }
      if (exsection == "CSS") {
        check = check.toLowerCase();
        correct = correct.toLowerCase();
      }
      if (editable == true) {
        if (check == correct) {
          result = "correct";
          break;
        } else if ("exercise_strings7" == "exercise_ifelse9" && w3_trim(check) == w3_trim(correct)) {
          result = "correct";
          break;
        }
      } else {
        if (w3_trim(check) == w3_trim(correct)) {
          result = "correct";
          break;
        }
      }
    }
    i++;
    moreCorrect = (document.getElementById("correctcode" + cc));
  }
  if (result == "correct") {
    var answerButtonElm = document.getElementById("answerbutton"),
        answerSubmitted = answerButtonElm.getAttribute('data-answer-submitted');

    answers[exActiveNo].splice((exNo-1), 1, 1);

    if (answerSubmitted !== 'true') { // prevent sending twice
      setAnswerObj("w3exerciseanswers_" + storageBlip + exnames[exActiveNo], answers[exActiveNo].toString(), false);
      answerButtonElm.setAttribute('data-answer-submitted', 'true');
    }

    score_arr = checkCompletedExercises();
    document.getElementById("assignmentCorrect").style.display = "block";
    if (userLoggedOn) {
      userAddOnePoint();
    }
    if (exNo >= 8 && 6 == 20) {
      document.getElementById("answerbutton").style.display = "none";
      document.getElementById("correctnextbtn").style.display = "none";
      document.getElementById("assignmentCorrect").onclick = "";
    } else {
      document.getElementById("answerbutton").innerHTML = "Next Exercise &#10095;";
      document.getElementById("answerbutton").addEventListener("click", nextexercise);
      document.getElementById("answerbutton").focus();
    }
  } else {
    document.getElementById("assignmentNotCorrect").style.display = "block";
    document.getElementById("answerbutton").innerHTML = "Try Again";
    document.getElementById("answerbutton").addEventListener("click", closeNotCorrect);
    document.getElementById("answerbutton").focus();
  }
}


function writinginput(obj, n) {
  var x;
  document.getElementById("assignmentCorrect").style.display = "none";
  document.getElementById("assignmentNotCorrect").style.display = "none";
//  if (obj.value.length == obj.maxLength) {
//    x = document.getElementsByClassName("editablesection");
//    if ((n + 1) > (x.length - 1)) {
//      document.getElementById("answerbutton").focus();
//    } else {
//      x[n + 1].focus();
//    }
//  }
}

function showanswer() {
  var txt, correcttxt, cc, from, to, endpos, i, numberofchar, correctpositions = [], correctanswers = [], x, y, z, inputs;
  correcttxt = document.getElementById("correctcode").innerHTML;
  txt = originalassignmentcode;
  if (editable == true) {
    document.getElementById("showcorrectanswercontainer").innerHTML = correcttxt;
  } else {
    if (exsection == "HTML_2"  || exsection == "R" || exsection == "REACT" || exsection == "CSS_2" || exsection == "CSS") {
      correcttxt = correcttxt.replace(/&lt;/g, "<");
      correcttxt = correcttxt.replace(/&gt;/g, ">");
      correcttxt = correcttxt.replace(/&amp;/g, "&");      
      txt = txt.replace(/&lt;/g, "<");
      txt = txt.replace(/&gt;/g, ">");
      txt = txt.replace(/&amp;/g, "&");      
    }
    from = 0;
    to = 0;
    cc = 0;
    for (i = 0; i < txt.length; i++) {
      c = txt[i]
      numberofchar = 0;
      if (c == "@") {
        if (txt[i + 1] == "(") {
          startpos = i + 2;
          endpos = txt.indexOf(")", startpos);
          n = txt.substring(startpos, endpos)
          if (!isNaN(n)) {numberofchar = n;}
          if (numberofchar > 0) {
             from = i + cc;
             to = Number(numberofchar);
             cc += Number(numberofchar) - 3 - (numberofchar.length);
             correctpositions.push([from,to]);
          }
        }
      }
    }
    cc = 0;
    for (i = 0; i < correctpositions.length; i++) {
      x = correctpositions[i][0];
      y = correctpositions[i][1];
      z = correcttxt.substr(x + cc, y);
  //console.log(correcttxt)
  //console.log(z)
      if (z == "&") {
        if (correcttxt.substr(x + cc, 4) == "&lt;") { z = "<"; cc = cc + 3; }
        if (correcttxt.substr(x + cc, 4) == "&gt;") { z = ">"; cc = cc + 3; }
      }
      if (z == "&l") {
        if (correcttxt.substr(x + cc, 8) == "&lt;&gt;") { z = "<>"; cc = cc + 6; }
      }
      if (z == "&lt;?") {
        if (correcttxt.substr(x + cc, 8) == "&lt;?php") { z = "<?php"; cc = cc + 3; }
      }
      if (z == "?&") {
        if (correcttxt.substr(x + cc, 5) == "?&gt;") { z = "?>"; cc = cc + 3; }
      }
      if (z == "=&") {
        if (correcttxt.substr(x + cc, 5) == "=&gt;") { z = "=>"; cc = cc + 3; }
      }
      correctanswers.push(z);
    }
    document.getElementById("showcorrectanswercontainer").innerHTML = document.getElementById("assignmentcontainer").cloneNode(true).innerHTML;
    inputs = document.getElementById("showcorrectanswercontainer").getElementsByClassName("editablesection");
    for (i = 0; i < inputs.length; i++) {
      inputs[i].value = correctanswers[i];
      inputs[i].readOnly = true;
    }
  }
  document.getElementById("assignmentcontainer").style.display = "none";
  document.getElementById("showcorrectanswercontainer").style.display = "block";
  x = document.getElementsByClassName("showanswerbutton");
  for (i = 0; i < x.length; i++) {
    x[i].style.display = "none";
  }
  x = document.getElementsByClassName("hideanswerbutton");
  for (i = 0; i < x.length; i++) {
    x[i].style.display = "inline";
  }
  document.getElementById("answerbutton").style.visibility = "hidden";
}

function hideanswer() {
  var x, i;
  document.getElementById("assignmentcontainer").style.display = "block";
  document.getElementById("showcorrectanswercontainer").style.display = "none";
  x = document.getElementsByClassName("showanswerbutton");
  for (i = 0; i < x.length; i++) {
    x[i].style.display = "inline";
  }
  x = document.getElementsByClassName("hideanswerbutton");
  for (i = 0; i < x.length; i++) {
    x[i].style.display = "none";
  }
  document.getElementById("answerbutton").style.visibility = "visible";
}

function nextexercise() {
  if (exNo >= 8) {
    location = "exercise4ec8.html?filename=exercise_" + exnames[exActiveNo + 1] + "1";
  } else {
    location = "exercise4ec8.html?filename=exercise_" + exnames[exActiveNo] + (exNo + 1)
  }
}

function closeNotCorrect() {
  document.getElementById("answerbutton").removeEventListener("click", closeNotCorrect);
  document.getElementById("answerbutton").innerHTML = "Submit Answer &#10095;";
  document.getElementById("assignmentNotCorrect").style.display = "none";    
  giveFocus();
}

initAssignment();


function giveFocus() {
  if (editable && (typeof document.createRange == "function")){
    var el = document.getElementById("assignmentcontainer");
    var range = document.createRange();
    var sel = window.getSelection();
    range.setStart(el.childNodes[0], 1);
    range.collapse(true);
    sel.removeAllRanges();
    sel.addRange(range);
  } else {
    document.getElementsByClassName("editablesection")[0].focus();
  }
}
if (window.addEventListener) {              
  window.addEventListener("load", giveFocus);
} else if (window.attachEvent) {                 
  window.attachEvent("onload", giveFocus);
}
</script>





  </div>
</td>
</tr>

</table>
<div id="exercisemenu" class="exercisemenu">

<div class="menucontainer">
<div style="float:left;width:75px">
<a href="https://w3schools.com/" target="_blank"><span class="menubtn fa fa-home" onmouseover="showtooltip(1)" onmouseout="hidetooltip(1)" ontouchstart="location='https://w3schools.com/';return false;"></span></a>
<div class="tooltip">Go to w3schools.com</div>
</div>
<div style="float:left;width:100px;text-align:center;">
<span onclick="modalReset()" class="menubtn fa fa fa-trash" onmouseover="showtooltip(2)" onmouseout="hidetooltip(2)" ontouchstart="modalReset();return false;"></span>
<div class="tooltip" style="left:80px;">Reset Score</div>
</div>
<div style="float:left; width:74px;text-align:right;">
<span onclick="close_menu()" class="menubtn fa fa-close" onmouseover="showtooltip(3)" onmouseout="hidetooltip(3)" ontouchstart="close_menu();return false;"></span>
<div class="tooltip" style="right:10px;">Close This Menu</div>
</div>
</div>
<div id="userprogress"></div>
<script>
function drawUserProgress() {
  var x, txt = "";
  if (userLoggedOn) {
    txt += '<div style="border-right:1px solid #ddd;background-color:#fff;height:70px;position:relative;">';
      txt += "<div id='pluspointcontainer' style='display:none'>";
      txt += "<span class='usergetspoint'>+1</span>";
      txt += "<style>";
      txt += "span.usergetspoint {left:90px;display:inline-block;line-height:normal;position:absolute;bottom:12px;font-size:12px;font-family:consolas,Menlo,monospace;background-color:transparent;color:#fff;border-radius:5px;padding:1px 3px} ";
      txt += "span.usergetspoint {animation-name: example;animation-duration: 3s;animation-timing-function: linear;}";
      txt += "@keyframes example {";
      txt += "  0% {xtop:0px;background-color:transparent;}  ";
      txt += "  1% {xtop:0px;background-color:rgba(153, 102, 255, 1);}  ";
      txt += "  5%  {xtop:0px; font-size:16px;}";
      txt += "  10%  {xtop:0px; font-size:12px;} "; 
      txt += "  12%  {xtop:0px; font-size:16px;}";
      txt += "  14%  {xtop:0px; font-size:12px;}";
      txt += "  16%  {xtop:0px; font-size:16px;}";
      txt += "  18%  {xtop:0px; font-size:12px;background-color:rgba(153, 102, 255, 1);}  ";
      txt += "  50% {background-color:transparent;}";
      txt += "}";
      txt += "</style>";
      txt += "</div>";
    txt += "<a href='https://profile.w3schools.com/log-in?redirect_url=https%3A%2F%2Fmy-learning.w3schools.com%2F'>";
//  txt += '  <a href="https://mypage.w3schools.com/mypage/default.php">';
    txt += '    <img src="/images/mypagelogo32x32.png" alt="MYPAGE" style="position:absolute;top:19px;left:114px">';
    txt += '    <svg style="position:absolute;top:0;left:104px;height:70px;width:70px">';
    txt += '      <path id="mypage_circle1" fill="none" stroke="rgba(153, 102, 255, 0.1)" stroke-width="4"></path>';
    txt += '      <path id="mypage_circle2" fill="none" stroke="rgba(153, 102, 255, 1)" stroke-width="4"></path>';
    txt += '    </svg>';
    txt += '  </a>';
    txt += '  </div>';
    document.getElementById("userprogress").innerHTML = txt;
    x = Math.round((userscore/numberofexercises) * 100);
    degrees = x * 3.6;
    if (degrees > 359) degrees = 359;
    document.getElementById("mypage_circle1").setAttribute("d", describeArc(26, 35, 24, 0, 359));
    document.getElementById("mypage_circle2").setAttribute("d", describeArc(26, 35, 24, 0, degrees));
    document.getElementsByClassName("exercisemenuinner")[0].style.top = "169px";
  }
}

function polarToCartesian(centerX, centerY, radius, angleInDegrees) {
  var angleInRadians = (angleInDegrees-90) * Math.PI / 180.0;
  return {
    x: centerX + (radius * Math.cos(angleInRadians)),
    y: centerY + (radius * Math.sin(angleInRadians))
  };
}

function describeArc(x, y, radius, startAngle, endAngle){
    var start = polarToCartesian(x, y, radius, endAngle);
    var end = polarToCartesian(x, y, radius, startAngle);
    var largeArcFlag = endAngle - startAngle <= 180 ? "0" : "1";
    var d = [
        "M", start.x, start.y, 
        "A", radius, radius, 0, largeArcFlag, 0, end.x, end.y
    ].join(" ");
    return d;       
}


 </script>
<div style="padding-left:28px;zzbackground-color:#96D4D4;">

<p id="completedExercisesNo">&nbsp;</p>

</div>
<div class="exercisemenuinner">
<div><div onclick='openmenuitems(0)' class='exmenuitemheader'><i style='position:absolute;left:224px;padding-top:4px;' class='fa fa-check'></i>PYTHON Syntax </div><div class='exmenulinks'><a class='exbtn' href='exercisef5ec.html?filename=exercise_syntax1'><i class='fa fa-check'></i> Exercise 1</a><a class='exbtn' href='exercisefc77.html?filename=exercise_syntax2'><i class='fa fa-check'></i> Exercise 2</a><a class='exbtn' href='python_syntax.html' target='_blank' style='font-size:80%;text-decoration:underline;'>Go to PYTHON Syntax Tutorial</a></div></div><div><div onclick='openmenuitems(1)' class='exmenuitemheader'><i style='position:absolute;left:224px;padding-top:4px;' class='fa fa-check'></i>PYTHON Comments </div><div class='exmenulinks'><a class='exbtn' href='exercise4045.html?filename=exercise_comments1'><i class='fa fa-check'></i> Exercise 1</a><a class='exbtn' href='exercisef7bd.html?filename=exercise_comments2'><i class='fa fa-check'></i> Exercise 2</a><a class='exbtn' href='python_comments.html' target='_blank' style='font-size:80%;text-decoration:underline;'>Go to PYTHON Comments Tutorial</a></div></div><div><div onclick='openmenuitems(2)' class='exmenuitemheader'><i style='position:absolute;left:224px;padding-top:4px;' class='fa fa-check'></i>PYTHON Variables </div><div class='exmenulinks'><a class='exbtn' href='exercise4829.html?filename=exercise_variables1'><i class='fa fa-check'></i> Exercise 1</a><a class='exbtn' href='exercisebf42.html?filename=exercise_variables2'><i class='fa fa-check'></i> Exercise 2</a><a class='exbtn' href='exercise96a8.html?filename=exercise_variables3'><i class='fa fa-check'></i> Exercise 3</a><a class='exbtn' href='exercise48a7.html?filename=exercise_variables4'><i class='fa fa-check'></i> Exercise 4</a><a class='exbtn' href='exercise0685.html?filename=exercise_variables5'><i class='fa fa-check'></i> Exercise 5</a><a class='exbtn' href='exercise341e.html?filename=exercise_variables6'><i class='fa fa-check'></i> Exercise 6</a><a class='exbtn' href='exercise3b7b.html?filename=exercise_variables7'><i class='fa fa-check'></i> Exercise 7</a><a class='exbtn' href='python_variables.html' target='_blank' style='font-size:80%;text-decoration:underline;'>Go to PYTHON Variables Tutorial</a></div></div><div><div onclick='openmenuitems(3)' class='exmenuitemheader'><i style='position:absolute;left:224px;padding-top:4px;' class='fa fa-check'></i>PYTHON Data Types </div><div class='exmenulinks'><a class='exbtn' href='exercisef191.html?filename=exercise_datatypes1'><i class='fa fa-check'></i> Exercise 1</a><a class='exbtn' href='exercise30fb.html?filename=exercise_datatypes2'><i class='fa fa-check'></i> Exercise 2</a><a class='exbtn' href='exerciseef6d.html?filename=exercise_datatypes3'><i class='fa fa-check'></i> Exercise 3</a><a class='exbtn' href='exercise985e.html?filename=exercise_datatypes4'><i class='fa fa-check'></i> Exercise 4</a><a class='exbtn' href='exercise06b9.html?filename=exercise_datatypes5'><i class='fa fa-check'></i> Exercise 5</a><a class='exbtn' href='exercise2de9.html?filename=exercise_datatypes6'><i class='fa fa-check'></i> Exercise 6</a><a class='exbtn' href='exerciseb1c7.html?filename=exercise_datatypes7'><i class='fa fa-check'></i> Exercise 7</a><a class='exbtn' href='python_datatypes.html' target='_blank' style='font-size:80%;text-decoration:underline;'>Go to PYTHON Data Types Tutorial</a></div></div><div><div onclick='openmenuitems(4)' class='exmenuitemheader'><i style='position:absolute;left:224px;padding-top:4px;' class='fa fa-check'></i>PYTHON Numbers </div><div class='exmenulinks'><a class='exbtn' href='exercisec5e4.html?filename=exercise_numbers1'><i class='fa fa-check'></i> Exercise 1</a><a class='exbtn' href='exercisee68c.html?filename=exercise_numbers2'><i class='fa fa-check'></i> Exercise 2</a><a class='exbtn' href='exercisef3b4.html?filename=exercise_numbers3'><i class='fa fa-check'></i> Exercise 3</a><a class='exbtn' href='python_numbers.html' target='_blank' style='font-size:80%;text-decoration:underline;'>Go to PYTHON Numbers Tutorial</a></div></div><div><div onclick='openmenuitems(5)' class='exmenuitemheader active'><i style='position:absolute;left:224px;padding-top:4px;' class='fa fa-check'></i>PYTHON Strings </div><div class='exmenulinks'><a class='exbtn' href='exerciseb1ec.html?filename=exercise_strings1'><i class='fa fa-check'></i> Exercise 1</a><a class='exbtn' href='exercise1a14.html?filename=exercise_strings2'><i class='fa fa-check'></i> Exercise 2</a><a class='exbtn' href='exercise4800.html?filename=exercise_strings3'><i class='fa fa-check'></i> Exercise 3</a><a class='exbtn' href='exerciseae1a.html?filename=exercise_strings4'><i class='fa fa-check'></i> Exercise 4</a><a class='exbtn' href='exerciseb611.html?filename=exercise_strings5'><i class='fa fa-check'></i> Exercise 5</a><a class='exbtn' href='exerciseaf48.html?filename=exercise_strings6'><i class='fa fa-check'></i> Exercise 6</a><a class='exbtn active' href='exercise4f5a.asp?filename=exercise_strings7'><i class='fa fa-check active'></i> Exercise 7</a><a class='exbtn' href='exercise81dc.html?filename=exercise_strings8'><i class='fa fa-check'></i> Exercise 8</a><a class='exbtn' href='python_strings.html' target='_blank' style='font-size:80%;text-decoration:underline;'>Go to PYTHON Strings Tutorial</a></div></div><div><div onclick='openmenuitems(6)' class='exmenuitemheader'><i style='position:absolute;left:224px;padding-top:4px;' class='fa fa-check'></i>PYTHON Booleans </div><div class='exmenulinks'><a class='exbtn' href='exerciseb806.html?filename=exercise_booleans1'><i class='fa fa-check'></i> Exercise 1</a><a class='exbtn' href='exercise392d.html?filename=exercise_booleans2'><i class='fa fa-check'></i> Exercise 2</a><a class='exbtn' href='exercise3c7b.html?filename=exercise_booleans3'><i class='fa fa-check'></i> Exercise 3</a><a class='exbtn' href='exercise455a.html?filename=exercise_booleans4'><i class='fa fa-check'></i> Exercise 4</a><a class='exbtn' href='exercise42ea.html?filename=exercise_booleans5'><i class='fa fa-check'></i> Exercise 5</a><a class='exbtn' href='python_booleans.html' target='_blank' style='font-size:80%;text-decoration:underline;'>Go to PYTHON Booleans Tutorial</a></div></div><div><div onclick='openmenuitems(7)' class='exmenuitemheader'><i style='position:absolute;left:224px;padding-top:4px;' class='fa fa-check'></i>PYTHON Operators </div><div class='exmenulinks'><a class='exbtn' href='exerciseb46c.html?filename=exercise_operators1'><i class='fa fa-check'></i> Exercise 1</a><a class='exbtn' href='exercise6d20.html?filename=exercise_operators2'><i class='fa fa-check'></i> Exercise 2</a><a class='exbtn' href='exercised482.html?filename=exercise_operators3'><i class='fa fa-check'></i> Exercise 3</a><a class='exbtn' href='exercise59b3.html?filename=exercise_operators4'><i class='fa fa-check'></i> Exercise 4</a><a class='exbtn' href='exercisea573.html?filename=exercise_operators5'><i class='fa fa-check'></i> Exercise 5</a><a class='exbtn' href='python_operators.html' target='_blank' style='font-size:80%;text-decoration:underline;'>Go to PYTHON Operators Tutorial</a></div></div><div><div onclick='openmenuitems(8)' class='exmenuitemheader'><i style='position:absolute;left:224px;padding-top:4px;' class='fa fa-check'></i>PYTHON Lists </div><div class='exmenulinks'><a class='exbtn' href='exercise95d8.html?filename=exercise_lists1'><i class='fa fa-check'></i> Exercise 1</a><a class='exbtn' href='exercise8adc.html?filename=exercise_lists2'><i class='fa fa-check'></i> Exercise 2</a><a class='exbtn' href='exerciseef08.html?filename=exercise_lists3'><i class='fa fa-check'></i> Exercise 3</a><a class='exbtn' href='exercisec984.html?filename=exercise_lists4'><i class='fa fa-check'></i> Exercise 4</a><a class='exbtn' href='exercised330.html?filename=exercise_lists5'><i class='fa fa-check'></i> Exercise 5</a><a class='exbtn' href='exercise046a.html?filename=exercise_lists6'><i class='fa fa-check'></i> Exercise 6</a><a class='exbtn' href='exercise6542.html?filename=exercise_lists7'><i class='fa fa-check'></i> Exercise 7</a><a class='exbtn' href='exercise8778.html?filename=exercise_lists8'><i class='fa fa-check'></i> Exercise 8</a><a class='exbtn' href='python_lists.html' target='_blank' style='font-size:80%;text-decoration:underline;'>Go to PYTHON Lists Tutorial</a></div></div><div><div onclick='openmenuitems(9)' class='exmenuitemheader'><i style='position:absolute;left:224px;padding-top:4px;' class='fa fa-check'></i>PYTHON Tuples </div><div class='exmenulinks'><a class='exbtn' href='exercise41d0.html?filename=exercise_tuples1'><i class='fa fa-check'></i> Exercise 1</a><a class='exbtn' href='exercise091f.html?filename=exercise_tuples2'><i class='fa fa-check'></i> Exercise 2</a><a class='exbtn' href='exerciseed7a.html?filename=exercise_tuples3'><i class='fa fa-check'></i> Exercise 3</a><a class='exbtn' href='exercise20de.html?filename=exercise_tuples4'><i class='fa fa-check'></i> Exercise 4</a><a class='exbtn' href='python_tuples.html' target='_blank' style='font-size:80%;text-decoration:underline;'>Go to PYTHON Tuples Tutorial</a></div></div><div><div onclick='openmenuitems(10)' class='exmenuitemheader'><i style='position:absolute;left:224px;padding-top:4px;' class='fa fa-check'></i>PYTHON Sets </div><div class='exmenulinks'><a class='exbtn' href='exercise016f.html?filename=exercise_sets1'><i class='fa fa-check'></i> Exercise 1</a><a class='exbtn' href='exercise115d.html?filename=exercise_sets2'><i class='fa fa-check'></i> Exercise 2</a><a class='exbtn' href='exercisee323.html?filename=exercise_sets3'><i class='fa fa-check'></i> Exercise 3</a><a class='exbtn' href='exerciseaa3a.html?filename=exercise_sets4'><i class='fa fa-check'></i> Exercise 4</a><a class='exbtn' href='exerciseae19.html?filename=exercise_sets5'><i class='fa fa-check'></i> Exercise 5</a><a class='exbtn' href='python_sets.html' target='_blank' style='font-size:80%;text-decoration:underline;'>Go to PYTHON Sets Tutorial</a></div></div><div><div onclick='openmenuitems(11)' class='exmenuitemheader'><i style='position:absolute;left:224px;padding-top:4px;' class='fa fa-check'></i>PYTHON Dictionaries </div><div class='exmenulinks'><a class='exbtn' href='exercise612d.html?filename=exercise_dictionaries1'><i class='fa fa-check'></i> Exercise 1</a><a class='exbtn' href='exercisece6d.html?filename=exercise_dictionaries2'><i class='fa fa-check'></i> Exercise 2</a><a class='exbtn' href='exercisebd02.html?filename=exercise_dictionaries3'><i class='fa fa-check'></i> Exercise 3</a><a class='exbtn' href='exercise822e.html?filename=exercise_dictionaries4'><i class='fa fa-check'></i> Exercise 4</a><a class='exbtn' href='exercisebff0.html?filename=exercise_dictionaries5'><i class='fa fa-check'></i> Exercise 5</a><a class='exbtn' href='python_dictionaries.html' target='_blank' style='font-size:80%;text-decoration:underline;'>Go to PYTHON Dictionaries Tutorial</a></div></div><div><div onclick='openmenuitems(12)' class='exmenuitemheader'><i style='position:absolute;left:224px;padding-top:4px;' class='fa fa-check'></i>PYTHON If...Else </div><div class='exmenulinks'><a class='exbtn' href='exercise64d3.html?filename=exercise_ifelse1'><i class='fa fa-check'></i> Exercise 1</a><a class='exbtn' href='exercisea6cd.html?filename=exercise_ifelse2'><i class='fa fa-check'></i> Exercise 2</a><a class='exbtn' href='exercise941d.html?filename=exercise_ifelse3'><i class='fa fa-check'></i> Exercise 3</a><a class='exbtn' href='exercisef3ef.html?filename=exercise_ifelse4'><i class='fa fa-check'></i> Exercise 4</a><a class='exbtn' href='exercise3a9c.html?filename=exercise_ifelse5'><i class='fa fa-check'></i> Exercise 5</a><a class='exbtn' href='exercisee8f9.html?filename=exercise_ifelse6'><i class='fa fa-check'></i> Exercise 6</a><a class='exbtn' href='exercise9b46.html?filename=exercise_ifelse7'><i class='fa fa-check'></i> Exercise 7</a><a class='exbtn' href='exerciseaefe.html?filename=exercise_ifelse8'><i class='fa fa-check'></i> Exercise 8</a><a class='exbtn' href='exercise925d.html?filename=exercise_ifelse9'><i class='fa fa-check'></i> Exercise 9</a><a class='exbtn' href='python_conditions.html' target='_blank' style='font-size:80%;text-decoration:underline;'>Go to PYTHON If...Else Tutorial</a></div></div><div><div onclick='openmenuitems(13)' class='exmenuitemheader'><i style='position:absolute;left:224px;padding-top:4px;' class='fa fa-check'></i>PYTHON While Loops </div><div class='exmenulinks'><a class='exbtn' href='exercise745d.html?filename=exercise_while_loops1'><i class='fa fa-check'></i> Exercise 1</a><a class='exbtn' href='exercise9747.html?filename=exercise_while_loops2'><i class='fa fa-check'></i> Exercise 2</a><a class='exbtn' href='exercise32f7.html?filename=exercise_while_loops3'><i class='fa fa-check'></i> Exercise 3</a><a class='exbtn' href='exercisede73.html?filename=exercise_while_loops4'><i class='fa fa-check'></i> Exercise 4</a><a class='exbtn' href='python_while_loops.html' target='_blank' style='font-size:80%;text-decoration:underline;'>Go to PYTHON While Loops Tutorial</a></div></div><div><div onclick='openmenuitems(14)' class='exmenuitemheader'><i style='position:absolute;left:224px;padding-top:4px;' class='fa fa-check'></i>PYTHON For Loops </div><div class='exmenulinks'><a class='exbtn' href='exercisec4aa.html?filename=exercise_for_loops1'><i class='fa fa-check'></i> Exercise 1</a><a class='exbtn' href='exercise28f4.html?filename=exercise_for_loops2'><i class='fa fa-check'></i> Exercise 2</a><a class='exbtn' href='exerciseb349.html?filename=exercise_for_loops3'><i class='fa fa-check'></i> Exercise 3</a><a class='exbtn' href='exercisea15b.html?filename=exercise_for_loops4'><i class='fa fa-check'></i> Exercise 4</a><a class='exbtn' href='python_for_loops.html' target='_blank' style='font-size:80%;text-decoration:underline;'>Go to PYTHON For Loops Tutorial</a></div></div><div><div onclick='openmenuitems(15)' class='exmenuitemheader'><i style='position:absolute;left:224px;padding-top:4px;' class='fa fa-check'></i>PYTHON Functions </div><div class='exmenulinks'><a class='exbtn' href='exercise75c3.html?filename=exercise_functions1'><i class='fa fa-check'></i> Exercise 1</a><a class='exbtn' href='exercise2f71.html?filename=exercise_functions2'><i class='fa fa-check'></i> Exercise 2</a><a class='exbtn' href='exercisef48c.html?filename=exercise_functions3'><i class='fa fa-check'></i> Exercise 3</a><a class='exbtn' href='exercise70bd.html?filename=exercise_functions4'><i class='fa fa-check'></i> Exercise 4</a><a class='exbtn' href='exercise4be6.html?filename=exercise_functions5'><i class='fa fa-check'></i> Exercise 5</a><a class='exbtn' href='exercise5891.html?filename=exercise_functions6'><i class='fa fa-check'></i> Exercise 6</a><a class='exbtn' href='python_functions.html' target='_blank' style='font-size:80%;text-decoration:underline;'>Go to PYTHON Functions Tutorial</a></div></div><div><div onclick='openmenuitems(16)' class='exmenuitemheader'><i style='position:absolute;left:224px;padding-top:4px;' class='fa fa-check'></i>PYTHON Lambda </div><div class='exmenulinks'><a class='exbtn' href='exercise9a02.html?filename=exercise_lambda1'><i class='fa fa-check'></i> Exercise 1</a><a class='exbtn' href='python_lambda.html' target='_blank' style='font-size:80%;text-decoration:underline;'>Go to PYTHON Lambda Tutorial</a></div></div><div><div onclick='openmenuitems(17)' class='exmenuitemheader'><i style='position:absolute;left:224px;padding-top:4px;' class='fa fa-check'></i>PYTHON Classes </div><div class='exmenulinks'><a class='exbtn' href='exercise37be.html?filename=exercise_classes1'><i class='fa fa-check'></i> Exercise 1</a><a class='exbtn' href='exercise84fb.html?filename=exercise_classes2'><i class='fa fa-check'></i> Exercise 2</a><a class='exbtn' href='exercisec88d.html?filename=exercise_classes3'><i class='fa fa-check'></i> Exercise 3</a><a class='exbtn' href='exercise3e6e.html?filename=exercise_classes4'><i class='fa fa-check'></i> Exercise 4</a><a class='exbtn' href='python_classes.html' target='_blank' style='font-size:80%;text-decoration:underline;'>Go to PYTHON Classes Tutorial</a></div></div><div><div onclick='openmenuitems(18)' class='exmenuitemheader'><i style='position:absolute;left:224px;padding-top:4px;' class='fa fa-check'></i>PYTHON Inheritance </div><div class='exmenulinks'><a class='exbtn' href='exercisefbb4.html?filename=exercise_inheritance1'><i class='fa fa-check'></i> Exercise 1</a><a class='exbtn' href='exercise469d.html?filename=exercise_inheritance2'><i class='fa fa-check'></i> Exercise 2</a><a class='exbtn' href='python_inheritance.html' target='_blank' style='font-size:80%;text-decoration:underline;'>Go to PYTHON Inheritance Tutorial</a></div></div><div><div onclick='openmenuitems(19)' class='exmenuitemheader'><i style='position:absolute;left:224px;padding-top:4px;' class='fa fa-check'></i>PYTHON Modules </div><div class='exmenulinks'><a class='exbtn' href='exercisedefe.html?filename=exercise_modules1'><i class='fa fa-check'></i> Exercise 1</a><a class='exbtn' href='exercise566e.html?filename=exercise_modules2'><i class='fa fa-check'></i> Exercise 2</a><a class='exbtn' href='exerciseaeb0.html?filename=exercise_modules3'><i class='fa fa-check'></i> Exercise 3</a><a class='exbtn' href='exerciseab01.html?filename=exercise_modules4'><i class='fa fa-check'></i> Exercise 4</a><a class='exbtn' href='python_modules.html' target='_blank' style='font-size:80%;text-decoration:underline;'>Go to PYTHON Modules Tutorial</a></div></div>
<br>
</div>
</div>
<script>


function openmenuitems(n, cc) {
    var x = document.getElementsByClassName("exmenulinks")[n];
    var y = x.cloneNode(true)
    y.setAttribute("style", "height:auto;visibility:hidden");
    x.parentNode.appendChild(y);
    var height = w3_getStyleValue(y, "height");
    x.setAttribute("style", "height:" + height);
    x.parentNode.removeChild(y);
    if (!cc && w3_getStyleValue(x, "height") == height) {
        x.style.height = "0";
    } else {
        closemenuitems();    
        x.style.height = height;
    }
}
function closemenuitems() {
    var i, x = document.getElementsByClassName("exmenulinks"), l = x.length;
    for (i = 0; i < l; i++) {
        x[i].style.height = "0";
    }
}

openmenuitems(exActiveNo, true);

function showtooltip(n) {
    if ('ontouchstart' in window || 'onmsgesturechange' in window) {
    } else {
        document.getElementsByClassName("tooltip")[n].style.display = "block";
    }
}
function hidetooltip(n) {
    document.getElementsByClassName("tooltip")[n].style.display = "none";
}
function close_menu() {
    var w = window.innerWidth || document.documentElement.clientWidth || document.body.clientWidth;
    document.getElementById("topTD").style.paddingLeft = "20px";    
    if (document.getElementById("codeTD")) {
      document.getElementById("codeTD").style.paddingLeft = "20px";
      document.getElementById("codeTD2").style.paddingLeft = "20px";
    }
    if (w > 900) {    
        if (document.getElementById("tryitLeaderboard")) {
          document.getElementById("tryitLeaderboard").style.paddingLeft = "30px";
        }
        document.getElementById("exercisemenu").style.display = "none";
    } else {
        document.getElementById("exercisemenu").style.display = "none";
    }
}
function open_menu() {
    var w = window.innerWidth || document.documentElement.clientWidth || document.body.clientWidth;
    if (w > 900) {
        document.getElementById("topTD").style.paddingLeft = "280px";    
        if (document.getElementById("codeTD")) {
          document.getElementById("codeTD").style.paddingLeft = "280px";        
          document.getElementById("codeTD2").style.paddingLeft = "280px";
        }
        if (document.getElementById("tryitLeaderboard")) {
          document.getElementById("tryitLeaderboard").style.paddingLeft = "0";
        }
    }
    document.getElementById("exercisemenu").style.display = "block";    
}
function colorcoding() {  
  window.editor = CodeMirror.fromTextArea(document.getElementById("textareaCode"), {
    mode: "text/html",
    htmlMode: true,
    lineWrapping: true,
    smartIndent: false,
    addModeClass: true
  });
  window.editor2 = CodeMirror.fromTextArea(document.getElementById("textareaCode2"), {
    mode: "text/html",
    htmlMode: true,
    lineWrapping: true,
    smartIndent: false,
    readOnly: true,
    addModeClass: true
  });
//  window.editor.on("change", function () {window.editor.save();});
}



</script>

<div id="id01" class="w3-modal" style="z-index:3;">
  <div class="w3-modal-content w3-card-4 w3-center">
    <header class="w3-container w3-display-container"> 
      <span onclick="document.getElementById('id01').style.display='none'" class="w3-button w3-display-topright">&times;</span>
      <h2>Reset the Score?</h2>
    </header>
    <div class="w3-container w3-padding">
      <p>This will reset the score of ALL 95 exercises.</p>
      <p>Are you sure you want to continue?</p>
      <br>
      <button class="w3s-exercisebtn" onclick="resetScore()">Reset</button>
      <button class="w3s-exercisebtn" onclick="document.getElementById('id01').style.display='none'">Cancel</button>      
    </div>
    <br>
  </div>
</div>

<div id="id02" class="w3-modal" style="z-index:3;color:#000!important">
  <div class="w3-modal-content w3-card-4 w3-padding w3-center">
    <header class="w3-container w3-display-container"> 
      <span onclick="document.getElementById('id02').style.display='none'" class="w3-button w3-display-topright">&times;</span>
      <h2>Congratulations!</h2>
    </header>
    <div class="w3-container w3-padding">
      <h3>You have finished all 95&nbsp;PYTHON exercises.</h3>
      
        <p>Share your score:</p>
        
      <a href="https://www.facebook.com/sharer.php?u=https://www.w3schools.com/PYTHON/exercise.asp" target="_blank" title="Share your score on Facebook"><span style="color:#3B5998;font-size:50px;" class="fa fa-facebook-square fa-2x"></span></a>
      <script>
        <!--
        try{
        var c35 = "I completed all 95%20PYTHON exercises from W3Schools.";
        txt='<a href="https://twitter.com/intent/tweet?url=https://www.w3schools.com/PYTHON/exercise.asp&text='+c35+'" target="_blank" title="Share your score on Twitter"><span style="color:#1DA1F2;font-size:50px;" class="fa fa-twitter-square fa-2x"></span></a>';
        document.write(txt);
        } catch(e) {}
        //-->
      </script>

      <a href="https://www.linkedin.com/sharing/share-offsite/?url=https://www.w3schools.com/PYTHON/exercise.asp" target="_blank" title="LinkedIn">
        <span class="fa fa-linkedin-square fa-2x" style="font-size: 50px;color:#2867B2"></span>
      </a>

        <br>
      
      <br>
      <br>
      <br>
      <button class="w3s-exercisebtn" onclick="document.getElementById('id02').style.display='none'">Close</button>      
    </div>
    <br>
  </div>
</div>
<script>
uic_r_r()
</script>
<script src="../lib/codemirror.js"></script>
<script src="../lib/codemirror_jsx.js"></script>
<script>
(
function setThemeMode() {
  var x = localStorage.getItem("preferredmode");
  var y = localStorage.getItem("preferredpagemode");  
  if (x == "dark") {
    document.body.className += " darktheme";
  }
  if (y == "dark") {
    document.body.className += " darkpagetheme";
  }
})();
</script>
</body>

<!-- Mirrored from www.w3schools.com/python/exercise.asp?filename=exercise_strings7 by HTTrack Website Copier/3.x [XR&CO'2014], Tue, 31 May 2022 13:51:00 GMT -->
</html>