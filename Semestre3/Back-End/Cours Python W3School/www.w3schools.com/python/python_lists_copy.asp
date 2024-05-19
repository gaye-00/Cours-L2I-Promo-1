
<!DOCTYPE html>
<html lang="en-US">

<!-- Mirrored from www.w3schools.com/python/python_lists_copy.asp by HTTrack Website Copier/3.x [XR&CO'2014], Tue, 31 May 2022 13:38:06 GMT -->
<head>
<title>Python - Copy Lists</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="Keywords" content="HTML, Python, CSS, SQL, JavaScript, How to, PHP, Java, C, C++, C#, jQuery, Bootstrap, Colors, W3.CSS, XML, MySQL, Icons, NodeJS, React, Graphics, Angular, R, AI, Git, Data Science, Code Game, Tutorials, Programming, Web Development, Training, Learning, Quiz, Exercises, Courses, Lessons, References, Examples, Learn to code, Source code, Demos, Tips, Website">
<meta name="Description" content="Well organized and easy to understand Web building tutorials with lots of examples of how to use HTML, CSS, JavaScript, SQL, Python, PHP, Bootstrap, Java, XML and more.">
<meta property="og:image" content="https://www.w3schools.com/images/w3schools_logo_436_2.png">
<meta property="og:image:type" content="image/png">
<meta property="og:image:width" content="436">
<meta property="og:image:height" content="228">
<meta property="og:description" content="W3Schools offers free online tutorials, references and exercises in all the major languages of the web. Covering popular subjects like HTML, CSS, JavaScript, Python, SQL, Java, and many, many more.">
<link rel="icon" href="https://www.w3schools.com/favicon.ico" type="image/x-icon">
<link rel="preload" href="../lib/fonts/fontawesome8deb.woff2?14663396" as="font" type="font/woff2" crossorigin> 
<link rel="preload" href="../lib/fonts/source-code-pro-v14-latin-regular.woff2" as="font" type="font/woff2" crossorigin> 
<link rel="preload" href="../lib/fonts/roboto-mono-v13-latin-500.woff2" as="font" type="font/woff2" crossorigin> 
<link rel="preload" href="../lib/fonts/source-sans-pro-v14-latin-700.woff2" as="font" type="font/woff2" crossorigin> 
<link rel="preload" href="../lib/fonts/source-sans-pro-v14-latin-600.woff2" as="font" type="font/woff2" crossorigin> 
<link rel="preload" href="../lib/fonts/freckle-face-v9-latin-regular.woff2" as="font" type="font/woff2" crossorigin> 
<link rel="stylesheet" href="../lib/w3schools30.css">

<script>
(function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
(i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
})(window,document,'script','../../www.google-analytics.com/analytics.js','ga');
ga('create', 'UA-3855518-1', 'auto');
ga('require', 'displayfeatures');
ga('require', 'GTM-WJ88MZ5');
ga('send', 'pageview');
var subjectFolder = location.pathname;
subjectFolder = subjectFolder.replace("https://www.w3schools.com/", "");
subjectFolder = subjectFolder.substr(0, subjectFolder.indexOf("https://www.w3schools.com/"));
</script>

<script src="../lib/uic2c70.js?v=1.0.3"></script>
<script data-cfasync="false" type="text/javascript">
var k42 = false;

k42 = true;

</script>
<script data-cfasync="false" type="text/javascript">
    window.snigelPubConf = {
    "adengine": {

      "activeAdUnits": ["main_leaderboard", "sidebar_top", "bottom_left", "bottom_right"]

  }
}
uic_r_a()
</script>
<script async data-cfasync="false" src="../../cdn.snigelweb.com/adengine/w3schools.com/loader.js" type="text/javascript"></script>
<script src="../lib/my-learning21cd.js?v=1.0.9"></script>
<script type='text/javascript'>
var stickyadstatus = "";
function fix_stickyad() {
  document.getElementById("stickypos").style.position = "sticky";
  var elem = document.getElementById("stickyadcontainer");
  if (!elem) {return false;}
  if (document.getElementById("skyscraper")) {
    var skyWidth = Number(w3_getStyleValue(document.getElementById("skyscraper"), "width").replace("px", ""));  
    }
  else {
    var skyWidth = Number(w3_getStyleValue(document.getElementById("right"), "width").replace("px", ""));  
  }
  elem.style.width = skyWidth + "px";
  if (window.innerWidth <= 992) {
    elem.style.position = "";
    elem.style.top = stickypos + "px";
    return false;
  }
  var stickypos = document.getElementById("stickypos").offsetTop;
  var docTop = window.pageYOffset || document.documentElement.scrollTop || document.body.scrollTop;
  var adHeight = Number(w3_getStyleValue(elem, "height").replace("px", ""));
  if (stickyadstatus == "") {
    if ((stickypos - docTop) < 60) {
      elem.style.position = "fixed";
      elem.style.top = "60px";
      stickyadstatus = "sticky";
      document.getElementById("stickypos").style.position = "sticky";

    }
  } else {
    if ((docTop + 60) - stickypos < 0) {  
      elem.style.position = "";
      elem.style.top = stickypos + "px";
      stickyadstatus = "";
      document.getElementById("stickypos").style.position = "static";
    }
  }
  if (stickyadstatus == "sticky") {
    if ((docTop + adHeight + 60) > document.getElementById("footer").offsetTop) {
      elem.style.position = "absolute";
      elem.style.top = (document.getElementById("footer").offsetTop - adHeight) + "px";
      document.getElementById("stickypos").style.position = "static";
    } else {
        elem.style.position = "fixed";
        elem.style.top = "60px";
        stickyadstatus = "sticky";
        document.getElementById("stickypos").style.position = "sticky";
    }
  }
}
function w3_getStyleValue(elmnt,style) {
  if (window.getComputedStyle) {
    return window.getComputedStyle(elmnt,null).getPropertyValue(style);
  } else {
    return elmnt.currentStyle[style];
  }
}
</script>

</head>
<body>
<style>
#darkmodemenu {
  position:absolute;
  top:-40px;
  right:16px;
  padding:5px 20px 10px 18px;
  border-bottom-left-radius:5px;
  border-bottom-right-radius:5px;
  z-index:-1;
  transition: top 0.2s;
  user-select: none;
}
#darkmodemenu input,#darkmodemenu label {
  cursor:pointer;
}
</style>
<script>
(
function setThemeMode() {
  var x = localStorage.getItem("preferredmode");
  var y = localStorage.getItem("preferredpagemode");  
  if (x == "dark") {
    document.body.className += " darktheme";
    ga('send', 'event', 'theme' , "darkcode");    
  }
  if (y == "dark") {
    document.body.className += " darkpagetheme";
    ga('send', 'event', 'theme' , "darkpage");
  }
})();
</script>
<div id="pagetop" class="w3-bar w3-card-2 notranslate">
  <a href="https://www.w3schools.com/" class="w3-bar-item w3-button w3-hover-none w3-left w3-padding-16" title="Home" style="width:77px">
    <i class="fa fa-logo ws-text-green ws-hover-text-green" style="position:relative;font-size:42px!important;"></i>
  </a>

<style>
@media screen and (max-width: 1080px) {
  .ws-hide-1080 {
    ddddisplay: none !important;
  }
}
@media screen and (max-width: 1160px) {
  .topnavmain_video {
    display: none !important;
  }
}
</style>

  <a class="w3-bar-item w3-button w3-hide-small barex bar-item-hover w3-padding-24" href="javascript:void(0)" onclick="w3_open_nav('tutorials')" id="navbtn_tutorials" title="Tutorials" style="width:116px">Tutorials <i class='fa fa-caret-down' style="font-size:20px;"></i><i class='fa fa-caret-up' style="display:none"></i></a>
  <a class="w3-bar-item w3-button w3-hide-small barex bar-item-hover w3-padding-24" href="javascript:void(0)" onclick="w3_open_nav('references')" id="navbtn_references" title="References" style="width:132px">References <i class='fa fa-caret-down' style="font-size:20px;"></i><i class='fa fa-caret-up' style="display:none"></i></a>
  <a class="w3-bar-item w3-button w3-hide-small barex bar-item-hover w3-padding-24 ws-hide-800" href="javascript:void(0)" onclick="w3_open_nav('exercises')" id="navbtn_exercises" title="Exercises" style="width:118px">Exercises <i class='fa fa-caret-down' style="font-size:20px;"></i><i class='fa fa-caret-up' style="display:none"></i></a>
  <a class="w3-bar-item w3-button w3-hide-medium bar-item-hover w3-hide-small w3-padding-24 barex topnavmain_video" href="https://www.w3schools.com/videos/index.php" title="Video Tutorials" onclick="ga('send', 'event', 'Videos' , 'fromTopnavMain')">Videos</a>
  <a class="w3-bar-item w3-button w3-hide-medium bar-item-hover w3-hide-small w3-padding-24 barex" href="https://www.w3schools.com/pro/index.php" title="Go Pro" onclick="ga('send', 'event', 'Pro' , 'fromTopnavMainASP')">Pro <span class="ribbon-topnav ws-hide-1080">NEW</span></a>

  <a class="w3-bar-item w3-button bar-item-hover w3-padding-24" href="javascript:void(0)" onclick="w3_open()" id="navbtn_menu" title="Menu" style="width:93px">Menu <i class='fa fa-caret-down'></i><i class='fa fa-caret-up' style="display:none"></i></a>

  <div id="loginactioncontainer" class="w3-right w3-padding-16" style="margin-left:50px">
    <div id="mypagediv"></div>
      <!-- <button id="w3loginbtn" style="border:none;display:none;cursor:pointer" class="login w3-right w3-hover-greener" onclick='w3_open_nav("login")'>LOG IN</button>-->
      <a id="w3loginbtn" class="w3-bar-item w3-btn bar-item-hover w3-right" style="display:none;width:130px;background-color:#04AA6D;color:white;border-radius:25px;" href="https://profile.w3schools.com/log-in?redirect_url=https%3A%2F%2Fmy-learning.w3schools.com" target="_self">Log in</a>
  </div>

  <div class="w3-right w3-padding-16">
    <!--<a class="w3-bar-item w3-button bar-icon-hover w3-right w3-hover-white w3-hide-large w3-hide-medium" href="javascript:void(0)" onclick="w3_open()" title="Menu"><i class='fa'>&#xf0c9;</i></a>
    -->
    <a class="w3-bar-item w3-button bar-item-hover w3-right w3-hide-small barex" style="width: 140px; border-radius: 25px; margin-right: 15px;" href="https://courses.w3schools.com/" target="_blank" id="cert_navbtn" onclick="ga('send', 'event', 'Courses' , 'Clicked on courses in Main top navigation');" title="Courses">Paid Courses</a>
    <a class="w3-bar-item w3-button bar-item-hover w3-right ws-hide-900 w3-hide-small barex ws-pink" style="border-radius: 25px; margin-right: 15px;" href="https://www.w3schools.com/spaces" target="_blank" onclick="ga('send', 'event', 'spacesFromTopnavMain', 'click');" title="Get Your Own Website With W3Schools Spaces">Website <span class="ribbon-topnav ws-hide-1066">NEW</span></a>
  </div>  
</div>

<div style='display:none;position:absolute;z-index:4;right:52px;height:44px;background-color:#282A35;letter-spacing:normal;' id='googleSearch'>
  <div class='gcse-search'></div>
</div>
<div style='display:none;position:absolute;z-index:3;right:111px;height:44px;background-color:#282A35;text-align:right;padding-top:9px;' id='google_translate_element'></div>

<div class='w3-card-2 topnav notranslate' id='topnav'>
  <div style="overflow:auto;">
    <div class="w3-bar w3-left" style="width:100%;overflow:hidden;height:44px">
      <a href='javascript:void(0);' class='topnav-icons fa fa-menu w3-hide-large w3-left w3-bar-item w3-button' onclick='open_menu()' title='Menu'></a>
      <a href='https://www.w3schools.com/default.asp' class='topnav-icons fa fa-home w3-left w3-bar-item w3-button' title='Home'></a>
      <a class="w3-bar-item w3-button" href='https://www.w3schools.com/html/default.asp' title='HTML Tutorial' style="padding-left:18px!important;padding-right:18px!important;">HTML</a>
      <a class="w3-bar-item w3-button" href='https://www.w3schools.com/css/default.asp' title='CSS Tutorial'>CSS</a>
      <a class="w3-bar-item w3-button" href='https://www.w3schools.com/js/default.asp' title='JavaScript Tutorial'>JAVASCRIPT</a>
      <a class="w3-bar-item w3-button" href='https://www.w3schools.com/sql/default.asp' title='SQL Tutorial'>SQL</a>
      <a class="w3-bar-item w3-button" href='default.html' title='Python Tutorial'>PYTHON</a>
      <a class="w3-bar-item w3-button" href='https://www.w3schools.com/php/default.asp' title='PHP Tutorial'>PHP</a>
      <a class="w3-bar-item w3-button" href='https://www.w3schools.com/bootstrap/bootstrap_ver.asp' title='Bootstrap Tutorial'>BOOTSTRAP</a>
      <a class="w3-bar-item w3-button" href='https://www.w3schools.com/howto/default.asp' title='How To'>HOW TO</a>
      <a class="w3-bar-item w3-button" href='https://www.w3schools.com/w3css/default.asp' title='W3.CSS Tutorial'>W3.CSS</a>
      <a class="w3-bar-item w3-button" href='https://www.w3schools.com/java/default.asp' title='Java Tutorial'>JAVA</a>
      <a class="w3-bar-item w3-button" href='https://www.w3schools.com/jquery/default.asp' title='jQuery Tutorial'>JQUERY</a>
      <a class="w3-bar-item w3-button" href='https://www.w3schools.com/c/index.php' title='C Tutorial'>C</a>
      <a class="w3-bar-item w3-button" href='https://www.w3schools.com/cpp/default.asp' title='C++ Tutorial'>C++</a>
      <a class="w3-bar-item w3-button" href='https://www.w3schools.com/cs/index.php' title='C# Tutorial'>C#</a>
      <a class="w3-bar-item w3-button" href='https://www.w3schools.com/r/default.asp' title='R Tutorial'>R</a>
      <a class="w3-bar-item w3-button" href='https://www.w3schools.com/react/default.asp' title='React Tutorial'>React</a>
      <a href='javascript:void(0);' class='topnav-icons fa w3-right w3-bar-item w3-button' onclick='gSearch(this)' title='Search W3Schools'>&#xe802;</a>
      <a href='javascript:void(0);' class='topnav-icons fa w3-right w3-bar-item w3-button' onclick='gTra(this)' title='Translate W3Schools'>&#xe801;</a>
