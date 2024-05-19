
<!DOCTYPE html>
<html lang="en-US">

<!-- Mirrored from www.w3schools.com/python/pandas/trypandas.asp?filename=demo_ref_df_interpolate by HTTrack Website Copier/3.x [XR&CO'2014], Tue, 31 May 2022 13:51:05 GMT -->
<head>
<title>Python Tryit Editor v1.0</title>
<meta name="viewport" content="width=device-width">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta property="og:image" content="https://www.w3schools.com/images/w3schools_logo.png">
<meta property="og:image:type" content="image/png">
<meta property="og:image:width" content="200">
<meta property="og:image:height" content="200">
<link rel="preload" href="../../lib/fonts/fontawesome8deb.woff2?14663396" as="font" type="font/woff2" crossorigin> 
<link rel="preload" href="../../lib/fonts/source-code-pro-v14-latin-regular.woff2" as="font" type="font/woff2" crossorigin> 
<link rel="stylesheet" href="../../lib/w3schools30.css">
<link rel="stylesheet" href="../../lib/codemirror.css">
<script src="../../lib/codemirror.js"></script>
<script src="../../lib/codemirror_python.js"></script>
<script>
(function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
(i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
})(window,document,'script','../../../www.google-analytics.com/analytics.js','ga');
ga('create', 'UA-3855518-1', 'auto');
ga('require', 'displayfeatures');
ga('require', 'GTM-WJ88MZ5');
ga('send', 'pageview');
</script>

<script src="../../lib/uic2c70.js?v=1.0.3"></script>
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
<script async data-cfasync="false" src="../../../cdn.snigelweb.com/adengine/w3schools.com/loader.js" type="text/javascript"></script>
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
    if (window.screen.availWidth <= 768) {
      restack(window.innerHeight > window.innerWidth);
    }
    fixDragBtn();
    showFrameSize();    
}
var fileID = "";
var loadSave = false;
function getSavedFile() {
    loadSave = true;
    var htmlCode;
    var paramObj = {};
    paramObj.fileid = "";
    fileID = paramObj.fileid;
    var paramA = JSON.stringify(paramObj);
    var httpA = new XMLHttpRequest();
    httpA.open("POST.html", globalURL, true);
    httpA.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
    httpA.onreadystatechange = function() {
        if(httpA.readyState == 4 && httpA.status == 200) {
            document.getElementById("textareaCode").value = httpA.responseText;
            window.editor.getDoc().setValue(httpA.responseText);
            loadSave = false;
        }
    }
    httpA.send(paramA);   
}
</script>
<style>
* {
  -webkit-box-sizing: border-box;
  -moz-box-sizing: border-box;
  box-sizing: border-box;
}
body {
  color:#000000;
  margin:0px;
  font-size:100%;
}
.trytopnav {
  height:48px;
  overflow:hidden;
  min-width:380px;
  position:absolute;
  width:100%;
  top:99px;
  background-color:#F1F1F1;
}
.topnav-icons {
  margin-right:8px;
}
.trytopnav a,.trytopnav button {
  color:#999999;
}
.w3-bar .w3-bar-item:hover {
  color:#757575 !important;
}
a.w3schoolslink {
  padding:0 !important;
  display:inline !important;
}
a.w3schoolslink:hover,a.w3schoolslink:active {
  text-decoration:underline !important;
  background-color:transparent !important;
}
#dragbar{
  position:absolute;
  cursor: col-resize;
  z-index:3;
  padding:5px;
}
#shield {
  display:none;
  top:0;
  left:0;
  width:100%;
  position:absolute;
  height:100%;
  z-index:4;
}
#framesize span {
  font-family:Consolas, monospace;
}
#container {
  background-color:#E7E9EB;
  width:100%;
  overflow:auto;
  position:absolute;
  top:144px;
  bottom:0;
  height:auto;
}
#textareacontainer, #iframecontainer {
  float:left;
  height:100%;
  width:50%;
}
#textarea, #iframe {
  height:100%;
  width:100%;
  padding-bottom:10px;
  padding-top:1px;
}
#textarea {
  padding-left:10px;
  padding-right:5px;  
}
#iframe {
  padding-left:5px;
  padding-right:10px;
  color:#ffffff;
  font-family: consolas,"courier new",monospace;    
}
#textareawrapper {
  width:100%;
  height:100%;
  background-color: #ffffff;
  position:relative;
  box-shadow:0 1px 3px rgba(0,0,0,0.12), 0 1px 2px rgba(0,0,0,0.24);
}
#iframewrapper {
  width:100%;
  height:100%;
  -webkit-overflow-scrolling: touch;
  background-color: #ffffff;
  box-shadow:0 1px 3px rgba(0,0,0,0.12), 0 1px 2px rgba(0,0,0,0.24);
  color:#ffffff;
  font-family: consolas,"courier new",monospace;  
}
#textareaCode {
  background-color: #ffffff;
  font-family: consolas,"courier new",monospace;
  font-size:15px;
  height:100%;
  width:100%;
  padding:8px;
  resize: none;
  border:none;
  line-height:normal;    
}
.CodeMirror.cm-s-default {
  line-height:normal;
  padding: 4px;
  height:100%;
  width:100%;
}
#iframeResult, #iframeSource {
  background-color: #000000;
  color:#ffffff;
  font-family: consolas,"courier new",monospace!important;  
  height:100%;
  width:100%;  
  padding:8px;
}
#iframeResult * {
  font-family: consolas,"courier new",monospace!important;  
}
#stackV {background-color:#999999;}
#stackV:hover {background-color:#BBBBBB !important;}
#stackV.horizontal {background-color:transparent;}
#stackV.horizontal:hover {background-color:#BBBBBB !important;}
#stackH.horizontal {background-color:#999999;}
#stackH.horizontal:hover {background-color:#999999 !important;}
#textareacontainer.horizontal,#iframecontainer.horizontal{
  height:50%;
  float:none;
  width:100%;
}
#textarea.horizontal{
  height:100%;
  padding-left:10px;
  padding-right:10px;
}
#iframe.horizontal{
  height:100%;
  padding-right:10px;
  padding-bottom:10px;
  padding-left:10px;  
}
#container.horizontal{
  min-height:200px;
  margin-left:0;
}
#tryitLeaderboard {
  background-color:#ffffff;
  overflow:hidden;
  text-align:center;
  margin-top:5px;
  height:90px;
}
.w3-dropdown-content {width:350px}
body.darktheme {
  background-color:rgb(40, 44, 52);
}
body.darktheme #tryitLeaderboard{
  background-color:rgb(40, 44, 52);
}
body.darktheme .trytopnav{
  background-color:#616161;
  color:#dddddd;
}
body.darktheme #container {
  background-color:#616161;
}
body.darktheme #textareaCode {
  background-color:rgb(40, 44, 52);
  color:#fff;
}
body.darktheme .trytopnav a,body.darktheme .trytopnav button {
  color:#dddddd;
}