<!--      <a href='javascript:void(0);' class='topnav-icons fa w3-right w3-bar-item w3-button' onclick='changecodetheme(this)' title='Toggle Dark Code Examples'>&#xe80b;</a>-->
      <a href='javascript:void(0);' class='topnav-icons fa w3-right w3-bar-item w3-button' onmouseover="mouseoverdarkicon()" onmouseout="mouseoutofdarkicon()" onclick='changepagetheme(2)'>&#xe80b;</a>


      <!--
      <a class="w3-bar-item w3-button w3-right" id='topnavbtn_exercises' href='javascript:void(0);' onclick='w3_open_nav("exercises")' title='Exercises'>EXERCISES <i class='fa fa-caret-down'></i><i class='fa fa-caret-up' style='display:none'></i></a>
      -->
      
    </div>
    
<div id="darkmodemenu" class="ws-black" onmouseover="mouseoverdarkicon()" onmouseout="mouseoutofdarkicon()">
<input id="radio_darkpage" type="checkbox" name="radio_theme_mode" onclick="click_darkpage()"><label for="radio_darkpage"> Dark mode</label>
<br>
<input id="radio_darkcode" type="checkbox" name="radio_theme_mode" onclick="click_darkcode()"><label for="radio_darkcode"> Dark code</label>
</div>

<nav id="nav_tutorials" class="w3-hide-small" style="position:absolute;padding-bottom:60px;">
 <div class="w3-content" style="max-width:1100px;font-size:18px">
 <span onclick="w3_close_nav('tutorials')" class="w3-button w3-xxxlarge w3-display-topright w3-hover-white sectionxsclosenavspan" style="padding-right:30px;padding-left:30px;">&times;</span><br>
 <div class="w3-row-padding w3-bar-block">
  <div class="w3-container" style="padding-left:13px">
   <h2 style="color:#FFF4A3;"><b>Tutorials</b></h2>
  </div>
  <div class="w3-col l3 m6">
   <h3 class="w3-margin-top">HTML and CSS</h3>
   <a class="w3-bar-item w3-button" href="https://www.w3schools.com/html/default.asp">Learn HTML</a>
   <a class="w3-bar-item w3-button" href="https://www.w3schools.com/css/default.asp">Learn CSS</a>
   <a class="w3-bar-item w3-button" href="https://www.w3schools.com/css/css_rwd_intro.asp" title="Responsive Web Design">Learn RWD</a>
   <a class="w3-bar-item w3-button" href="https://www.w3schools.com/bootstrap/bootstrap_ver.asp">Learn Bootstrap</a>
   <a class="w3-bar-item w3-button" href="https://www.w3schools.com/w3css/default.asp">Learn W3.CSS</a>
   <a class="w3-bar-item w3-button" href="https://www.w3schools.com/colors/default.asp">Learn Colors</a>
   <a class="w3-bar-item w3-button" href="https://www.w3schools.com/icons/default.asp">Learn Icons</a>
   <a class="w3-bar-item w3-button" href="https://www.w3schools.com/graphics/default.asp">Learn Graphics</a>
   <a class="w3-bar-item w3-button" href='https://www.w3schools.com/graphics/svg_intro.asp'>Learn SVG</a>
   <a class="w3-bar-item w3-button" href='https://www.w3schools.com/graphics/canvas_intro.asp'>Learn Canvas</a>
   <a class="w3-bar-item w3-button" href="https://www.w3schools.com/howto/default.asp">Learn How To</a>
   <a class="w3-bar-item w3-button" href="https://www.w3schools.com/sass/default.php">Learn Sass</a>   
   <div class="w3-hide-large w3-hide-small">
   <h3 class="w3-margin-top">Data Analytics</h3>
   <a class="w3-bar-item w3-button" href="https://www.w3schools.com/ai/default.asp">Learn AI</a>
   <a class="w3-bar-item w3-button" href="python_ml_getting_started.html">Learn Machine Learning</a>
   <a class="w3-bar-item w3-button" href="https://www.w3schools.com/datascience/default.asp">Learn Data Science</a> 
   <a class="w3-bar-item w3-button" href="numpy/default.html">Learn NumPy</a>       
   <a class="w3-bar-item w3-button" href="pandas/default.html">Learn Pandas</a>    
   <a class="w3-bar-item w3-button" href="scipy/index.html">Learn SciPy</a>    
   <a class="w3-bar-item w3-button" href="matplotlib_intro.html">Learn Matplotlib</a>    
   <a class="w3-bar-item w3-button" href="https://www.w3schools.com/statistics/index.php">Learn Statistics</a>
   <a class="w3-bar-item w3-button" href="https://www.w3schools.com/excel/index.php">Learn Excel</a>

   <h3 class="w3-margin-top">XML Tutorials</h3>
   <a class="w3-bar-item w3-button" href="https://www.w3schools.com/xml/default.asp">Learn XML</a>
   <a class="w3-bar-item w3-button" href='https://www.w3schools.com/xml/ajax_intro.asp'>Learn XML AJAX</a>
   <a class="w3-bar-item w3-button" href="https://www.w3schools.com/xml/dom_intro.asp">Learn XML DOM</a>
   <a class="w3-bar-item w3-button" href='https://www.w3schools.com/xml/xml_dtd_intro.asp'>Learn XML DTD</a>
   <a class="w3-bar-item w3-button" href='https://www.w3schools.com/xml/schema_intro.asp'>Learn XML Schema</a>
   <a class="w3-bar-item w3-button" href="https://www.w3schools.com/xml/xsl_intro.asp">Learn XSLT</a>
   <a class="w3-bar-item w3-button" href='https://www.w3schools.com/xml/xpath_intro.asp'>Learn XPath</a>
   <a class="w3-bar-item w3-button" href='https://www.w3schools.com/xml/xquery_intro.asp'>Learn XQuery</a>
  </div>
  </div>
  <div class="w3-col l3 m6">
   <h3 class="w3-margin-top">JavaScript</h3>
   <a class="w3-bar-item w3-button" href="https://www.w3schools.com/js/default.asp">Learn JavaScript</a>
   <a class="w3-bar-item w3-button" href="https://www.w3schools.com/jquery/default.asp">Learn jQuery</a>
   <a class="w3-bar-item w3-button" href="https://www.w3schools.com/react/default.asp">Learn React</a>
   <a class="w3-bar-item w3-button" href="https://www.w3schools.com/angular/default.asp">Learn AngularJS</a>
   <a class="w3-bar-item w3-button" href="https://www.w3schools.com/js/js_json_intro.asp">Learn JSON</a>
   <a class="w3-bar-item w3-button" href="https://www.w3schools.com/js/js_ajax_intro.asp">Learn AJAX</a>
   <a class="w3-bar-item w3-button" href="https://www.w3schools.com/appml/default.asp">Learn AppML</a>
   <a class="w3-bar-item w3-button" href="https://www.w3schools.com/w3js/default.asp">Learn W3.JS</a>

   <h3 class="w3-margin-top">Programming</h3>
   <a class="w3-bar-item w3-button" href="default.html">Learn Python</a>
   <a class="w3-bar-item w3-button" href="https://www.w3schools.com/java/default.asp">Learn Java</a>
   <a class="w3-bar-item w3-button" href="https://www.w3schools.com/c/index.php">Learn C</a>
   <a class="w3-bar-item w3-button" href="https://www.w3schools.com/cpp/default.asp">Learn C++</a>
   <a class="w3-bar-item w3-button" href="https://www.w3schools.com/cs/index.php">Learn C#</a>
   <a class="w3-bar-item w3-button" href="https://www.w3schools.com/r/default.asp">Learn R</a>
   <a class="w3-bar-item w3-button" href="https://www.w3schools.com/kotlin/index.php">Learn Kotlin</a>
   <a class="w3-bar-item w3-button" href="https://www.w3schools.com/go/index.php">Learn Go</a>
   <a class="w3-bar-item w3-button" href="https://www.w3schools.com/django/index.php">Learn Django</a>
   <a class="w3-bar-item w3-button" href="https://www.w3schools.com/typescript/index.php">Learn TypeScript</a>
  </div> 
 <div class="w3-col l3 m6">
   <h3 class="w3-margin-top">Server Side</h3>
   <a class="w3-bar-item w3-button" href="https://www.w3schools.com/sql/default.asp">Learn SQL</a>
   <a class="w3-bar-item w3-button" href="https://www.w3schools.com/mysql/default.asp">Learn MySQL</a>
   <a class="w3-bar-item w3-button" href="https://www.w3schools.com/php/default.asp">Learn PHP</a>
   <a class="w3-bar-item w3-button" href='https://www.w3schools.com/asp/default.asp'>Learn ASP</a>
   <a class="w3-bar-item w3-button" href='https://www.w3schools.com/nodejs/default.asp'>Learn Node.js</a>
   <a class="w3-bar-item w3-button" href='https://www.w3schools.com/nodejs/nodejs_raspberrypi.asp'>Learn Raspberry Pi</a>
   <a class="w3-bar-item w3-button" href='https://www.w3schools.com/git/default.asp'>Learn Git</a>
   <a class="w3-bar-item w3-button" href='https://www.w3schools.com/aws/index.php'>Learn AWS Cloud</a>

   <h3 class="w3-margin-top">Web Building</h3>
   <a class="w3-bar-item w3-button" href="https://www.w3schools.com/spaces" target="_blank" onclick="ga('send', 'event', 'spacesFromTutorialsAcc', 'click');" title="Get Your Own Website With W3schools Spaces">Create a Website <span class="ribbon-topnav ws-yellow">NEW</span></a>
   <a class="w3-bar-item w3-button" href="https://www.w3schools.com/where_to_start.asp">Where To Start</a>
   <a class="w3-bar-item w3-button" href="https://www.w3schools.com/w3css/w3css_templates.asp">Web Templates</a>
   <a class="w3-bar-item w3-button" href="https://www.w3schools.com/browsers/default.asp">Web Statistics</a>
   <a class="w3-bar-item w3-button" href="https://www.w3schools.com/cert/default.asp">Web Certificates</a>
   <a class="w3-bar-item w3-button" href="https://www.w3schools.com/whatis/default.asp">Web Development</a>
   <a class="w3-bar-item w3-button" href='https://www.w3schools.com/tryit/default.asp'>Code Editor</a>
   <a class="w3-bar-item w3-button" href="https://www.w3schools.com/typingspeed/default.asp">Test Your Typing Speed</a>
   <a class="w3-bar-item w3-button" href="https://www.w3schools.com/codegame/index.html" target="_blank">Play a Code Game</a>
   <a class="w3-bar-item w3-button" href="https://www.w3schools.com/cybersecurity/index.php">Cyber Security</a>
   <a class="w3-bar-item w3-button" href="https://www.w3schools.com/accessibility/index.php">Accessibility</a>
  </div>
  <div class="w3-col l3 m6 w3-hide-medium">
   <h3 class="w3-margin-top">Data Analytics</h3>
   <a class="w3-bar-item w3-button" href="https://www.w3schools.com/ai/default.asp">Learn AI</a>
   <a class="w3-bar-item w3-button" href="python_ml_getting_started.html">Learn Machine Learning</a>
   <a class="w3-bar-item w3-button" href="https://www.w3schools.com/datascience/default.asp">Learn Data Science</a> 
   <a class="w3-bar-item w3-button" href="numpy/default.html">Learn NumPy</a>    
   <a class="w3-bar-item w3-button" href="pandas/default.html">Learn Pandas</a>    
   <a class="w3-bar-item w3-button" href="scipy/index.html">Learn SciPy</a>    
   <a class="w3-bar-item w3-button" href="matplotlib_intro.html">Learn Matplotlib</a>    
   <a class="w3-bar-item w3-button" href="https://www.w3schools.com/statistics/index.php">Learn Statistics</a>
   <a class="w3-bar-item w3-button" href="https://www.w3schools.com/excel/index.php">Learn Excel</a>
   <a class="w3-bar-item w3-button" href="https://www.w3schools.com/googlesheets/index.php">Learn Google Sheets</a>

   <h3 class="w3-margin-top">XML Tutorials</h3>
   <a class="w3-bar-item w3-button" href="https://www.w3schools.com/xml/default.asp">Learn XML</a>
   <a class="w3-bar-item w3-button" href='https://www.w3schools.com/xml/ajax_intro.asp'>Learn XML AJAX</a>
   <a class="w3-bar-item w3-button" href="https://www.w3schools.com/xml/dom_intro.asp">Learn XML DOM</a>
   <a class="w3-bar-item w3-button" href='https://www.w3schools.com/xml/xml_dtd_intro.asp'>Learn XML DTD</a>
   <a class="w3-bar-item w3-button" href='https://www.w3schools.com/xml/schema_intro.asp'>Learn XML Schema</a>
   <a class="w3-bar-item w3-button" href="https://www.w3schools.com/xml/xsl_intro.asp">Learn XSLT</a>
   <a class="w3-bar-item w3-button" href='https://www.w3schools.com/xml/xpath_intro.asp'>Learn XPath</a>
   <a class="w3-bar-item w3-button" href='https://www.w3schools.com/xml/xquery_intro.asp'>Learn XQuery</a>
  </div>
 </div>
 </div>
 <br class="hidesm">
</nav>

<nav id="nav_references" class="w3-hide-small" style="position:absolute;padding-bottom:60px;">
 <div class="w3-content" style="max-width:1100px;font-size:18px">
 <span onclick="w3_close_nav('references')" class="w3-button w3-xxxlarge w3-display-topright w3-hover-white sectionxsclosenavspan" style="padding-right:30px;padding-left:30px;">&times;</span><br>
 <div class="w3-row-padding w3-bar-block">
 <div class="w3-container" style="padding-left:13px">
   <h2 style="color:#FFF4A3;"><b>References</b></h2>
  </div>
  <div class="w3-col l3 m6">
   <h3 class="w3-margin-top">HTML</h3>
   <a class="w3-bar-item w3-button" href='https://www.w3schools.com/tags/default.asp'>HTML Tag Reference</a>
   <a class="w3-bar-item w3-button" href='https://www.w3schools.com/tags/ref_html_browsersupport.asp'>HTML Browser Support</a>   
   <a class="w3-bar-item w3-button" href='https://www.w3schools.com/tags/ref_eventattributes.asp'>HTML Event Reference</a>
   <a class="w3-bar-item w3-button" href='https://www.w3schools.com/colors/default.asp'>HTML Color Reference</a>
   <a class="w3-bar-item w3-button" href='https://www.w3schools.com/tags/ref_attributes.asp'>HTML Attribute Reference</a>
   <a class="w3-bar-item w3-button" href='https://www.w3schools.com/tags/ref_canvas.asp'>HTML Canvas Reference</a>
   <a class="w3-bar-item w3-button" href='https://www.w3schools.com/graphics/svg_reference.asp'>HTML SVG Reference</a>
   <a class="w3-bar-item w3-button" href='https://www.w3schools.com/graphics/google_maps_reference.asp'>Google Maps Reference</a>
   <h3 class="w3-margin-top">CSS</h3>
   <a class="w3-bar-item w3-button" href='https://www.w3schools.com/cssref/default.asp'>CSS Reference</a>
   <a class="w3-bar-item w3-button" href='https://www.w3schools.com/cssref/css3_browsersupport.asp'>CSS Browser Support</a>
   <a class="w3-bar-item w3-button" href='https://www.w3schools.com/cssref/css_selectors.asp'>CSS Selector Reference</a>
   <a class="w3-bar-item w3-button" href='https://www.w3schools.com/bootstrap/bootstrap_ref_all_classes.asp'>Bootstrap 3 Reference</a>
   <a class="w3-bar-item w3-button" href='https://www.w3schools.com/bootstrap4/bootstrap_ref_all_classes.asp'>Bootstrap 4 Reference</a>
   <a class="w3-bar-item w3-button" href='https://www.w3schools.com/w3css/w3css_references.asp'>W3.CSS Reference</a>
   <a class="w3-bar-item w3-button" href='https://www.w3schools.com/icons/icons_reference.asp'>Icon Reference</a>
   <a class="w3-bar-item w3-button" href='https://www.w3schools.com/sass/sass_functions_string.php'>Sass Reference</a>
  </div>
  <div class="w3-col l3 m6">
   <h3 class="w3-margin-top">JavaScript</h3>
   <a class="w3-bar-item w3-button" href='https://www.w3schools.com/jsref/default.asp'>JavaScript Reference</a>
   <a class="w3-bar-item w3-button" href='https://www.w3schools.com/jsref/default.asp'>HTML DOM Reference</a>
   <a class="w3-bar-item w3-button" href='https://www.w3schools.com/jquery/jquery_ref_overview.asp'>jQuery Reference</a>
   <a class="w3-bar-item w3-button" href='https://www.w3schools.com/angular/angular_ref_directives.asp'>AngularJS Reference</a>
   <a class="w3-bar-item w3-button" href="https://www.w3schools.com/appml/appml_reference.asp">AppML Reference</a>
   <a class="w3-bar-item w3-button" href="https://www.w3schools.com/w3js/w3js_references.asp">W3.JS Reference</a>

   <h3 class="w3-margin-top">Programming</h3>
   <a class="w3-bar-item w3-button" href='python_reference.html'>Python Reference</a>
   <a class="w3-bar-item w3-button" href='https://www.w3schools.com/java/java_ref_keywords.asp'>Java Reference</a>
  </div>
  <div class="w3-col l3 m6">
   <h3 class="w3-margin-top">Server Side</h3>
   <a class="w3-bar-item w3-button" href='https://www.w3schools.com/sql/sql_ref_keywords.asp'>SQL Reference</a>
   <a class="w3-bar-item w3-button" href='https://www.w3schools.com/mysql/mysql_ref_functions.asp'>MySQL Reference</a>
   <a class="w3-bar-item w3-button" href='https://www.w3schools.com/php/php_ref_overview.asp'>PHP Reference</a>
   <a class="w3-bar-item w3-button" href='https://www.w3schools.com/asp/asp_ref_response.asp'>ASP Reference</a>
   <h3 class="w3-margin-top">XML</h3>
   <a class="w3-bar-item w3-button" href='https://www.w3schools.com/xml/dom_nodetype.asp'>XML DOM Reference</a>
   <a class="w3-bar-item w3-button" href='https://www.w3schools.com/xml/dom_http.asp'>XML Http Reference</a>
   <a class="w3-bar-item w3-button" href='https://www.w3schools.com/xml/xsl_elementref.asp'>XSLT Reference</a>
   <a class="w3-bar-item w3-button" href='https://www.w3schools.com/xml/schema_elements_ref.asp'>XML Schema Reference</a>
  </div>
  <div class="w3-col l3 m6">
   <h3 class="w3-margin-top">Character Sets</h3>
   <a class="w3-bar-item w3-button" href='https://www.w3schools.com/charsets/default.asp'>HTML Character Sets</a>
   <a class="w3-bar-item w3-button" href='https://www.w3schools.com/charsets/ref_html_ascii.asp'>HTML ASCII</a>
   <a class="w3-bar-item w3-button" href='https://www.w3schools.com/charsets/ref_html_ansi.asp'>HTML ANSI</a>
   <a class="w3-bar-item w3-button" href='https://www.w3schools.com/charsets/ref_html_ansi.asp'>HTML Windows-1252</a>
   <a class="w3-bar-item w3-button" href='https://www.w3schools.com/charsets/ref_html_8859.asp'>HTML ISO-8859-1</a>
   <a class="w3-bar-item w3-button" href='https://www.w3schools.com/charsets/ref_html_symbols.asp'>HTML Symbols</a>
   <a class="w3-bar-item w3-button" href='https://www.w3schools.com/charsets/ref_html_utf8.asp'>HTML UTF-8</a>
  </div>
 </div>
 <br class="hidesm">
 </div>
</nav>

<nav id="nav_exercises" class="w3-hide-small" style="position:absolute;padding-bottom:60px;">
 <div class="w3-content" style="max-width:1100px;font-size:18px">
 <span onclick="w3_close_nav('exercises')" class="w3-button w3-xxxlarge w3-display-topright w3-hover-white sectionxsclosenavspan" style="padding-right:30px;padding-left:30px;">&times;</span><br>
 <div class="w3-row-padding w3-bar-block">
 <div class="w3-container" style="padding-left:13px">
   <h2 style="color:#FFF4A3;"><b>Exercises and Quizzes</b></h2>
  </div>
  <div class="w3-col l3 m6">
   <h3 class="w3-margin-top"><a class="ws-btn ws-yellow w3-hover-text-white" style="width:155px;font-size:21px" href="https://www.w3schools.com/exercises/index.php">Exercises</a></h3>
   <a class="w3-bar-item w3-button" href="https://www.w3schools.com/html/html_exercises.asp">HTML Exercises</a>
   <a class="w3-bar-item w3-button" href="https://www.w3schools.com/css/css_exercises.asp">CSS Exercises</a>
   <a class="w3-bar-item w3-button" href="https://www.w3schools.com/js/js_exercises.asp">JavaScript Exercises</a>
   <a class="w3-bar-item w3-button" href="https://www.w3schools.com/sql/sql_exercises.asp">SQL Exercises</a>
   <a class="w3-bar-item w3-button" href="https://www.w3schools.com/mysql/mysql_exercises.asp">MySQL Exercises</a>
   <a class="w3-bar-item w3-button" href="https://www.w3schools.com/php/php_exercises.asp">PHP Exercises</a>
   <a class="w3-bar-item w3-button" href="python_exercises.html">Python Exercises</a>
   <a class="w3-bar-item w3-button" href="numpy/numpy_exercises.html">NumPy Exercises</a>
   <a class="w3-bar-item w3-button" href="pandas/pandas_exercises.html">Pandas Exercises</a>
   <a class="w3-bar-item w3-button" href="scipy/scipy_exercises.html">SciPy Exercises</a>
   <a class="w3-bar-item w3-button" href="https://www.w3schools.com/jquery/jquery_exercises.asp">jQuery Exercises</a>
   <a class="w3-bar-item w3-button" href="https://www.w3schools.com/java/java_exercises.asp">Java Exercises</a>
   <a class="w3-bar-item w3-button" href="https://www.w3schools.com/cpp/cpp_exercises.asp">C++ Exercises</a>
   <a class="w3-bar-item w3-button" href="https://www.w3schools.com/cs/cs_exercises.asp">C# Exercises</a>
   <a class="w3-bar-item w3-button" href="https://www.w3schools.com/r/r_exercises.asp">R Exercises</a>
   <a class="w3-bar-item w3-button" href="https://www.w3schools.com/kotlin/kotlin_exercises.php">Kotlin Exercises</a>
   <a class="w3-bar-item w3-button" href="https://www.w3schools.com/go/go_exercises.php">Go Exercises</a>
   <a class="w3-bar-item w3-button" href="https://www.w3schools.com/bootstrap/bootstrap_exercises.asp">Bootstrap Exercises</a>
   <a class="w3-bar-item w3-button" href="https://www.w3schools.com/bootstrap4/bootstrap_exercises.asp">Bootstrap 4 Exercises</a>
   <a class="w3-bar-item w3-button" href="https://www.w3schools.com/bootstrap5/bootstrap_exercises.php">Bootstrap 5 Exercises</a>
   <a class="w3-bar-item w3-button" href="https://www.w3schools.com/git/git_exercises.asp">Git Exercises</a>
  </div>
  <div class="w3-col l3 m6">
   <h3 class="w3-margin-top"><a class="ws-btn ws-yellow w3-hover-text-white" style="width:135px;font-size:21px" href="https://www.w3schools.com/quiztest/default.asp">Quizzes</a></h3>
   <a class="w3-bar-item w3-button" href="https://www.w3schools.com/html/html_quiz.asp" target="_top">HTML Quiz</a>
   <a class="w3-bar-item w3-button" href="https://www.w3schools.com/css/css_quiz.asp" target="_top">CSS Quiz</a>
   <a class="w3-bar-item w3-button" href="https://www.w3schools.com/js/js_quiz.asp" target="_top">JavaScript Quiz</a>
   <a class="w3-bar-item w3-button" href="https://www.w3schools.com/sql/sql_quiz.asp" target="_top">SQL Quiz</a>
   <a class="w3-bar-item w3-button" href="https://www.w3schools.com/mysql/mysql_quiz.asp" target="_top">MySQL Quiz</a>
   <a class="w3-bar-item w3-button" href="https://www.w3schools.com/php/php_quiz.asp" target="_top">PHP Quiz</a>
   <a class="w3-bar-item w3-button" href="python_quiz.html" target="_top">Python Quiz</a>
   <a class="w3-bar-item w3-button" href="numpy/numpy_quiz.html" target="_top">NumPy Quiz</a>
   <a class="w3-bar-item w3-button" href="pandas/pandas_quiz.html" target="_top">Pandas Quiz</a>
   <a class="w3-bar-item w3-button" href="scipy/scipy_quiz.html" target="_top">SciPy Quiz</a>
   <a class="w3-bar-item w3-button" href="https://www.w3schools.com/jquery/jquery_quiz.asp" target="_top">jQuery Quiz</a>
   <a class="w3-bar-item w3-button" href="https://www.w3schools.com/java/java_quiz.asp" target="_top">Java Quiz</a>
   <a class="w3-bar-item w3-button" href="https://www.w3schools.com/cpp/cpp_quiz.asp" target="_top">C++ Quiz</a>
   <a class="w3-bar-item w3-button" href="https://www.w3schools.com/cs/cs_quiz.asp" target="_top">C# Quiz</a>
   <a class="w3-bar-item w3-button" href="https://www.w3schools.com/r/r_quiz.asp" target="_top">R Quiz</a>
   <a class="w3-bar-item w3-button" href="https://www.w3schools.com/kotlin/kotlin_quiz.php" target="_top">Kotlin Quiz</a>
   <a class="w3-bar-item w3-button" href="https://www.w3schools.com/xml/xml_quiz.asp" target="_top">XML Quiz</a>
   <a class="w3-bar-item w3-button" href="https://www.w3schools.com/bootstrap/bootstrap_quiz.asp" target="_top">Bootstrap Quiz</a>
   <a class="w3-bar-item w3-button" href="https://www.w3schools.com/bootstrap4/bootstrap_quiz.asp" target="_top">Bootstrap 4 Quiz</a>
   <a class="w3-bar-item w3-button" href="https://www.w3schools.com/bootstrap5/bootstrap_quiz.php" target="_top">Bootstrap 5 Quiz</a>
   <a class="w3-bar-item w3-button" href="https://www.w3schools.com/cybersecurity/cybersecurity_quiz.php">Cyber Security Quiz</a>
   <a class="w3-bar-item w3-button" href="https://www.w3schools.com/accessibility/accessibility_quiz.php">Accessibility Quiz</a>
  </div>
  <div class="w3-col l3 m6">
   <h3 class="w3-margin-top"><a class="ws-btn ws-yellow w3-hover-text-white" style="width:135px;font-size:21px" href="https://courses.w3schools.com/" target="_blank">Courses</a></h3>