#runbtn {
  background-color:#04AA6D;
  color:white;
  font-family: 'Source Sans Pro', sans-serif;
  font-size:18px;
  padding:6px 25px;
  margin-top:4px;
  border-radius:5px;
  word-spacing:10px;
}
#runbtn:hover {
  background-color: #059862 !important;
  color:white!important;
}
#getwebsitebtn {
  background-color:#04AA6D;
  font-family: 'Source Sans Pro', sans-serif;  
  color: white;
  font-size: 18px;
  padding:6px 15px;
  margin-top:4px;
  margin-right: 10px;
  display: block;
  float: right;
  border-radius: 5px;
}
#getwebsitebtn:hover {
  background-color: #059862 !important;
  color:white!important;
}
  
@media screen and (max-width: 727px) {
  .trytopnav {top:70px;}
  #container {top:116px;}
}
@media screen and (max-width: 467px) {
  .trytopnav {top:60px;}
  #container {top:106px;}
  .w3-dropdown-content {width:100%}
}
@media only screen and (max-device-width: 768px) {
  #iframewrapper {overflow: auto;}
  #container     {min-width:320px;}
  .stack         {display:none;}
  #tryhome       {display:block;}
}

@font-face {
font-family: 'fontawesome';
src:url('../../lib/fonts/fontawesome8deb.eot?14663396');
src:url('../../lib/fonts/fontawesome8deb.eot?14663396#iefix') format('embedded-opentype'),
    url('../../lib/fonts/fontawesome8deb.woff?14663396') format('woff'),
    url('../../lib/fonts/fontawesome8deb.ttf?14663396') format('truetype'),
    url('../../lib/fonts/fontawesome8deb.svg?14663396#fontawesome') format('svg');
font-weight:normal;
font-style:normal;
}
.fa {
  display:inline-block;
  font:normal normal normal 14px/1 FontAwesome;
  font-size:inherit;
  text-rendering:auto;
  -webkit-font-smoothing:antialiased;
  -moz-osx-font-smoothing:grayscale;
  transform:translate(0,0);
}
.fa-2x {
  font-size:2em;
}
.fa-home:before {content: '\e800'; }
.fa-save:before {content: '\e804'; }
.fa-rotate:before {content: '\e813'; }
.fa-adjust:before { content: '\e80b'; }
.fa-menu:before { content: '\f0c9'; }
.loader {
    border: 6px solid #f3f3f3; /* Light grey */
    border-top: 6px solid #3498db; /* Blue */
    border-radius: 50%;
    width: 60px;
    height: 60px;
    animation: spin 2s linear infinite;
}
#saveLoader {
    margin:20px;
}
#runloadercontainer{
  display:none;
  position:absolute;
  background-color:#000;
  z-index:9;
}
#runloader{
  margin:auto;
  border: 10px solid #333;
  border-top: 10px solid #04AA6D;
  border-radius: 50%;
  max-width: 150px;
  max-height: 150px;
  animation: spin 2s linear infinite;
  position:relative;
}
@keyframes spin {
    0% { transform: rotate(0deg); }
    100% { transform: rotate(360deg); }
}
#iframewrapper {
	
}
a.topnav-icons, a.topnav-icons.fa-home, a.topnav-icons.fa-menu, button.topnav-icons.fa-adjust {
    font-size: 28px!important;
}