<!-- cert
   <a class="w3-bar-item w3-button" href="/cert/cert_html_new.asp" target="_top">HTML Certificate</a>
   <a class="w3-bar-item w3-button" href="/cert/cert_css.asp" target="_top">CSS Certificate</a>
   <a class="w3-bar-item w3-button" href="/cert/cert_javascript.asp" target="_top">JavaScript Certificate</a>
   <a class="w3-bar-item w3-button" href="/cert/cert_sql.asp" target="_top">SQL Certificate</a>
   <a class="w3-bar-item w3-button" href="/cert/cert_php.asp" target="_top">PHP Certificate</a>
   <a class="w3-bar-item w3-button" href="/cert/cert_python.asp" target="_top">Python Certificate</a>
   <a class="w3-bar-item w3-button" href="/cert/cert_bootstrap.asp" target="_top">Bootstrap Certificate</a>
   <a class="w3-bar-item w3-button" href="/cert/cert_jquery.asp" target="_top">jQuery Certificate</a>
   <a class="w3-bar-item w3-button" href="/cert/cert_xml.asp" target="_top">XML Certificate</a>
-->  
   <a class="w3-bar-item w3-button" href="https://courses.w3schools.com/courses/html" target="_blank">HTML Course</a>
   <a class="w3-bar-item w3-button" href="https://courses.w3schools.com/courses/css" target="_blank">CSS Course</a>
   <a class="w3-bar-item w3-button" href="https://courses.w3schools.com/courses/javascript" target="_blank">JavaScript Course</a>
   <a class="w3-bar-item w3-button" href="https://courses.w3schools.com/programs/front-end" target="_blank">Front End Course</a>
   <a class="w3-bar-item w3-button" href="https://courses.w3schools.com/courses/sql" target="_blank">SQL Course</a>
   <a class="w3-bar-item w3-button" href="https://courses.w3schools.com/courses/php" target="_blank">PHP Course</a>
   <a class="w3-bar-item w3-button" href="https://courses.w3schools.com/courses/python" target="_blank">Python Course</a>
   <a class="w3-bar-item w3-button" href="https://courses.w3schools.com/courses/numpy-fundamentals" target="_blank">NumPy Course</a>
   <a class="w3-bar-item w3-button" href="https://courses.w3schools.com/courses/pandas-fundamentals" target="_blank">Pandas Course</a>
   <a class="w3-bar-item w3-button" href="https://courses.w3schools.com/programs/data-analytics" target="_blank">Data Analytics Course</a>
   <a class="w3-bar-item w3-button" href="https://courses.w3schools.com/courses/jquery" target="_blank">jQuery Course</a>
   <a class="w3-bar-item w3-button" href="https://courses.w3schools.com/courses/java" target="_blank">Java Course</a>
   <a class="w3-bar-item w3-button" href="https://courses.w3schools.com/courses/cplusplus" target="_blank">C++ Course</a>
   <a class="w3-bar-item w3-button" href="https://courses.w3schools.com/courses/c-sharp" target="_blank">C# Course</a>
   <a class="w3-bar-item w3-button" href="https://courses.w3schools.com/courses/r-fundamentals" target="_blank">R Course</a>
   <a class="w3-bar-item w3-button" href="https://courses.w3schools.com/courses/xml" target="_blank">XML Course</a>
   <a class="w3-bar-item w3-button" href="https://courses.w3schools.com/courses/introduction-to-cyber-security" target="_blank">Cyber Security Course</a>
   <a class="w3-bar-item w3-button" href="https://courses.w3schools.com/courses/accessibility-fundamentals" target="_blank">Accessibility Course</a>
  </div>
  <div class="w3-col l3 m6">
   <h3 class="w3-margin-top"><a class="ws-btn ws-yellow w3-hover-text-white" style="width:150px;font-size:21px" href="https://courses.w3schools.com/browse/certifications" target="_blank">Certificates</a></h3>
<!-- cert
   <a class="w3-bar-item w3-button" href="/cert/cert_html_new.asp" target="_top">HTML Certificate</a>
   <a class="w3-bar-item w3-button" href="/cert/cert_css.asp" target="_top">CSS Certificate</a>
   <a class="w3-bar-item w3-button" href="/cert/cert_javascript.asp" target="_top">JavaScript Certificate</a>
   <a class="w3-bar-item w3-button" href="/cert/cert_sql.asp" target="_top">SQL Certificate</a>
   <a class="w3-bar-item w3-button" href="/cert/cert_php.asp" target="_top">PHP Certificate</a>
   <a class="w3-bar-item w3-button" href="/cert/cert_python.asp" target="_top">Python Certificate</a>
   <a class="w3-bar-item w3-button" href="/cert/cert_bootstrap.asp" target="_top">Bootstrap Certificate</a>
   <a class="w3-bar-item w3-button" href="/cert/cert_jquery.asp" target="_top">jQuery Certificate</a>
   <a class="w3-bar-item w3-button" href="/cert/cert_xml.asp" target="_top">XML Certificate</a>
-->  
   <a class="w3-bar-item w3-button" href="https://courses.w3schools.com/browse/certifications/courses/html-certification-exam" target="_blank">HTML Certificate</a>
   <a class="w3-bar-item w3-button" href="https://courses.w3schools.com/browse/certifications/courses/css-certification-exam" target="_blank">CSS Certificate</a>
   <a class="w3-bar-item w3-button" href="https://courses.w3schools.com/browse/certifications/courses/javascript-certification-exam" target="_blank">JavaScript Certificate</a>
   <a class="w3-bar-item w3-button" href="https://courses.w3schools.com/browse/certifications/courses/front-end-certification-exam" target="_blank">Front End Certificate</a>
   <a class="w3-bar-item w3-button" href="https://courses.w3schools.com/browse/certifications/courses/sql-certification-exam" target="_blank">SQL Certificate</a>
   <a class="w3-bar-item w3-button" href="https://courses.w3schools.com/browse/certifications/courses/php-certification-exam" target="_blank">PHP Certificate</a>
   <a class="w3-bar-item w3-button" href="https://courses.w3schools.com/browse/certifications/courses/python-certificaftion-exam" target="_blank">Python Certificate</a>
   <a class="w3-bar-item w3-button" href="https://courses.w3schools.com/browse/certifications/courses/data-science-certification-exam" target="_blank">Data Science Certificate</a>
   <a class="w3-bar-item w3-button" href="https://courses.w3schools.com/browse/certifications/courses/bootstrap-3-certification-exam" target="_blank">Bootstrap 3 Certificate</a>
   <a class="w3-bar-item w3-button" href="https://courses.w3schools.com/browse/certifications/courses/bootstrap-4-certification-exam" target="_blank">Bootstrap 4 Certificate</a>
   <a class="w3-bar-item w3-button" href="https://courses.w3schools.com/browse/certifications/courses/jquery-certification-exam" target="_blank">jQuery Certificate</a>
   <a class="w3-bar-item w3-button" href="https://courses.w3schools.com/browse/certifications/courses/java-certification-exam" target="_blank">Java Certificate</a>
   <a class="w3-bar-item w3-button" href="https://courses.w3schools.com/browse/certifications/courses/c-certification-exam" target="_blank">C++ Certificate</a>
   <a class="w3-bar-item w3-button" href="https://courses.w3schools.com/browse/certifications/courses/react-certification-exam" target="_blank">React Certificate</a>
   <a class="w3-bar-item w3-button" href="https://courses.w3schools.com/browse/certifications/courses/xml-certification-exam" target="_blank">XML Certificate</a>
  </div>
 </div>
 <br class="hidesm">
 </div>
</nav>


  </div>
</div>

<div id='myAccordion' class="w3-card-2 w3-center w3-hide-large w3-hide-medium ws-grey" style="width:100%;position:absolute;display:none;">
  <a href="javascript:void(0)" onclick="w3_close()" class="w3-button w3-xxlarge w3-right">&times;</a><br>
  <div class="w3-container w3-padding-32">
    <a class="w3-button w3-block" style="font-size:22px;" onclick="open_xs_menu('tutorials');" href="javascript:void(0);">Tutorials <i class='fa fa-caret-down'></i></a>
    <div id="sectionxs_tutorials" class="w3-left-align w3-show" style="background-color:#282A35;color:white;"></div>
    <a class="w3-button w3-block" style="font-size:22px;" onclick="open_xs_menu('references')" href="javascript:void(0);">References <i class='fa fa-caret-down'></i></a>
    <div id="sectionxs_references" class="w3-left-align w3-show" style="background-color:#282A35;color:white;"></div>
    <a class="w3-button w3-block" style="font-size:22px;" onclick="open_xs_menu('exercises')" href="javascript:void(0);">Exercises <i class='fa fa-caret-down'></i></a>
    <div id="sectionxs_exercises" class="w3-left-align w3-show" style="background-color:#282A35;color:white;"></div>
    <a class="w3-button w3-block" style="font-size:22px;" href="https://www.w3schools.com/cert/default.asp" target="_blank">Paid Courses</a>
    <a class="w3-button w3-block" style="font-size:22px;" href="https://www.w3schools.com/spaces" target="_blank" onclick="ga('send', 'event', 'spacesFromTutorialsAcc', 'click');" title="Get Your Own Website With W3schools Spaces">Spaces</a>
    <a class="w3-button w3-block" style="font-size:22px;" target="_blank"href="https://www.w3schools.com/videos/index.php" onclick="ga('send', 'event', 'Videos' , 'fromTopnavMain')" title="Video Tutorials">Videos</a>
    <a class="w3-button w3-block" style="font-size:22px;" href="https://shop.w3schools.com/" target="_blank">Shop</a>
    <a class="w3-button w3-block" style="font-size:22px;" href="https://www.w3schools.com/pro/index.php">Pro</a>
  </div>
</div>

<script>
(
function setThemeCheckboxes() {
  var x = localStorage.getItem("preferredmode");
  var y = localStorage.getItem("preferredpagemode");  
  if (x == "dark") {
    document.getElementById("radio_darkcode").checked = true;
    
  }
  if (y == "dark") {
    document.getElementById("radio_darkpage").checked = true;
  }
})();

function mouseoverdarkicon() {
  if(window.matchMedia("(pointer: coarse)").matches) {
    return false;
  }
  var a = document.getElementById("darkmodemenu");
  a.style.top = "44px";
}
function mouseoutofdarkicon() {
  var a = document.getElementById("darkmodemenu");
  a.style.top = "-40px";
}
function changepagetheme(n) {
  var a = document.getElementById("radio_darkcode");
  var b = document.getElementById("radio_darkpage");
  document.body.className = document.body.className.replace("darktheme", "");
  document.body.className = document.body.className.replace("darkpagetheme", "");    
  document.body.className = document.body.className.replace("  ", " ");
  if (a.checked && b.checked) {
    localStorage.setItem("preferredmode", "light");
    localStorage.setItem("preferredpagemode", "light");
    a.checked = false;
    b.checked = false;    
  } else {
    document.body.className += " darktheme";
    document.body.className += " darkpagetheme";  
    localStorage.setItem("preferredmode", "dark");
    localStorage.setItem("preferredpagemode", "dark");
    a.checked = true;
    b.checked = true;    
  }
}


function click_darkpage() {
  var b = document.getElementById("radio_darkpage");
  if (b.checked) {
    document.body.className += " darkpagetheme";
    document.body.className = document.body.className.replace("  ", " ");    
    localStorage.setItem("preferredpagemode", "dark");
  } else {
    document.body.className = document.body.className.replace("darkpagetheme", "");
    document.body.className = document.body.className.replace("  ", " ");    
    localStorage.setItem("preferredpagemode", "light");
  }
}

function click_darkcode() {
  var a = document.getElementById("radio_darkcode");
  if (a.checked) {
    document.body.className += " darktheme";
    document.body.className = document.body.className.replace("  ", " ");    
    localStorage.setItem("preferredmode", "dark");
  } else {
    document.body.className = document.body.className.replace("darktheme", "");
    document.body.className = document.body.className.replace("  ", " ");
    localStorage.setItem("preferredmode", "light");
  }
}

</script>


<div class='w3-sidebar w3-collapse' id='sidenav'>
  <div id='leftmenuinner'>
    <div id='leftmenuinnerinner'>
<!--  <a href='javascript:void(0)' onclick='close_menu()' class='w3-button w3-hide-large w3-large w3-display-topright' style='right:16px;padding:3px 12px;font-weight:bold;'>&times;</a>-->
<h2 class="left"><span class="left_h2">Python</span> Tutorial</h2>
<a target="_top" href="default.html">Python HOME</a>
<a target="_top" href="python_intro.html">Python Intro</a>
<a target="_top" href="python_getstarted.html">Python Get Started</a>
<a target="_top" href="python_syntax.html">Python Syntax</a>
<a target="_top" href="python_comments.html">Python Comments</a>
<a target="_top" href="python_variables.html">Python Variables</a>
<div class="tut_overview">
  <a target="_top" href="python_variables.html">Python Variables</a>
  <a target="_top" href="python_variables_names.html">Variable Names</a>
  <a target="_top" href="python_variables_multiple.html">Assign Multiple Values</a>
  <a target="_top" href="python_variables_output.html">Output Variables</a>
  <a target="_top" href="python_variables_global.html">Global Variables</a>
  <a target="_top" href="python_variables_exercises.html">Variable Exercises</a>
</div>
<a target="_top" href="python_datatypes.html">Python Data Types</a>
<a target="_top" href="python_numbers.html">Python Numbers</a>
<!--<a target="_top" href="python_primitivetypes.asp">Python Primitive Types</a>-->
<a target="_top" href="python_casting.html">Python Casting</a>
<a target="_top" href="python_strings.html">Python Strings</a>
<div class="tut_overview">
  <a target="_top" href="python_strings.html">Python Strings</a>
  <a target="_top" href="python_strings_slicing.html">Slicing Strings</a>
  <a target="_top" href="python_strings_modify.html">Modify Strings</a>
  <a target="_top" href="python_strings_concatenate.html">Concatenate Strings</a>
  <a target="_top" href="python_strings_format.html">Format Strings</a>
  <a target="_top" href="python_strings_escape.html">Escape Characters</a>
  <a target="_top" href="python_strings_methods.html">String Methods</a>
  <a target="_top" href="python_strings_exercises.html">String Exercises</a>
</div>
<a target="_top" href="python_booleans.html">Python Booleans</a>
<a target="_top" href="python_operators.html">Python Operators</a>
<a target="_top" href="python_lists.html">Python Lists</a>
<div class="tut_overview">
  <a target="_top" href="python_lists.html">Python Lists</a>
  <a target="_top" href="python_lists_access.html">Access List Items</a>
  <a target="_top" href="python_lists_change.html">Change List Items</a>
  <a target="_top" href="python_lists_add.html">Add List Items</a>
  <a target="_top" href="python_lists_remove.html">Remove List Items</a>
  <a target="_top" href="python_lists_loop.html">Loop Lists</a>
  <a target="_top" href="python_lists_comprehension.html">List Comprehension</a>
  <a target="_top" href="python_lists_sort.html">Sort Lists</a>
  <a target="_top" href="python_lists_copy.asp">Copy Lists</a>
  <a target="_top" href="python_lists_join.html">Join Lists</a>
  <a target="_top" href="python_lists_methods.html">List Methods</a>
  <a target="_top" href="python_lists_exercises.html">List Exercises</a>
</div>
<a target="_top" href="python_tuples.html">Python Tuples</a>
<div class="tut_overview">
  <a target="_top" href="python_tuples.html">Python Tuples</a>
  <a target="_top" href="python_tuples_access.html">Access Tuples</a>
  <a target="_top" href="python_tuples_update.html">Update Tuples</a>
  <a target="_top" href="python_tuples_unpack.html">Unpack Tuples</a>
  <a target="_top" href="python_tuples_loop.html">Loop Tuples</a>
  <a target="_top" href="python_tuples_join.html">Join Tuples</a>
  <a target="_top" href="python_tuples_methods.html">Tuple Methods</a>
  <a target="_top" href="python_tuples_exercises.html">Tuple Exercises</a>
</div>
<a target="_top" href="python_sets.html">Python Sets</a>
<div class="tut_overview">
  <a target="_top" href="python_sets.html">Python Sets</a>
  <a target="_top" href="python_sets_access.html">Access Set Items</a>
  <a target="_top" href="python_sets_add.html">Add Set Items</a>
  <a target="_top" href="python_sets_remove.html">Remove Set Items</a>
  <a target="_top" href="python_sets_loop.html">Loop Sets</a>
  <a target="_top" href="python_sets_join.html">Join Sets</a>
  <a target="_top" href="python_sets_methods.html">Set Methods</a>
  <a target="_top" href="python_sets_exercises.html">Set Exercises</a>
</div>
<a target="_top" href="python_dictionaries.html">Python Dictionaries</a>
<div class="tut_overview">
  <a target="_top" href="python_dictionaries.html">Python Dictionaries</a>
  <a target="_top" href="python_dictionaries_access.html">Access Items</a>
  <a target="_top" href="python_dictionaries_change.html">Change Items</a>
  <a target="_top" href="python_dictionaries_add.html">Add Items</a>
  <a target="_top" href="python_dictionaries_remove.html">Remove Items</a>
  <a target="_top" href="python_dictionaries_loop.html">Loop Dictionaries</a>
  <a target="_top" href="python_dictionaries_copy.html">Copy Dictionaries</a>
  <a target="_top" href="python_dictionaries_nested.html">Nested Dictionaries</a>
  <a target="_top" href="python_dictionaries_methods.html">Dictionary Methods</a>
  <a target="_top" href="python_dictionaries_exercises.html">Dictionary Exercise</a>
</div>
<a target="_top" href="python_conditions.html">Python If...Else</a>
<a target="_top" href="python_while_loops.html">Python While Loops</a>
<a target="_top" href="python_for_loops.html">Python For Loops</a>
<!--<a target="_top" href="python_dataprocessing.asp">Python Data Processing</a>-->
<a target="_top" href="python_functions.html">Python Functions</a>
<a target="_top" href="python_lambda.html">Python Lambda</a>
<a target="_top" href="python_arrays.html">Python Arrays</a>
<a target="_top" href="python_classes.html">Python Classes/Objects</a>
<a target="_top" href="python_inheritance.html">Python Inheritance</a>
<a target="_top" href="python_iterators.html">Python Iterators</a>
<a target="_top" href="python_scope.html">Python Scope</a>
<a target="_top" href="python_modules.html">Python Modules</a>
<a target="_top" href="python_datetime.html">Python Dates</a>
<a target="_top" href="python_math.html">Python Math</a>
<a target="_top" href="python_json.html">Python JSON</a>
<a target="_top" href="python_regex.html">Python RegEx</a>
<a target="_top" href="python_pip.html">Python PIP</a>
<a target="_top" href="python_try_except.html">Python Try...Except</a>
<a target="_top" href="python_user_input.html">Python User Input</a>
<a target="_top" href="python_string_formatting.html">Python String Formatting</a>
<br>
<h2 class="left">File Handling</h2>
<a target="_top" href="python_file_handling.html">Python File Handling</a>
<a target="_top" href="python_file_open.html">Python Read Files</a>
<a target="_top" href="python_file_write.html">Python Write/Create Files</a>
<a target="_top" href="python_file_remove.html">Python Delete Files</a>
<br>
<h2 class="left">Python Modules</h2>
<a target="_top" href="numpy/default.html">NumPy Tutorial</a>
<a target="_top" href="pandas/default.html">Pandas Tutorial</a>
<a target="_top" href="scipy/index.html">SciPy Tutorial</a>
<a target="_top" href="https://www.w3schools.com/django/index.php">Django Tutorial</a>
<br>
<!--
<h2 class="left">Python NumPy</h2>
<a target="_top" href="numpy_intro.asp">NumPy Intro</a>
<a target="_top" href="numpy_getting_started.asp">NumPy Getting Started</a>
<a target="_top" href="numpy_creating_arrays.asp">NumPy Creating Arrays</a>
<a target="_top" href="numpy_array_indexing.asp">NumPy Array Indexing</a>
<a target="_top" href="numpy_array_slicing.asp">NumPy Array Slicing</a>
<a target="_top" href="numpy_data_types.asp">NumPy Data Types</a>
<a target="_top" href="numpy_copy_vs_view.asp">NumPy Copy vs View</a>
<a target="_top" href="numpy_array_shape.asp">NumPy Array Shape</a>
<a target="_top" href="numpy_array_reshape.asp">NumPy Array Reshape</a>
<a target="_top" href="numpy_array_iterating.asp">NumPy Array Iterating</a>
<a target="_top" href="numpy_array_join.asp">NumPy Array Join</a>
<a target="_top" href="numpy_array_split.asp">NumPy Array Split</a>
<a target="_top" href="numpy_array_search.asp">NumPy Array Search</a>
<a target="_top" href="numpy_array_sort.asp">NumPy Array Sort</a>
<a target="_top" href="numpy_array_filter.asp">NumPy Array Filter</a>
<a target="_top" href="numpy_random.asp">NumPy Random</a>
<div class="tut_overview">
  <a target="_top" href="numpy_random.asp">Random Intro</a>
  <a target="_top" href="numpy_random_distribution.asp">Data Distribution</a>
  <a target="_top" href="numpy_random_permutation.asp">Random Permutation</a>
  <a target="_top" href="numpy_random_seaborn.asp">Seaborn Module</a>
  <a target="_top" href="numpy_random_normal.asp">Normal Distribution</a>
  <a target="_top" href="numpy_random_binomial.asp">Binomial Distribution</a>
  <a target="_top" href="numpy_random_poisson.asp">Poisson Distribution</a>
  <a target="_top" href="numpy_random_uniform.asp">Uniform Distribution</a>
  <a target="_top" href="numpy_random_logistic.asp">Logistic Distribution</a>
  <a target="_top" href="numpy_random_multinomial.asp">Multinomial Distribution</a>
  <a target="_top" href="numpy_random_exponential.asp">Exponential Distribution</a>
  <a target="_top" href="numpy_random_chisquare.asp">Chi Square Distribution</a>
  <a target="_top" href="numpy_random_rayleigh.asp">Rayleigh Distribution</a>
  <a target="_top" href="numpy_random_pareto.asp">Pareto Distribution</a>
  <a target="_top" href="numpy_random_zipf.asp">Zipf Distribution</a>
</div>
<a target="_top" href="numpy_ufunc.asp">NumPy ufunc</a>
<div class="tut_overview">
  <a target="_top" href="numpy_ufunc.asp">ufunc Intro</a>
  <a target="_top" href="numpy_ufunc_create_function.asp">ufunc Create Function</a>
  <a target="_top" href="numpy_ufunc_simple_arithmetic.asp">ufunc Simple Arithmetic</a>
  <a target="_top" href="numpy_ufunc_rounding_decimals.asp">ufunc Rounding Decimals</a>
  <a target="_top" href="numpy_ufunc_logs.asp">ufunc Logs</a>
  <a target="_top" href="numpy_ufunc_summations.asp">ufunc Summations</a>
  <a target="_top" href="numpy_ufunc_products.asp">ufunc Products</a>
  <a target="_top" href="numpy_ufunc_differences.asp">ufunc Differences</a>
  <a target="_top" href="numpy_ufunc_lcm.asp">ufunc Finding LCM</a>
  <a target="_top" href="numpy_ufunc_gcd.asp">ufunc Finding GCD</a>
  <a target="_top" href="numpy_ufunc_trigonometric.asp">ufunc Trigonometric</a>
  <a target="_top" href="numpy_ufunc_hyperbolic.asp">ufunc Hyperbolic</a>
  <a target="_top" href="numpy_ufunc_set_operations.asp">ufunc Set Operations</a>
</div>
<br>
-->
<!--
<h2 class="left">Python Pandas</h2>
<a target="_top" href="pandas_tutorial.asp">Pandas Tutorial</a>
<a target="_top" href="pandas_getting_started.asp">Pandas Getting Started</a>
<a target="_top" href="pandas_series.asp">Pandas Series</a>
<a target="_top" href="pandas_dataframes.asp">Pandas DataFrames</a>
<a target="_top" href="pandas_csv.asp">Pandas Read CSV</a>
<a target="_top" href="pandas_json.asp">Pandas Read JSON</a>
<a target="_top" href="pandas_analyzing.asp">Pandas Analyzing Data</a>
<a target="_top" href="pandas_cleaning.asp">Pandas Cleaning Data</a>
<div class="tut_overview">
  <a target="_top" href="pandas_cleaning.asp">Pandas Cleaning Data</a>
  <a target="_top" href="pandas_cleaning_empty_cells.asp">Cleaning Empty Cells</a>
  <a target="_top" href="pandas_cleaning_wrong_format.asp">Cleaning Wrong Format</a>
  <a target="_top" href="pandas_cleaning_wrong_data.asp">Cleaning Wrong Data</a>
  <a target="_top" href="pandas_cleaning_duplicates.asp">Removing Duplicates</a>