</style>
<!--[if lt IE 8]>
<style>
#textareacontainer, #iframecontainer {width:48%;}
#container {height:500px;}
#textarea, #iframe {width:90%;height:450px;}
#textareaCode, #iframeResult {height:450px;}
.stack {display:none;}
</style>
<![endif]-->
</head>
<body>

<div id='tryitLeaderboard'>
<!-- TryitLeaderboard -->

  <!--<pre>try_it_leaderboard, all: [320,50][728,90][468,60]</pre>-->
  <div id="adngin-try_it_leaderboard-0"></div>
  <!-- adspace tryit-->
 
</div>

<div class="trytopnav">
<div class="w3-bar" style="overflow:auto">
  <a id="tryhome" href="https://www.w3schools.com/" target="_blank" title="w3schools.com Home" class="w3-button w3-bar-item topnav-icons fa fa-home" style="font-size:28px;margin-top:-2px"></a>
  <a href="javascript:void(0);" onclick="openMenu()" id="menuButton" title="Open Menu" class="w3-dropdown-click w3-button w3-bar-item topnav-icons fa fa-menu" style="font-size:28px;margin-top:-2px"></a>
  <a href="javascript:void(0);" onclick="restack(currentStack)" title="Change Orientation" class="w3-button w3-bar-item topnav-icons fa fa-rotate" style="font-size:28px;margin-top:-2px"></a>
  <a href="javascript:void(0);" class="w3-bar-item w3-button topnav-icons fa fa-adjust" onclick="retheme()" title="Change Theme" title="Change Theme" style="font-size:28px;margin-top:-2px"></a>
  <button id="runbtn" class="w3-button w3-bar-item ws-green w3-hover-white" onclick="submitTryit(1);ga('send', 'event', 'runCodePandas', 'click');uic_r_p();">Run &#10095;</button>
  <a id="getwebsitebtn" class="w3-button w3-bar-item w3-hover-white w3-hover-text-green w3-hide-small" href="https://www.w3schools.com/spaces/" target="_blank" onclick="ga('send', 'event', 'spacesFromTryit', 'click')">Get your<span class="w3-hide-medium"> own</span> website</a>
  <span class="w3-right w3-hide-small" style="padding:8px 16px 8px 0;display:block;float:right;margin-top:3px;"><span id="framesize"></span></span>
</div>

</div>
<div id="shield"></div>
<a href="javascript:void(0)" id="dragbar"></a>
<div id="container">
<div id="navbarDropMenu" class="w3-dropdown-content w3-bar-block w3-border" style="z-index:5">
<span onclick="openMenu()" class="w3-button w3-display-topright w3-transparent w3-hover-dark-grey" title="Close Menu" style="font-weight:bold;padding-top:10px;padding-bottom:11px;">&times;</span>
  <div class="w3-bar-block">
    <a class="w3-bar-item w3-button" href='javascript:void(0);' title="Change Orientaton" onclick="openMenu();restack(currentStack)"><i class="fa fa-rotate" style="font-size:26px;margin-left:-4px;margin-right:8px"></i><span style="position:relative;top:-4px;left:2px;">Change Orientation</span></a>
  </div>
  <footer class="w3-container w3-small ws-grey">
  <p><a style="display:inline;padding:0;" href="https://www.w3schools.com/about/about_privacy.asp" target="_blank" onclick="openMenu();" class="w3-hover-none ws-hover-text-green">Privacy policy</a> and 
  <a style="display:inline;padding:0;" href="https://www.w3schools.com/about/about_copyright.asp" target="_blank" onclick="openMenu();" class="w3-hover-none ws-hover-text-green">Copyright 1999-2022</a></p>
  </footer>
</div>
<div id="menuOverlay" class="w3-overlay w3-transparent" style="cursor:pointer;z-index:4"></div>
  <div id="textareacontainer">
    <div id="textarea">
      <div id="textareawrapper">
        <textarea autocomplete="off" id="textareaCode" wrap="logical" spellcheck="false">import pandas as pd