</div>
<a target="_top" href="pandas_correlations.asp">Pandas Correlations</a>
<a target="_top" href="pandas_plotting.asp">Pandas Plotting</a>
<br>
-->
<h2 class="left">Python Matplotlib</h2>
<a target="_top" href="matplotlib_intro.html">Matplotlib Intro</a>
<a target="_top" href="matplotlib_getting_started.html">Matplotlib Get Started</a>
<a target="_top" href="matplotlib_pyplot.html">Matplotlib Pyplot</a>
<a target="_top" href="matplotlib_plotting.html">Matplotlib Plotting</a>
<a target="_top" href="matplotlib_markers.html">Matplotlib Markers</a>
<a target="_top" href="matplotlib_line.html">Matplotlib Line</a>
<a target="_top" href="matplotlib_labels.html">Matplotlib Labels</a>
<a target="_top" href="matplotlib_grid.html">Matplotlib Grid</a>
<a target="_top" href="matplotlib_subplot.html">Matplotlib Subplot</a>
<a target="_top" href="matplotlib_scatter.html">Matplotlib Scatter</a>
<a target="_top" href="matplotlib_bars.html">Matplotlib Bars</a>
<a target="_top" href="matplotlib_histograms.html">Matplotlib Histograms</a>
<a target="_top" href="matplotlib_pie_charts.html">Matplotlib Pie Charts</a>
<br>
<!--
<h2 class="left">Python SciPy</h2>
<a target="_top" href="scipy_intro.asp">SciPy Intro</a>
<a target="_top" href="scipy_getting_started.asp">SciPy Getting Started</a>
<a target="_top" href="scipy_constants.asp">SciPy Constants</a>
<a target="_top" href="scipy_optimizers.asp">SciPy Optimizers</a>
<a target="_top" href="scipy_sparse_data.asp">SciPy Sparse Data</a>
<a target="_top" href="scipy_graphs.asp">SciPy Graphs</a>
<a target="_top" href="scipy_spatial_data.asp">SciPy Spatial Data</a>
<a target="_top" href="scipy_matlab_arrays.asp">SciPy Matlab Arrays</a>
<a target="_top" href="scipy_interpolation.asp">SciPy Interpolation</a>
<a target="_top" href="scipy_statistical_significance_tests.asp">SciPy Significance Tests</a>
<br>
-->
<h2 class="left">Machine Learning</h2>
<a target="_top" href="python_ml_getting_started.html">Getting Started</a>
<a target="_top" href="python_ml_mean_median_mode.html">Mean Median Mode</a>
<a target="_top" href="python_ml_standard_deviation.html">Standard Deviation</a>
<a target="_top" href="python_ml_percentile.html">Percentile</a>
<a target="_top" href="python_ml_data_distribution.html">Data Distribution</a>
<a target="_top" href="python_ml_normal_data_distribution.html">Normal Data Distribution</a>
<a target="_top" href="python_ml_scatterplot.html">Scatter Plot</a>
<a target="_top" href="python_ml_linear_regression.html">Linear Regression</a>
<a target="_top" href="python_ml_polynomial_regression.html">Polynomial Regression</a>
<a target="_top" href="python_ml_multiple_regression.html">Multiple Regression</a>
<a target="_top" href="python_ml_scale.html">Scale</a>
<a target="_top" href="python_ml_train_test.html">Train/Test</a>
<a target="_top" href="python_ml_decision_tree.html">Decision Tree</a>
<br>
<h2 class="left">Python MySQL</h2>
<a target="_top" href="python_mysql_getstarted.html">MySQL Get Started</a>
<a target="_top" href="python_mysql_create_db.html">MySQL Create Database</a>
<a target="_top" href="python_mysql_create_table.html">MySQL Create Table</a>
<a target="_top" href="python_mysql_insert.html">MySQL Insert</a>
<a target="_top" href="python_mysql_select.html">MySQL Select</a>
<a target="_top" href="python_mysql_where.html">MySQL Where</a>
<a target="_top" href="python_mysql_orderby.html">MySQL Order By</a>
<a target="_top" href="python_mysql_delete.html">MySQL Delete</a>
<a target="_top" href="python_mysql_drop_table.html">MySQL Drop Table</a>
<a target="_top" href="python_mysql_update.html">MySQL Update</a>
<a target="_top" href="python_mysql_limit.html">MySQL Limit</a>
<a target="_top" href="python_mysql_join.html">MySQL Join</a>
<br>
<h2 class="left">Python MongoDB</h2>
<a target="_top" href="python_mongodb_getstarted.html">MongoDB Get Started</a>
<a target="_top" href="python_mongodb_create_db.html">MongoDB Create Database</a>
<a target="_top" href="python_mongodb_create_collection.html">MongoDB Create Collection</a>
<a target="_top" href="python_mongodb_insert.html">MongoDB Insert</a>
<a target="_top" href="python_mongodb_find.html">MongoDB Find</a>
<a target="_top" href="python_mongodb_query.html">MongoDB Query</a>
<a target="_top" href="python_mongodb_sort.html">MongoDB Sort</a>
<a target="_top" href="python_mongodb_delete.html">MongoDB Delete</a>
<a target="_top" href="python_mongodb_drop_collection.html">MongoDB Drop Collection</a>
<a target="_top" href="python_mongodb_update.html">MongoDB Update</a>
<a target="_top" href="python_mongodb_limit.html">MongoDB Limit</a>
<!--
<a target="_top" href="python_classes.asp">Python Classes</a>
<a target="_top" href="python_aspectoriented.asp">Python as Aspect Oriented</a>
<a target="_top" href="python_filehandling.asp">Python File Handling</a>
<a target="_top" href="python_database.asp">Python Database</a>
<a target="_top" href="python_webapps.asp">Python Web Applications</a>
<a target="_top" href="python_workflows.asp">Python Workflows</a>
<a target="_top" href="python_maths.asp">Python Maths & Science</a>
<a target="_top" href="python_regexp.asp">Python Regular Expressions</a>
<a target="_top" href="python_unittesting.asp">Python Unit Testing</a>
-->

<br>
<h2 class="left">Python Reference</h2>
<a target="_top" href="python_reference.html">Python Overview</a>
<a target="_top" href="python_ref_functions.html">Python Built-in Functions</a>
<a target="_top" href="python_ref_string.html">Python String Methods</a>
<a target="_top" href="python_ref_list.html">Python List Methods</a>
<a target="_top" href="python_ref_dictionary.html">Python Dictionary Methods</a>
<a target="_top" href="python_ref_tuple.html">Python Tuple Methods</a>
<a target="_top" href="python_ref_set.html">Python Set Methods</a>
<a target="_top" href="python_ref_file.html">Python File Methods</a>
<a target="_top" href="python_ref_keywords.html">Python Keywords</a>
<a target="_top" href="python_ref_exceptions.html">Python Exceptions</a>
<a target="_top" href="python_ref_glossary.html">Python Glossary</a>

<br>
<h2 class="left">Module Reference</h2>
<a target="_top" href="module_random.html">Random Module</a>
<a target="_top" href="module_requests.html">Requests Module</a>
<a target="_top" href="module_statistics.html">Statistics Module</a>
<a target="_top" href="module_math.html">Math Module</a>
<a target="_top" href="module_cmath.html">cMath Module</a>

<br>
<h2 class="left">Python How To</h2>
<a target="_top" href="python_howto_remove_duplicates.html">Remove List Duplicates</a>
<a target="_top" href="python_howto_reverse_string.html">Reverse a String</a>
<a target="_top" href="python_howto_add_two_numbers.html">Add Two Numbers</a>

<br>
<h2 class="left">Python Examples</h2>
<a target="_top" href="python_examples.html">Python Examples</a>
<a target="_top" href="python_compiler.html">Python Compiler</a>
<a target="_top" href="python_exercises.html">Python Exercises</a>
<a target="_top" href="python_quiz.html">Python Quiz</a>
<a target="_top" href="python_exam.html">Python Certificate</a>

      <br><br>
    </div>
  </div>
</div>
<div class='w3-main w3-light-grey' id='belowtopnav' style='margin-left:220px;'>
  <div class='w3-row w3-white'>
    <div class='w3-col l10 m12' id='main'>
      <div id='mainLeaderboard' style='overflow:hidden;'>
        <!-- MainLeaderboard-->

        <!--<pre>main_leaderboard, all: [728,90][970,90][320,50][468,60]</pre>-->
        <div id="adngin-main_leaderboard-0"></div>
        <!-- adspace leaderboard -->

      </div>
<h1>Python - Copy Lists</h1>
<div class="w3-clear nextprev">
<a class="w3-left w3-btn" href="python_lists_sort.html">&#10094; Previous</a>
<a class="w3-right w3-btn" href="python_lists_join.html">Next &#10095;</a>
</div>
<hr>


<h2>Copy a List</h2>
<p>You cannot copy a list simply by typing <code class="w3-codespan">list2 = 
list1</code>, because: <code class="w3-codespan">list2</code> will only be a <em>
reference</em> to <code class="w3-codespan">list1</code>, and changes made in
<code class="w3-codespan">list1</code> will automatically also be made in
<code class="w3-codespan">list2</code>.</p>

<p>There are ways to make a copy, one way is to use the built-in List 
method <code class="w3-codespan">
copy()</code>.</p>

<div class="w3-example">
<h3>Example</h3>
<p>Make a copy of a list with the <code class="w3-codespan">copy()</code> method:</p>
<div class="w3-code notranslate pythonHigh">
thislist = [&quot;apple&quot;, &quot;banana&quot;, &quot;cherry&quot;]<br>mylist 
  = thislist.copy()<br>
  print(mylist)
</div>
<a target="_blank" class="w3-btn w3-margin-bottom" href="trypython4677.html?filename=demo_list_copy">Try it Yourself &raquo;</a>
</div>

<p>Another way to make a copy is to use the built-in method <code class="w3-codespan">list()</code>.</p>

<div class="w3-example">
<h3>Example</h3>
<p>Make a copy of a list with the <code class="w3-codespan">list()</code> method:</p>
<div class="w3-code notranslate pythonHigh">
thislist = [&quot;apple&quot;, &quot;banana&quot;, &quot;cherry&quot;]<br>mylist 
  = list(thislist)<br>
  print(mylist)
</div>
<a target="_blank" class="w3-btn w3-margin-bottom" href="trypythoncb41.html?filename=demo_list_copy2">Try it Yourself &raquo;</a>
</div>

<hr>

<div class="w3-clear nextprev">
<a class="w3-left w3-btn" href="python_lists_sort.html">&#10094; Previous</a>
<a class="w3-right w3-btn" href="python_lists_join.html">Next &#10095;</a>
</div>
<div id="mypagediv2" style="position:relative;text-align:center;"></div>
<br>

</div>
<div class="w3-col l2 m12" id="right">

<div class="sidesection">
  <div id="skyscraper">
  
    <div id="adngin-sidebar_top-0"></div>
  
  </div>
</div>
  
<style>
.ribbon-vid {
  font-size:12px;
  font-weight:bold;
  padding: 6px 20px;
  left:-20px;
  top:-10px;
  text-align: center;
  color:black;
  border-radius:25px;
}
</style>

<div class="sidesection" id="video_sidesection">
  <div class="w3-center" style="padding-bottom:7px">
    <span class="ribbon-vid ws-yellow">NEW</span>
  </div>
  <p style="font-size: 14px;line-height: 1.5;font-family: Source Sans Pro;padding-left:4px;padding-right:4px;">We just launched<br>W3Schools videos</p>
  <a onclick="ga('send', 'event', 'Videos' , 'fromSidebar');" href="https://www.w3schools.com/videos/index.php" class="w3-hover-opacity"><img src="https://www.w3schools.com/images/htmlvideoad_footer.png" style="max-width:100%;padding:5px 10px 25px 10px" loading="lazy"></a>
  <a class="ws-button" style="font-size:16px;text-decoration: none !important;display: block !important; color:#FFC0C7!important;  width: 100%; border-bottom-left-radius: 5px; border-bottom-right-radius: 5px; paxdding-top: 10px; padding-bottom: 20px; font-family: 'Source Sans Pro', sans-serif; text-align: center;"  onclick="ga('send', 'event', 'Videos' , 'fromSidebar');" href="https://www.w3schools.com/videos/index.php">Explore now</a>
</div>

<div class="sidesection">
<h4><a href="https://www.w3schools.com/colors/colors_picker.asp">COLOR PICKER</a></h4>
<a href="https://www.w3schools.com/colors/colors_picker.asp">
<img src="https://www.w3schools.com/images/colorpicker2000.png" alt="colorpicker" loading="lazy">
</a>
</div>

<div class="sidesection">
<!--<h4>LIKE US</h4>-->
  <div class="sharethis">
    <a href="https://www.facebook.com/w3schoolscom/" target="_blank" title="Facebook"><span class="fa fa-facebook-square fa-2x"></span></a>
    <a href="https://www.instagram.com/w3schools.com_official/" target="_blank" title="Instagram"><span class="fa fa-instagram fa-2x"></span></a>
    <a href="https://www.linkedin.com/company/w3schools.com/" target="_blank" title="LinkedIn"><span class="fa fa-linkedin-square fa-2x"></span></a>
    <a href="https://discord.gg/6Z7UaRbUQM" target="_blank" title='Join the W3schools community on Discord'><span class="fa fa-discord fa-2x"></span></a>    
  </div>
</div>

<!--
<div class="sidesection" style="border-radius:5px;color:#555;padding-top:1px;padding-bottom:8px;margin-left:auto;margin-right:auto;max-width:230px;background-color:#d4edda">
<p>Get your<br>certification today!</p>
<a href="/cert/default.asp" target="_blank">
<img src="/images/w3certified_logo_250.png" style="margin:0 12px 20px 10px;max-width:80%">
</a>
<a class="w3-btn w3-margin-bottom" style="text-decoration:none;border-radius:5px;"
href="/cert/default.asp" target="_blank">View options</a>
</div>
-->

<style>
#courses_get_started_btn {
text-decoration:none !important;
background-color:#04AA6D;
width:100%;
border-bottom-left-radius:5px;
border-bottom-right-radius:5px;
padding-top:10px;
padding-bottom:10px;
font-family: 'Source Sans Pro', sans-serif;
}
#courses_get_started_btn:hover {
background-color:#059862!important;
}
</style>
<div id="internalCourses"  class="sidesection">
<p style="font-size:18px;padding-left:2px;padding-right:2px;">Get certified<br>by completing<br><span id="courses_subject_text">a</span> course today!</p>
<a id="courses_subject_img_link" href="https://courses.w3schools.com/" target="_blank" onclick="ga('send', 'event', 'Courses' , 'Clicked on courses banner in ads column');">
<div style="padding:0 20px 20px 20px">
<svg id="w3_cert_badge2" style="margin:auto;width:85%" data-name="w3_cert_badge2" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 300 300"><defs><style>.cls-1{fill:#04aa6b;}.cls-2{font-size:23px;}.cls-2,.cls-3,.cls-4{fill:#fff;}.cls-2,.cls-3{font-family:RobotoMono-Medium, Roboto Mono;font-weight:500;}.cls-3{font-size:20.08px;}</style></defs><circle class="cls-1" cx="150" cy="150" r="146.47" transform="translate(-62.13 150) rotate(-45)"/><text class="cls-2" transform="translate(93.54 63.89) rotate(-29.5)">w</text><text class="cls-2" transform="translate(107.13 56.35) rotate(-20.8)">3</text><text class="cls-2" transform="matrix(0.98, -0.21, 0.21, 0.98, 121.68, 50.97)">s</text><text class="cls-2" transform="translate(136.89 47.84) rotate(-3.47)">c</text><text class="cls-2" transform="translate(152.39 47.03) rotate(5.12)">h</text><text class="cls-2" transform="translate(167.85 48.54) rotate(13.72)">o</text><text class="cls-2" transform="translate(182.89 52.35) rotate(22.34)">o</text><text class="cls-2" transform="matrix(0.86, 0.52, -0.52, 0.86, 197.18, 58.36)">l</text><text class="cls-2" transform="matrix(0.77, 0.64, -0.64, 0.77, 210.4, 66.46)">s</text><text class="cls-3" transform="translate(35.51 186.66) rotate(69.37)"> </text><text class="cls-3" transform="matrix(0.47, 0.88, -0.88, 0.47, 41.27, 201.28)">C</text><text class="cls-3" transform="matrix(0.58, 0.81, -0.81, 0.58, 48.91, 215.03)">E</text><text class="cls-3" transform="matrix(0.67, 0.74, -0.74, 0.67, 58.13, 227.36)">R</text><text class="cls-3" transform="translate(69.16 238.92) rotate(39.44)">T</text><text class="cls-3" transform="matrix(0.85, 0.53, -0.53, 0.85, 81.47, 248.73)">I</text><text class="cls-3" transform="translate(94.94 256.83) rotate(24.36)">F</text><text class="cls-3" transform="translate(109.34 263.09) rotate(16.83)">I</text><text class="cls-3" transform="translate(124.46 267.41) rotate(9.34)">E</text><text class="cls-3" transform="translate(139.99 269.73) rotate(1.88)">D</text><text class="cls-3" transform="translate(155.7 270.01) rotate(-5.58)"> </text><text class="cls-3" transform="translate(171.32 268.24) rotate(-13.06)"> </text><text class="cls-2" transform="translate(187.55 266.81) rotate(-21.04)">.</text><text class="cls-3" transform="translate(203.27 257.7) rotate(-29.24)"> </text><text class="cls-3" transform="translate(216.84 249.83) rotate(-36.75)"> </text><text class="cls-3" transform="translate(229.26 240.26) rotate(-44.15)">2</text><text class="cls-3" transform="translate(240.39 229.13) rotate(-51.62)">0</text><text class="cls-3" transform="translate(249.97 216.63) rotate(-59.17)">2</text><text class="cls-3" transform="matrix(0.4, -0.92, 0.92, 0.4, 257.81, 203.04)">2</text><path class="cls-4" d="M196.64,136.31s3.53,3.8,8.5,3.8c3.9,0,6.75-2.37,6.75-5.59,0-4-3.64-5.81-8-5.81h-2.59l-1.53-3.48,6.86-8.13a34.07,34.07,0,0,1,2.7-2.85s-1.11,0-3.33,0H194.79v-5.86H217.7v4.28l-9.19,10.61c5.18.74,10.24,4.43,10.24,10.92s-4.85,12.3-13.19,12.3a17.36,17.36,0,0,1-12.41-5Z"/><path class="cls-4" d="M152,144.24l30.24,53.86,14.94-26.61L168.6,120.63H135.36l-13.78,24.53-13.77-24.53H77.93l43.5,77.46.15-.28.16.28Z"/></svg>
</div>

</a>
<a class="w3-btn" id="courses_get_started_btn" 
href="https://courses.w3schools.com/" target="_blank" onclick="ga('send', 'event', 'Courses' , 'Clicked on courses banner in ads column');">Get started</a>
</div>
<script>
switch (subjectFolder) {
  case "cpp":
    subjectText = "C++";
    subjectLink = "https://courses.w3schools.com/courses/cplusplus";
    break;
  case "java":
    subjectText = "Java";
    subjectLink = "https://courses.w3schools.com/courses/java";
    break;
  case "bootstrap4":
    subjectText = "Bootstrap 4";
    subjectLink = "https://courses.w3schools.com/courses/bootstrap4";
    break;  
  case "xml":
    subjectText = "XML";
    subjectLink = "https://courses.w3schools.com/courses/xml";
    break;
  case "jquery":
    subjectText = "jQuery";
    subjectLink = "https://courses.w3schools.com/courses/jquery";
    break;
  case "accessibility":
    subjectText = "Accessibility";
    subjectLink = "https://courses.w3schools.com/courses/accessibility-fundamentals";
    break;
  case "bootstrap":
    subjectText = "Bootstrap 3";
    subjectLink = "https://courses.w3schools.com/courses/bootstrap-3-fundamentals";
    break;
  case "html":
    subjectText = "HTML";
    subjectLink = "https://courses.w3schools.com/courses/html";
    break;
  case "tags":
    subjectText = "HTML";
    subjectLink = "https://courses.w3schools.com/courses/html";
    break;
  case "css":
    subjectText = "CSS";
    subjectLink = "https://courses.w3schools.com/courses/css";
    break;
  case "cssref":
    subjectText = "CSS";
    subjectLink = "https://courses.w3schools.com/courses/css";
    break;
  case "js":
    subjectText = "JavaScript";
    subjectLink = "https://courses.w3schools.com/courses/javascript";
    break;
  case "jsref":
    subjectText = "JavaScript";
    subjectLink = "https://courses.w3schools.com/courses/javascript";
    break;
  case "react":
    subjectText = "React.html";
    subjectLink = "https://courses.w3schools.com/courses/react";
    break;
  case "sql":
    subjectText = "SQL";
    subjectLink = "https://courses.w3schools.com/courses/sql";
    break;
  case "python":
    subjectText = "Python";
    subjectLink = "https://courses.w3schools.com/courses/python";
    break;
  case "php":
    subjectText = "PHP";
    subjectLink = "https://courses.w3schools.com/courses/php";
    break;
  case "cybersecurity":
    subjectText = "Cyber Security";
    subjectLink = "https://courses.w3schools.com/courses/introduction-to-cyber-security";
    break;
  case "r":
    subjectText = "R";
    subjectLink = "https://courses.w3schools.com/courses/r-fundamentals";
    break;
  case "numpy":
    subjectText = "Numpy";
    subjectLink = "https://courses.w3schools.com/courses/numpy-fundamentals";
    break;
  case "pandas":
    subjectText = "Pandas";
    subjectLink = "https://courses.w3schools.com/courses/pandas-fundamentals";
    break;
  case "cs":
    subjectText = "C#";
    subjectLink = "https://courses.w3schools.com/courses/c-sharp";
    break;    
  default:
    subjectText = "a";
    subjectLink = "https://courses.w3schools.com/courses/";
}
if (subjectText != "a") {
  document.getElementById("courses_subject_text").innerHTML = "a " + subjectText + "<br>";
  document.getElementById("courses_subject_img_link").href = subjectLink;
  document.getElementById("courses_get_started_btn").href = subjectLink;
}
</script>

<!--
<div class="sidesection" style="margin-left:auto;margin-right:auto;max-width:230px">
<a href="https://shop.w3schools.com/" target="_blank" title="Buy W3Schools Merchandize">
  <img src="/images/tshirt.jpg" style="max-width:100%;">
</a>
</div>
-->

<div class="sidesection" id="moreAboutSubject">
</div>

<!--
<div id="sidesection_exercise" class="sidesection" style="background-color:#555555;max-width:200px;margin:auto;margin-bottom:32px">
  <div class="w3-container w3-text-white">
    <h4>Exercises</h4>
  </div>
  <div>
    <div class="w3-light-grey">
      <a target="_blank" href="/html/exercise.asp" style="padding-top:8px">HTML</a>
      <a target="_blank" href="/css/exercise.asp">CSS</a>
      <a target="_blank" href="/js/exercise_js.asp">JavaScript</a>
      <a target="_blank" href="/sql/exercise.asp">SQL</a>
      <a target="_blank" href="/php/exercise.asp">PHP</a>
      <a target="_blank" href="/python/exercise.asp">Python</a>
      <a target="_blank" href="/bootstrap/exercise_bs3.asp">Bootstrap</a>
      <a target="_blank" href="/jquery/exercise_jq.asp" style="padding-bottom:8px">jQuery</a>
    </div>
  </div>
</div>
-->

<div class="sidesection codegameright ws-turquoise" style="font-size:18px;font-family: 'Source Sans Pro', sans-serif;border-radius:5px;color:#FFC0C7;padding-top:12px;margin-left:auto;margin-right:auto;max-width:230px;">
<style>
.codegameright .w3-btn:link,.codegameright .w3-btn:visited {
  background-color:#04AA6D;
  border-radius:5px;
}
.codegameright .w3-btn:hover,.codegameright .w3-btn:active {
  background-color:#059862!important;
  text-decoration:none!important;
}
</style>
  <h4><a href="https://www.w3schools.com/codegame/index.html" class="w3-hover-text-black">CODE GAME</a></h4>
  <a href="https://www.w3schools.com/codegame/index.html" target="_blank" class="w3-hover-opacity"><img style="max-width:100%;margin:16px 0;" src="https://www.w3schools.com/images/w3lynx_200.png" alt="Code Game" loading="lazy"></a>
  <a class="w3-btn w3-block ws-black" href="https://www.w3schools.com/codegame/index.html" target="_blank" style="padding-top:10px;padding-bottom:10px;margin-top:12px;border-top-left-radius: 0;border-top-right-radius: 0">Play Game</a>
</div>

<!--

<div class="sidesection w3-light-grey" style="margin-left:auto;margin-right:auto;max-width:230px">
  <div class="w3-container w3-dark-grey">
    <h4><a href="/howto/default.asp" class="w3-hover-text-white">HOW TO</a></h4>
  </div>
  <div class="w3-container w3-left-align w3-padding-16">
    <a href="/howto/howto_js_tabs.asp">Tabs</a><br>
    <a href="/howto/howto_css_dropdown.asp">Dropdowns</a><br>
    <a href="/howto/howto_js_accordion.asp">Accordions</a><br>
    <a href="/howto/howto_js_sidenav.asp">Side Navigation</a><br>
    <a href="/howto/howto_js_topnav.asp">Top Navigation</a><br>
    <a href="/howto/howto_css_modals.asp">Modal Boxes</a><br>
    <a href="/howto/howto_js_progressbar.asp">Progress Bars</a><br>
    <a href="/howto/howto_css_parallax.asp">Parallax</a><br>
    <a href="/howto/howto_css_login_form.asp">Login Form</a><br>
    <a href="/howto/howto_html_include.asp">HTML Includes</a><br>
    <a href="/howto/howto_google_maps.asp">Google Maps</a><br>
    <a href="/howto/howto_js_rangeslider.asp">Range Sliders</a><br>
    <a href="/howto/howto_css_tooltip.asp">Tooltips</a><br>
    <a href="/howto/howto_js_slideshow.asp">Slideshow</a><br>
    <a href="/howto/howto_js_sort_list.asp">Sort List</a><br>
  </div>
</div>
-->

<!--
<div class="sidesection w3-round" style="margin-left:auto;margin-right:auto;max-width:230px">
  <div class="w3-container ws-black" style="border-top-right-radius:5px;border-top-left-radius:5px;">
    <h5><a href="/cert/default.asp" class="w3-hover-text-white">Certificates</a></h5>
  </div>
  <div class="w3-border" style="border-bottom-right-radius:5px;border-bottom-left-radius:5px;">
  <a href="/cert/cert_html.asp" class="w3-button ws-grey w3-block w3-border-bottom" style="text-decoration:none">HTML</a>
  <a href="/cert/cert_css.asp" class="w3-button ws-grey w3-block w3-border-bottom" style="text-decoration:none">CSS</a>
  <a href="/cert/cert_javascript.asp" class="w3-button ws-grey w3-block w3-border-bottom" style="text-decoration:none">JavaScript</a>
  <a href="/cert/cert_frontend.asp" class="w3-button ws-grey w3-block w3-border-bottom" style="text-decoration:none">Front End</a>
  <a href="/cert/cert_python.asp" class="w3-button ws-grey w3-block w3-border-bottom" style="text-decoration:none">Python</a>
  <a href="/cert/cert_sql.asp" class="w3-button ws-grey w3-block w3-border-bottom" style="text-decoration:none">SQL</a>
  <a href="/cert/default.asp" class="w3-button ws-grey w3-block" style="text-decoration:none;">And more</a>
  </div>
</div>
-->

<div id="stickypos" class="sidesection" style="text-align:center;position:sticky;top:50px;">
  <div id="stickyadcontainer">
    <div style="position:relative;margin:auto;">
      
      <div id="adngin-sidebar_sticky-0"></div>
        <script>
        function secondSnigel() {
          if(window.adngin && window.adngin.adnginLoaderReady) {
            if (Number(w3_getStyleValue(document.getElementById("main"), "height").replace("px", "")) > 2200) {         
              if (document.getElementById("adngin-mid_content-0")) {
                adngin.queue.push(function(){  adngin.cmd.startAuction(["sidebar_sticky", "mid_content" ]); });
              } else {
                adngin.queue.push(function(){  adngin.cmd.startAuction(["sidebar_sticky"]); });
              }
            } else {
              if (document.getElementById("adngin-mid_content-0")) {
                adngin.queue.push(function(){  adngin.cmd.startAuction(["mid_content"]); });
              }
            }
          } else {
            window.addEventListener('adnginLoaderReady', function() {
              if (Number(w3_getStyleValue(document.getElementById("main"), "height").replace("px", "")) > 2200) {
                if (document.getElementById("adngin-mid_content-0")) {
                  adngin.queue.push(function(){  adngin.cmd.startAuction(["sidebar_sticky", "mid_content" ]); });
                } else {
                  adngin.queue.push(function(){  adngin.cmd.startAuction(["sidebar_sticky"]); });
                }
              } else {
                if (document.getElementById("adngin-mid_content-0")) {
                  adngin.queue.push(function(){  adngin.cmd.startAuction(["mid_content"]); });
                }
              }
            });
          }
        }
      </script>
      
    </div>
  </div>