df = pd.read_csv('data.csv')

newdf = df.interpolate(method='linear')

print(newdf.to_string())
#Note that we use the to_string() method to return the entire DataFrame.
#Note: the rows 17, 27, 91, 118, 141 had NULL values in the Calories column.
</textarea>
            <textarea class="editor" id="textareaCode2" style="display:none">Duration,Pulse,Maxpulse,Calories
60,110,130,409.1
60,117,145,479.0
60,103,135,340.0
45,109,175,282.4
45,117,148,406.0
60,102,127,300.5
60,110,136,374.0
45,104,134,253.3
30,109,133,195.1
60,98,124,269.0
60,103,147,329.3
60,100,120,250.7
60,106,128,345.3
60,104,132,379.3
60,98,123,275.0
60,98,120,215.2
60,100,120,300.0
45,90,112,
60,103,123,323.0
45,97,125,243.0
60,108,131,364.2
45,100,119,282.0
60,130,101,300.0
45,105,132,246.0
60,102,126,334.5
60,100,120,250.0
60,92,118,241.0
60,103,132
60,100,132,280.0
60,102,129,380.3
60,92,115,243.0
45,90,112,180.1
60,101,124,299.0
60,93,113,223.0
60,107,136,361.0
60,114,140,415.0
60,102,127,300.5
60,100,120,300.1
60,100,120,300.0
45,104,129,266.0
45,90,112,180.1
60,98,126,286.0
60,100,122,329.4
60,111,138,400.0
60,111,131,397.0
60,99,119,273.0
60,109,153,387.6
45,111,136,300.0
45,108,129,298.0
60,111,139,397.6
60,107,136,380.2
80,123,146,643.1
60,106,130,263.0
60,118,151,486.0
30,136,175,238.0
60,121,146,450.7
60,118,121,413.0
45,115,144,305.0
20,153,172,226.4
45,123,152,321.0
210,108,160,1376.0
160,110,137,1034.4
160,109,135,853.0
45,118,141,341.0
20,110,130,131.4
180,90,130,800.4
150,105,135,873.4
150,107,130,816.0
20,106,136,110.4
300,108,143,1500.2
150,97,129,1115.0
60,109,153,387.6
90,100,127,700.0
150,97,127,953.2
45,114,146,304.0
90,98,125,563.2
45,105,134,251.0
45,110,141,300.0
120,100,130,500.4
270,100,131,1729.0
30,159,182,319.2
45,149,169,344.0
30,103,139,151.1
120,100,130,500.0
45,100,120,225.3
30,151,170,300.1
45,102,136,234.0
120,100,157,1000.1
45,129,103,242.0
20,83,107,50.3
180,101,127,600.1
45,107,137,
30,90,107,105.3
15,80,100,50.5
20,150,171,127.4
20,151,168,229.4
30,95,128,128.2
25,152,168,244.2
30,109,131,188.2
90,93,124,604.1
20,95,112,77.7
90,90,110,500.0
90,90,100,500.0
90,90,100,500.4
30,92,108,92.7
30,93,128,124.0
180,90,120,800.3
30,90,120,86.2
90,90,120,500.3
210,137,184,1860.4
60,102,124,325.2
45,107,124,275.0
15,124,139,124.2
45,100,120,225.3
60,108,131,367.6
60,108,151,351.7
60,116,141,443.0
60,97,122,277.4
60,105,125,
60,103,124,332.7
30,112,137,193.9
45,100,120,100.7
60,119,169,336.7
60,107,127,344.9
60,111,151,368.5
60,98,122,271.0
60,97,124,275.3
60,109,127,382.0
90,99,125,466.4
60,114,151,384.0
60,104,134,342.5
60,107,138,357.5
60,103,133,335.0
60,106,132,327.5
60,103,136,339.0
20,136,156,189.0
45,117,143,317.7
45,115,137,318.0
45,113,138,308.0
20,141,162,222.4
60,108,135,390.0
60,97,127,
45,100,120,250.4
45,122,149,335.4
60,136,170,470.2
45,106,126,270.8
60,107,136,400.0
60,112,146,361.9
30,103,127,185.0
60,110,150,409.4
60,106,134,343.0
60,109,129,353.2
60,109,138,374.0
30,150,167,275.8
60,105,128,328.0
60,111,151,368.5
60,97,131,270.4
60,100,120,270.4
60,114,150,382.8
30,80,120,240.9
30,85,120,250.4
45,90,130,260.4
45,95,130,270.0
45,100,140,280.9
60,105,140,290.8
60,110,145,300.4
60,115,145,310.2
75,120,150,320.4
75,125,150,330.4
</textarea>

        <form id="codeForm" autocomplete="off" style="margin:0px;display:none;">
          <input type="hidden" name="code" id="code" />
          <input type="hidden" name="mcode" id="mcode" />
        </form>
       </div>
    </div>
  </div>
  <div id="iframecontainer">
    <div id="iframe">
      <div id="runloadercontainer"><div id="runloader"></div></div>
      <div id="iframewrapper">
        <div id="iframeResult" style="white-space:nowrap;overflow:auto;"><pre>
       Duration  Pulse  Maxpulse  Calories
  0          60    110       130    409.10
  1          60    117       145    479.00
  2          60    103       135    340.00
  3          45    109       175    282.40
  4          45    117       148    406.00
  5          60    102       127    300.50
  6          60    110       136    374.00
  7          45    104       134    253.30
  8          30    109       133    195.10
  9          60     98       124    269.00
  10         60    103       147    329.30
  11         60    100       120    250.70
  12         60    106       128    345.30
  13         60    104       132    379.30
  14         60     98       123    275.00
  15         60     98       120    215.20
  16         60    100       120    300.00
  17         45     90       112    311.50
  18         60    103       123    323.00
  19         45     97       125    243.00
  20         60    108       131    364.20
  21         45    100       119    282.00
  22         60    130       101    300.00
  23         45    105       132    246.00
  24         60    102       126    334.50
  25         60    100       120    250.00
  26         60     92       118    241.00
  27         60    103       132    260.50
  28         60    100       132    280.00
  29         60    102       129    380.30
  30         60     92       115    243.00
  31         45     90       112    180.10
  32         60    101       124    299.00
  33         60     93       113    223.00
  34         60    107       136    361.00
  35         60    114       140    415.00
  36         60    102       127    300.50
  37         60    100       120    300.10
  38         60    100       120    300.00
  39         45    104       129    266.00
  40         45     90       112    180.10
  41         60     98       126    286.00
  42         60    100       122    329.40
  43         60    111       138    400.00
  44         60    111       131    397.00
  45         60     99       119    273.00
  46         60    109       153    387.60
  47         45    111       136    300.00
  48         45    108       129    298.00
  49         60    111       139    397.60
  50         60    107       136    380.20
  51         80    123       146    643.10
  52         60    106       130    263.00
  53         60    118       151    486.00
  54         30    136       175    238.00
  55         60    121       146    450.70
  56         60    118       121    413.00
  57         45    115       144    305.00
  58         20    153       172    226.40
  59         45    123       152    321.00
  60        210    108       160   1376.00
  61        160    110       137   1034.40
  62        160    109       135    853.00
  63         45    118       141    341.00
  64         20    110       130    131.40
  65        180     90       130    800.40
  66        150    105       135    873.40
  67        150    107       130    816.00
  68         20    106       136    110.40
  69        300    108       143   1500.20
  70        150     97       129   1115.00
  71         60    109       153    387.60
  72         90    100       127    700.00
  73        150     97       127    953.20
  74         45    114       146    304.00
  75         90     98       125    563.20
  76         45    105       134    251.00
  77         45    110       141    300.00
  78        120    100       130    500.40
  79        270    100       131   1729.00
  80         30    159       182    319.20
  81         45    149       169    344.00
  82         30    103       139    151.10
  83        120    100       130    500.00
  84         45    100       120    225.30
  85         30    151       170    300.10
  86         45    102       136    234.00
  87        120    100       157   1000.10
  88         45    129       103    242.00
  89         20     83       107     50.30
  90        180    101       127    600.10
  91         45    107       137    352.70
  92         30     90       107    105.30
  93         15     80       100     50.50
  94         20    150       171    127.40
  95         20    151       168    229.40
  96         30     95       128    128.20
  97         25    152       168    244.20
  98         30    109       131    188.20
  99         90     93       124    604.10
  100        20     95       112     77.70
  101        90     90       110    500.00
  102        90     90       100    500.00
  103        90     90       100    500.40
  104        30     92       108     92.70
  105        30     93       128    124.00
  106       180     90       120    800.30
  107        30     90       120     86.20
  108        90     90       120    500.30
  109       210    137       184   1860.40
  110        60    102       124    325.20
  111        45    107       124    275.00
  112        15    124       139    124.20
  113        45    100       120    225.30
  114        60    108       131    367.60
  115        60    108       151    351.70
  116        60    116       141    443.00
  117        60     97       122    277.40
  118        60    105       125    305.05
  119        60    103       124    332.70
  120        30    112       137    193.90
  121        45    100       120    100.70
  122        60    119       169    336.70
  123        60    107       127    344.90
  124        60    111       151    368.50
  125        60     98       122    271.00
  126        60     97       124    275.30
  127        60    109       127    382.00
  128        90     99       125    466.40
  129        60    114       151    384.00
  130        60    104       134    342.50
  131        60    107       138    357.50
  132        60    103       133    335.00
  133        60    106       132    327.50
  134        60    103       136    339.00
  135        20    136       156    189.00
  136        45    117       143    317.70
  137        45    115       137    318.00
  138        45    113       138    308.00
  139        20    141       162    222.40
  140        60    108       135    390.00
  141        60     97       127    320.20
  142        45    100       120    250.40
  143        45    122       149    335.40
  144        60    136       170    470.20
  145        45    106       126    270.80
  146        60    107       136    400.00
  147        60    112       146    361.90
  148        30    103       127    185.00
  149        60    110       150    409.40
  150        60    106       134    343.00
  151        60    109       129    353.20
  152        60    109       138    374.00
  153        30    150       167    275.80
  154        60    105       128    328.00
  155        60    111       151    368.50
  156        60     97       131    270.40
  157        60    100       120    270.40
  158        60    114       150    382.80
  159        30     80       120    240.90
  160        30     85       120    250.40
  161        45     90       130    260.40
  162        45     95       130    270.00
  163        45    100       140    280.90
  164        60    105       140    290.80
  165        60    110       145    300.40
  166        60    115       145    310.20
  167        75    120       150    320.40
  168        75    125       150    330.40
</pre>
</div>
      </div>
    </div>
  </div>
</div>
<script>

function submitTryit(n) {
  if (window.editor) {
    window.editor.save();
  }
  var text = document.getElementById("textareaCode").value;
  var mtext = document.getElementById("textareaCode2").value;
  var ifr = document.createElement("iframe");
  ifr.setAttribute("frameborder", "0");
  ifr.setAttribute("id", "iframeResult");
  ifr.setAttribute("name", "iframeResult");  
  document.getElementById("iframewrapper").innerHTML = "";
  document.getElementById("iframewrapper").appendChild(ifr);
  document.getElementById("iframeResult").addEventListener("load", hideSpinner);
  if (loadSave == true ) {
    ifr.setAttribute("src", "https://www.w3schools.com/code/opentext.htm");
  } else if (loadSave == false) {
    displaySpinner();
    var t=text;
    t=t.replace(/=/gi,"w3equalsign");
    t=t.replace(/\+/gi,"w3plussign");    
    var pos=t.search(/script/i)
    while (pos>0) {
      t=t.substring(0,pos) + "w3" + t.substr(pos,3) + "w3" + t.substr(pos+3,3) + "tag" + t.substr(pos+6);
	    pos=t.search(/script/i);
    }
    var t2=mtext;
    t2=t2.replace(/=/gi,"w3equalsign");
    t2=t2.replace(/\+/gi,"w3plussign");    
    var pos=t2.search(/script/i)
    while (pos>0) {
      t2=t2.substring(0,pos) + "w3" + t2.substr(pos,3) + "w3" + t2.substr(pos+3,3) + "tag" + t2.substr(pos+6);
	    pos=t2.search(/script/i);
    }

    document.getElementById("code").value=t;
    document.getElementById("mcode").value=t2;
//    document.getElementById("codeForm").action = "https://try.w3schools.com/try_python.php?x=" + Math.random();
    document.getElementById("codeForm").action = "https://try.w3schools.com/try_python_multi_csv.php?x=" + Math.random();
    document.getElementById('codeForm').method = "post";
    document.getElementById('codeForm').acceptCharset = "utf-8";
    document.getElementById('codeForm').target = "iframeResult";
    document.getElementById("codeForm").submit();
  } else {
    var ifrw = (ifr.contentWindow) ? ifr.contentWindow : (ifr.contentDocument.document) ? ifr.contentDocument.document : ifr.contentDocument;
    ifrw.document.open();
    ifrw.document.write(text);  
    ifrw.document.close();
    //23.02.2016: contentEditable is set to true, to fix text-selection (bug) in firefox.
    //(and back to false to prevent the content from being editable)
    //(To reproduce the error: Select text in the result window with, and without, the contentEditable statements below.)  
    if (ifrw.document.body && !ifrw.document.body.isContentEditable) {
      ifrw.document.body.contentEditable = true;
      ifrw.document.body.contentEditable = false;
    }
  }
}