</div>

<script>
uic_r_c()
</script>

</div>
</div>
<div id="footer" class="footer w3-container w3-white">

<hr>

<div style="overflow:auto">
  <div class="bottomad">
    <!-- BottomMediumRectangle -->
    <!--<pre>bottom_medium_rectangle, all: [970,250][300,250][336,280]</pre>-->
    <div id="adngin-bottom_left-0" style="padding:0 10px 10px 0;float:left;width:auto;"></div>
    <!-- adspace bmr -->
    <!-- RightBottomMediumRectangle -->
    <!--<pre>right_bottom_medium_rectangle, desktop: [300,250][336,280]</pre>-->
    <div id="adngin-bottom_right-0" style="padding:0 10px 10px 0;float:left;width:auto;"></div>
  </div>
</div>

<hr>
<div class="w3-row-padding w3-center w3-small" style="margin:0 -16px;">
<div class="w3-col l3 m3 s12">
<a class="w3-button ws-grey ws-hover-black w3-block w3-round" href="javascript:void(0);" onclick="displayError();return false" style="white-space:nowrap;text-decoration:none;margin-top:1px;margin-bottom:1px;font-size:15px;">Report Error</a>
</div>
<!--
<div class="w3-col l3 m3 s12">
<a class="w3-button w3-light-grey w3-block" href="javascript:void(0);" target="_blank" onclick="printPage();return false;" style="text-decoration:none;margin-top:1px;margin-bottom:1px">PRINT PAGE</a>
</div>
-->
<div class="w3-col l3 m3 s12">
<a class="w3-button ws-grey ws-hover-black w3-block w3-round" href="https://www.w3schools.com/forum/default.asp" target="_blank" style="text-decoration:none;margin-top:1px;margin-bottom:1px;font-size:15px">Forum</a>
</div>
<div class="w3-col l3 m3 s12">
<a class="w3-button ws-grey ws-hover-black w3-block w3-round" href="https://www.w3schools.com/about/default.asp" target="_top" style="text-decoration:none;margin-top:1px;margin-bottom:1px;font-size:15px">About</a>
</div>
<div class="w3-col l3 m3 s12">
<a class="w3-button ws-grey ws-hover-black w3-block w3-round" href="https://shop.w3schools.com/" target="_blank" style="text-decoration:none;margin-top:1px;margin-bottom:1px;font-size:15px">Shop</a>
</div>

</div>
<hr>
<div class="ws-grey w3-padding w3-margin-bottom" id="err_form" style="display:none;position:relative">
<span onclick="this.parentElement.style.display='none'" class="w3-button w3-display-topright w3-large">&times;</span>

<h2>Report Error</h2>

<p>If you want to report an error, or if you want to make a suggestion, do not hesitate to send us an e-mail:</p>
<p>help@w3schools.com</p>
<br>

<!--
<h2>Your Suggestion:</h2>
<form>
<div class="w3-section">      
<label for="err_email">Your E-mail:</label>
<input class="w3-input w3-border" type="text" style="margin-top:5px;width:100%" id="err_email" name="err_email">
</div>
<div class="w3-section">      
<label for="err_email">Page address:</label>
<input class="w3-input w3-border" type="text" style="width:100%;margin-top:5px" id="err_url" name="err_url" disabled="disabled">
</div>
<div class="w3-section">
<label for="err_email">Description:</label>
<textarea rows="10" class="w3-input w3-border" id="err_desc" name="err_desc" style="width:100%;margin-top:5px;resize:vertical;"></textarea>
</div>
<div class="form-group">        
<button type="button" class="w3-button w3-dark-grey" onclick="sendErr()">Submit</button>
</div>
<br>
</form>
-->

</div>
<div class="w3-container ws-grey w3-padding" id="err_sent" style="display:none;position:relative">
<span onclick="this.parentElement.style.display='none'" class="w3-button w3-display-topright">&times;</span>     
<h2>Thank You For Helping Us!</h2>
<p>Your message has been sent to W3Schools.</p>
</div>

<div class="w3-row w3-center w3-small">
<div class="w3-col l3 m6 s12">
<div class="top10">
<h5 style="font-family: 'Source Sans Pro', sans-serif;">Top Tutorials</h5>
<a href="https://www.w3schools.com/html/default.asp">HTML Tutorial</a><br>
<a href="https://www.w3schools.com/css/default.asp">CSS Tutorial</a><br>
<a href="https://www.w3schools.com/js/default.asp">JavaScript Tutorial</a><br>
<a href="https://www.w3schools.com/howto/default.asp">How To Tutorial</a><br>
<a href="https://www.w3schools.com/sql/default.asp">SQL Tutorial</a><br>
<a href="default.html">Python Tutorial</a><br>
<a href="https://www.w3schools.com/w3css/default.asp">W3.CSS Tutorial</a><br>
<a href="https://www.w3schools.com/bootstrap/bootstrap_ver.asp">Bootstrap Tutorial</a><br>
<a href="https://www.w3schools.com/php/default.asp">PHP Tutorial</a><br>
<a href="https://www.w3schools.com/java/default.asp">Java Tutorial</a><br>
<a href="https://www.w3schools.com/cpp/default.asp">C++ Tutorial</a><br>
<a href="https://www.w3schools.com/jquery/default.asp">jQuery Tutorial</a><br>
</div>
</div>
<div class="w3-col l3 m6 s12">
<div class="top10">
<h5 style="font-family: 'Source Sans Pro', sans-serif;">Top References</h5>
<a href="https://www.w3schools.com/tags/default.asp">HTML Reference</a><br>
<a href="https://www.w3schools.com/cssref/default.asp">CSS Reference</a><br>
<a href="https://www.w3schools.com/jsref/default.asp">JavaScript Reference</a><br>
<a href="https://www.w3schools.com/sql/sql_ref_keywords.asp">SQL Reference</a><br>
<a href="python_reference.html">Python Reference</a><br>
<a href="https://www.w3schools.com/w3css/w3css_references.asp">W3.CSS Reference</a><br>
<a href="https://www.w3schools.com/bootstrap/bootstrap_ref_all_classes.asp">Bootstrap Reference</a><br>
<a href="https://www.w3schools.com/php/php_ref_overview.asp">PHP Reference</a><br>
<a href="https://www.w3schools.com/colors/colors_names.asp">HTML Colors</a><br>
<a href="https://www.w3schools.com/java/java_ref_keywords.asp">Java Reference</a><br>
<a href="https://www.w3schools.com/angular/angular_ref_directives.asp">Angular Reference</a><br>
<a href="https://www.w3schools.com/jquery/jquery_ref_overview.asp">jQuery Reference</a><br>
</div>
</div>
<div class="w3-col l3 m6 s12">
<div class="top10">
<h5 style="font-family: 'Source Sans Pro', sans-serif;">Top Examples</h5>
<a href="https://www.w3schools.com/html/html_examples.asp">HTML Examples</a><br>
<a href="https://www.w3schools.com/css/css_examples.asp">CSS Examples</a><br>
<a href="https://www.w3schools.com/js/js_examples.asp">JavaScript Examples</a><br>
<a href="https://www.w3schools.com/howto/default.asp">How To Examples</a><br>
<a href="https://www.w3schools.com/sql/sql_examples.asp">SQL Examples</a><br>
<a href="python_examples.html">Python Examples</a><br>
<a href="https://www.w3schools.com/w3css/w3css_examples.asp">W3.CSS Examples</a><br>
<a href="https://www.w3schools.com/bootstrap/bootstrap_examples.asp">Bootstrap Examples</a><br>
<a href="https://www.w3schools.com/php/php_examples.asp">PHP Examples</a><br>
<a href="https://www.w3schools.com/java/java_examples.asp">Java Examples</a><br>
<a href="https://www.w3schools.com/xml/xml_examples.asp">XML Examples</a><br>
<a href="https://www.w3schools.com/jquery/jquery_examples.asp">jQuery Examples</a><br>
</div>
</div>
<div class="w3-col l3 m6 s12">
<div class="top10">
<!--
<h4>Web Certificates</h4>
<a href="/cert/default.asp">HTML Certificate</a><br>
<a href="/cert/default.asp">CSS Certificate</a><br>
<a href="/cert/default.asp">JavaScript Certificate</a><br>
<a href="/cert/default.asp">SQL Certificate</a><br>
<a href="/cert/default.asp">Python Certificate</a><br>
<a href="/cert/default.asp">PHP Certificate</a><br>
<a href="/cert/default.asp">Bootstrap Certificate</a><br>
<a href="/cert/default.asp">XML Certificate</a><br>
<a href="/cert/default.asp">jQuery Certificate</a><br>
<a href="//www.w3schools.com/cert/default.asp" class="w3-button w3-margin-top w3-dark-grey" style="text-decoration:none">
Get Certified &raquo;</a>
-->

<h5 style="font-family: 'Source Sans Pro', sans-serif;">Web Courses</h5>
<a href="https://courses.w3schools.com/courses/html" target="_blank" onclick="ga('send', 'event', 'Courses' , 'Clicked on html course link in footer');">HTML Course</a><br>
<a href="https://courses.w3schools.com/courses/css" target="_blank" onclick="ga('send', 'event', 'Courses' , 'Clicked on css course link in footer');">CSS Course</a><br>
<a href="https://courses.w3schools.com/courses/javascript" target="_blank" onclick="ga('send', 'event', 'Courses' , 'Clicked on javascript course link in footer');">JavaScript Course</a><br>
<a href="https://courses.w3schools.com/programs/front-end" target="_blank" onclick="ga('send', 'event', 'Courses' , 'Clicked on Front End course link in footer');">Front End Course</a><br>
<a href="https://courses.w3schools.com/courses/sql" target="_blank" onclick="ga('send', 'event', 'Courses' , 'Clicked on sql course link in footer');">SQL Course</a><br>
<a href="https://courses.w3schools.com/courses/python" target="_blank" onclick="ga('send', 'event', 'Courses' , 'Clicked on python course link in footer');">Python Course</a><br>
<a href="https://courses.w3schools.com/courses/php" target="_blank" onclick="ga('send', 'event', 'Courses' , 'Clicked on php course link in footer');">PHP Course</a><br>
<a href="https://courses.w3schools.com/courses/jquery" target="_blank" onclick="ga('send', 'event', 'Courses' , 'Clicked on jquery course link in footer');">jQuery Course</a><br>
<a href="https://courses.w3schools.com/courses/java" target="_blank" onclick="ga('send', 'event', 'Courses' , 'Clicked on Java course link in footer');">Java Course</a><br>
<a href="https://courses.w3schools.com/courses/cplusplus" target="_blank" onclick="ga('send', 'event', 'Courses' , 'Clicked on C++ course link in footer');">C++ Course</a><br>
<a href="https://courses.w3schools.com/courses/c-sharp" target="_blank" onclick="ga('send', 'event', 'Courses' , 'Clicked on bootstrap C# link in footer');">C# Course</a><br>
<a href="https://courses.w3schools.com/courses/xml" target="_blank" onclick="ga('send', 'event', 'Courses' , 'Clicked on xml course link in footer');">XML Course</a><br>
<a href="https://courses.w3schools.com/" target="_blank" class="w3-button w3-margin-top ws-black ws-hover-black w3-round" style="text-decoration:none" onclick="ga('send', 'event', 'Courses' , 'Clicked on get certified button in footer');">
Get Certified &raquo;</a>


</div>
</div>        
</div>        

<hr>
<div class="w3-center w3-small w3-opacity">
W3Schools is optimized for learning and training. Examples might be simplified to improve reading and learning.
Tutorials, references, and examples are constantly reviewed to avoid errors, but we cannot warrant full correctness of all content.
While using W3Schools, you agree to have read and accepted our <a href="https://www.w3schools.com/about/about_copyright.asp">terms of use</a>, 
<a href="https://www.w3schools.com/about/about_privacy.asp">cookie and privacy policy</a>.<br><br>
<a href="https://www.w3schools.com/about/about_copyright.asp">Copyright 1999-2022</a> by Refsnes Data. All Rights Reserved.<br>
<a href="http://www.w3schools.com/w3css/default.asp">W3Schools is Powered by W3.CSS</a>.<br><br>
</div>
<div class="w3-center w3-small">
<a href="http://www.w3schools.com/">
    <i class="fa fa-logo ws-text-green ws-hover-text-green" style="position:relative;font-size:42px!important;"></i>
</div>
<br><br>
</div>

</div>
<script src="../lib/w3schools_footer721a.js?update=20220202"></script>

<script>
  MyLearning.loadUser('footer');
  function docReady(fn) {
    document.addEventListener("DOMContentLoaded", fn);
    if (document.readyState === "interactive" || document.readyState === "complete" ) {
      fn();
    }
  }
  uic_r_z();
  uic_r_d()
</script>

<!--[if lt IE 9]>
<script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
<script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>  
<![endif]-->
</body>

<!-- Mirrored from www.w3schools.com/python/python_lists_copy.asp by HTTrack Website Copier/3.x [XR&CO'2014], Tue, 31 May 2022 13:38:07 GMT -->
</html>