function hideSpinner() {
  document.getElementById("runloadercontainer").style.display = "none";
}
function displaySpinner() {
  var i, c, w, h, r, top;
  i = document.getElementById("iframeResult");
  w = w3_getStyleValue(i, "width");
  h = w3_getStyleValue(i, "height");
  c = document.getElementById("runloadercontainer");
  c.style.width = w;
  c.style.height = h;
  c.style.display = "block";
  w = Number(w.replace("px", "")) / 5;
  r = document.getElementById("runloader");
  r.style.width = w + "px";
  r.style.height = w + "px";
  h = w3_getStyleValue(r, "height");
  h = Number(h.replace("px", "")) / 2;
  top = w3_getStyleValue(c, "height");
  top = Number(top.replace("px", "")) / 2;
  top = top - h
  r.style.top = top + "px";
}


var currentStack=true;
if ((window.screen.availWidth <= 768 && window.innerHeight > window.innerWidth) || "" == " horizontal") {restack(true);}
function restack(horizontal) {
    var tc, ic, t, i, c, f, sv, sh, d, height, flt, width;
    tc = document.getElementById("textareacontainer");
    ic = document.getElementById("iframecontainer");
    t = document.getElementById("textarea");
    i = document.getElementById("iframe");
    c = document.getElementById("container");    
    sv = document.getElementById("stackV");
    sh = document.getElementById("stackH");
    tc.className = tc.className.replace("horizontal", "");
    ic.className = ic.className.replace("horizontal", "");        
    t.className = t.className.replace("horizontal", "");        
    i.className = i.className.replace("horizontal", "");        
    c.className = c.className.replace("horizontal", "");                        
    if (sv) {sv.className = sv.className.replace("horizontal", "")};
    if (sv) {sh.className = sh.className.replace("horizontal", "")};
    stack = "";
    if (horizontal) {
        tc.className = tc.className + " horizontal";
        ic.className = ic.className + " horizontal";        
        t.className = t.className + " horizontal";        
        i.className = i.className + " horizontal";                
        c.className = c.className + " horizontal";                
        if (sv) {sv.className = sv.className + " horizontal"};
        if (sv) {sh.className = sh.className + " horizontal"};
        stack = " horizontal";
        document.getElementById("textareacontainer").style.height = "50%";
        document.getElementById("iframecontainer").style.height = "50%";
        document.getElementById("textareacontainer").style.width = "100%";
        document.getElementById("iframecontainer").style.width = "100%";
        currentStack=false;
    } else {
        document.getElementById("textareacontainer").style.height = "100%";
        document.getElementById("iframecontainer").style.height = "100%";
        document.getElementById("textareacontainer").style.width = "50%";
        document.getElementById("iframecontainer").style.width = "50%";
        currentStack=true;        
    }
    fixDragBtn();
    showFrameSize();
}
function retheme() {
  var cc = document.body.className;
  if (cc.indexOf("darktheme") > -1) {
    document.body.className = cc.replace("darktheme", "");
    if (opener) {opener.document.body.className = cc.replace("darktheme", "");}
    localStorage.setItem("preferredmode", "light");
  } else {
    document.body.className += " darktheme";
    if (opener) {opener.document.body.className += " darktheme";}
    localStorage.setItem("preferredmode", "dark");
  }
}
(
function setThemeMode() {
  var x = localStorage.getItem("preferredmode");
  if (x == "dark") {
    document.body.className += " darktheme";
  }
})();
function showFrameSize() {
  var t;
  var width, height;
  width = Number(w3_getStyleValue(document.getElementById("iframeResult"), "width").replace("px", "")).toFixed();
  height = Number(w3_getStyleValue(document.getElementById("iframeResult"), "height").replace("px", "")).toFixed();
  document.getElementById("framesize").innerHTML = "Result Size: <span>" + width + " x " + height + "</span>";
}
var dragging = false;
var stack;
function fixDragBtn() {
  var textareawidth, leftpadding, dragleft, containertop, buttonwidth
  var containertop = Number(w3_getStyleValue(document.getElementById("container"), "top").replace("px", ""));
  if (stack != " horizontal") {
    document.getElementById("dragbar").style.width = "5px";    
    textareasize = Number(w3_getStyleValue(document.getElementById("textareawrapper"), "width").replace("px", ""));
    leftpadding = Number(w3_getStyleValue(document.getElementById("textarea"), "padding-left").replace("px", ""));
    buttonwidth = Number(w3_getStyleValue(document.getElementById("dragbar"), "width").replace("px", ""));
    textareaheight = w3_getStyleValue(document.getElementById("textareawrapper"), "height");
    dragleft = textareasize + leftpadding + (leftpadding / 2) - (buttonwidth / 2);
    document.getElementById("dragbar").style.top = containertop + "px";
    document.getElementById("dragbar").style.left = dragleft + "px";
    document.getElementById("dragbar").style.height = textareaheight;
    document.getElementById("dragbar").style.cursor = "col-resize";
    
  } else {
    document.getElementById("dragbar").style.height = "5px";
    if (window.getComputedStyle) {
        textareawidth = window.getComputedStyle(document.getElementById("textareawrapper"),null).getPropertyValue("height");
        textareaheight = window.getComputedStyle(document.getElementById("textareawrapper"),null).getPropertyValue("width");
        leftpadding = window.getComputedStyle(document.getElementById("textarea"),null).getPropertyValue("padding-top");
        buttonwidth = window.getComputedStyle(document.getElementById("dragbar"),null).getPropertyValue("height");
    } else {
        dragleft = document.getElementById("textareawrapper").currentStyle["width"];
    }
    textareawidth = Number(textareawidth.replace("px", ""));
    leftpadding = Number(leftpadding .replace("px", ""));
    buttonwidth = Number(buttonwidth .replace("px", ""));
    dragleft = containertop + textareawidth + leftpadding + (leftpadding / 2);
    document.getElementById("dragbar").style.top = dragleft + "px";
    document.getElementById("dragbar").style.left = "5px";
    document.getElementById("dragbar").style.width = textareaheight;
    document.getElementById("dragbar").style.cursor = "row-resize";        
  }
}
function dragstart(e) {
  e.preventDefault();
  dragging = true;
  var main = document.getElementById("iframecontainer");
}
function dragmove(e) {
  if (dragging) 
  {
    document.getElementById("shield").style.display = "block";        
    if (stack != " horizontal") {
      var percentage = (e.pageX / window.innerWidth) * 100;
      if (percentage > 5 && percentage < 98) {
        var mainPercentage = 100-percentage;
        document.getElementById("textareacontainer").style.width = percentage + "%";
        document.getElementById("iframecontainer").style.width = mainPercentage + "%";
        fixDragBtn();
      }
    } else {
      var containertop = Number(w3_getStyleValue(document.getElementById("container"), "top").replace("px", ""));
      var percentage = ((e.pageY - containertop + 20) / (window.innerHeight - containertop + 20)) * 100;
      if (percentage > 5 && percentage < 98) {
        var mainPercentage = 100-percentage;
        document.getElementById("textareacontainer").style.height = percentage + "%";
        document.getElementById("iframecontainer").style.height = mainPercentage + "%";
        fixDragBtn();
      }
    }
    showFrameSize();    
  }
}
function dragend() {
  document.getElementById("shield").style.display = "none";
  dragging = false;
  var vend = navigator.vendor;
  if (window.editor && vend.indexOf("Apple") == -1) {
      window.editor.refresh();
  }
}
if (window.addEventListener) {              
  document.getElementById("dragbar").addEventListener("mousedown", function(e) {dragstart(e);});
  document.getElementById("dragbar").addEventListener("touchstart", function(e) {dragstart(e);});
  window.addEventListener("mousemove", function(e) {dragmove(e);});
  window.addEventListener("touchmove", function(e) {dragmove(e);});
  window.addEventListener("mouseup", dragend);
  window.addEventListener("touchend", dragend);
  window.addEventListener("load", fixDragBtn);
  window.addEventListener("load", showFrameSize);
}


function colorcoding() {
  var ua = navigator.userAgent;
  //Opera Mini refreshes the page when trying to edit the textarea.
  if (ua && ua.toUpperCase().indexOf("OPERA MINI") > -1) { return false; }
  window.editor = CodeMirror.fromTextArea(document.getElementById("textareaCode"), {
    mode: "text/x-python",
    lineWrapping: true,
    smartIndent: false
  });
//  window.editor.on("change", function () {window.editor.save();});
}
colorcoding();

function w3_getStyleValue(elmnt,style) {
    if (window.getComputedStyle) {
        return window.getComputedStyle(elmnt,null).getPropertyValue(style);
    } else {
        return elmnt.currentStyle[style];
    }
}

function openMenu() {
    var x = document.getElementById("navbarDropMenu");
    var y = document.getElementById("menuOverlay");
    var z = document.getElementById("menuButton");
    if (z.className.indexOf("w3-text-gray") == -1) {
        z.className += " w3-text-gray";
    } else { 
        z.className = z.className.replace(" w3-text-gray", "");
    }
    if (z.className.indexOf("w3-gray") == -1) {
        z.className += " w3-gray";
    } else { 
        z.className = z.className.replace(" w3-gray", "");
    }
    if (x.className.indexOf("w3-show") == -1) {
        x.className += " w3-show";
    } else { 
        x.className = x.className.replace(" w3-show", "");
    }
    if (y.className.indexOf("w3-show") == -1) {
        y.className += " w3-show";
    } else { 
        y.className = y.className.replace(" w3-show", "");
    }

}
// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
    if (event.target == document.getElementById("menuOverlay")) {
        openMenu();
    } 
}
uic_r_e()
</script>
</body>

<!-- Mirrored from www.w3schools.com/python/pandas/trypandas.asp?filename=demo_ref_df_interpolate by HTTrack Website Copier/3.x [XR&CO'2014], Tue, 31 May 2022 13:51:05 GMT -->
</html>