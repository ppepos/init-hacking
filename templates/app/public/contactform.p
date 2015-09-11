<!DOCTYPE html>
<html  class="linux">

<head>
  <script type="text/javascript">(window.NREUM||(NREUM={})).loader_config={xpid:"Vw4OVV9bGwEDUlVUAQQ="};window.NREUM||(NREUM={}),__nr_require=function(t,e,n){function r(n){if(!e[n]){var o=e[n]={exports:{}};t[n][0].call(o.exports,function(e){var o=t[n][1][e];return r(o?o:e)},o,o.exports)}return e[n].exports}if("function"==typeof __nr_require)return __nr_require;for(var o=0;o<n.length;o++)r(n[o]);return r}({QJf3ax:[function(t,e){function n(t){function e(e,n,a){t&&t(e,n,a),a||(a={});for(var c=s(e),f=c.length,u=i(a,o,r),d=0;f>d;d++)c[d].apply(u,n);return u}function a(t,e){f[t]=s(t).concat(e)}function s(t){return f[t]||[]}function c(){return n(e)}var f={};return{on:a,emit:e,create:c,listeners:s,_events:f}}function r(){return{}}var o="nr@context",i=t("gos");e.exports=n()},{gos:"7eSDFh"}],ee:[function(t,e){e.exports=t("QJf3ax")},{}],3:[function(t){function e(t){try{i.console&&console.log(t)}catch(e){}}var n,r=t("ee"),o=t(1),i={};try{n=localStorage.getItem("__nr_flags").split(","),console&&"function"==typeof console.log&&(i.console=!0,-1!==n.indexOf("dev")&&(i.dev=!0),-1!==n.indexOf("nr_dev")&&(i.nrDev=!0))}catch(a){}i.nrDev&&r.on("internal-error",function(t){e(t.stack)}),i.dev&&r.on("fn-err",function(t,n,r){e(r.stack)}),i.dev&&(e("NR AGENT IN DEVELOPMENT MODE"),e("flags: "+o(i,function(t){return t}).join(", ")))},{1:23,ee:"QJf3ax"}],4:[function(t){function e(t,e,n,i,s){try{c?c-=1:r("err",[s||new UncaughtException(t,e,n)])}catch(f){try{r("ierr",[f,(new Date).getTime(),!0])}catch(u){}}return"function"==typeof a?a.apply(this,o(arguments)):!1}function UncaughtException(t,e,n){this.message=t||"Uncaught error with no additional information",this.sourceURL=e,this.line=n}function n(t){r("err",[t,(new Date).getTime()])}var r=t("handle"),o=t(6),i=t("ee"),a=window.onerror,s=!1,c=0;t("loader").features.err=!0,t(5),window.onerror=e;try{throw new Error}catch(f){"stack"in f&&(t(1),t(2),"addEventListener"in window&&t(3),window.XMLHttpRequest&&XMLHttpRequest.prototype&&XMLHttpRequest.prototype.addEventListener&&window.XMLHttpRequest&&XMLHttpRequest.prototype&&XMLHttpRequest.prototype.addEventListener&&!/CriOS/.test(navigator.userAgent)&&t(4),s=!0)}i.on("fn-start",function(){s&&(c+=1)}),i.on("fn-err",function(t,e,r){s&&(this.thrown=!0,n(r))}),i.on("fn-end",function(){s&&!this.thrown&&c>0&&(c-=1)}),i.on("internal-error",function(t){r("ierr",[t,(new Date).getTime(),!0])})},{1:10,2:9,3:7,4:11,5:3,6:24,ee:"QJf3ax",handle:"D5DuLP",loader:"G9z0Bl"}],5:[function(t){t("loader").features.ins=!0},{loader:"G9z0Bl"}],6:[function(t){function e(){}if(window.performance&&window.performance.timing&&window.performance.getEntriesByType){var n=t("ee"),r=t("handle"),o=t(1),i=t(2);t("loader").features.stn=!0,t(3),n.on("fn-start",function(t){var e=t[0];e instanceof Event&&(this.bstStart=Date.now())}),n.on("fn-end",function(t,e){var n=t[0];n instanceof Event&&r("bst",[n,e,this.bstStart,Date.now()])}),o.on("fn-start",function(t,e,n){this.bstStart=Date.now(),this.bstType=n}),o.on("fn-end",function(t,e){r("bstTimer",[e,this.bstStart,Date.now(),this.bstType])}),i.on("fn-start",function(){this.bstStart=Date.now()}),i.on("fn-end",function(t,e){r("bstTimer",[e,this.bstStart,Date.now(),"requestAnimationFrame"])}),n.on("pushState-start",function(){this.time=Date.now(),this.startPath=location.pathname+location.hash}),n.on("pushState-end",function(){r("bstHist",[location.pathname+location.hash,this.startPath,this.time])}),"addEventListener"in window.performance&&(window.performance.addEventListener("webkitresourcetimingbufferfull",function(){r("bstResource",[window.performance.getEntriesByType("resource")]),window.performance.webkitClearResourceTimings()},!1),window.performance.addEventListener("resourcetimingbufferfull",function(){r("bstResource",[window.performance.getEntriesByType("resource")]),window.performance.clearResourceTimings()},!1)),document.addEventListener("scroll",e,!1),document.addEventListener("keypress",e,!1),document.addEventListener("click",e,!1)}},{1:10,2:9,3:8,ee:"QJf3ax",handle:"D5DuLP",loader:"G9z0Bl"}],7:[function(t,e){function n(t){i.inPlace(t,["addEventListener","removeEventListener"],"-",r)}function r(t){return t[1]}var o=t("ee").create(),i=t(1)(o),a=t("gos");if(e.exports=o,n(window),"getPrototypeOf"in Object){for(var s=document;s&&!s.hasOwnProperty("addEventListener");)s=Object.getPrototypeOf(s);s&&n(s);for(var c=XMLHttpRequest.prototype;c&&!c.hasOwnProperty("addEventListener");)c=Object.getPrototypeOf(c);c&&n(c)}else XMLHttpRequest.prototype.hasOwnProperty("addEventListener")&&n(XMLHttpRequest.prototype);o.on("addEventListener-start",function(t){if(t[1]){var e=t[1];"function"==typeof e?this.wrapped=t[1]=a(e,"nr@wrapped",function(){return i(e,"fn-",null,e.name||"anonymous")}):"function"==typeof e.handleEvent&&i.inPlace(e,["handleEvent"],"fn-")}}),o.on("removeEventListener-start",function(t){var e=this.wrapped;e&&(t[1]=e)})},{1:25,ee:"QJf3ax",gos:"7eSDFh"}],8:[function(t,e){var n=t("ee").create(),r=t(1)(n);e.exports=n,r.inPlace(window.history,["pushState"],"-")},{1:25,ee:"QJf3ax"}],9:[function(t,e){var n=t("ee").create(),r=t(1)(n);e.exports=n,r.inPlace(window,["requestAnimationFrame","mozRequestAnimationFrame","webkitRequestAnimationFrame","msRequestAnimationFrame"],"raf-"),n.on("raf-start",function(t){t[0]=r(t[0],"fn-")})},{1:25,ee:"QJf3ax"}],10:[function(t,e){function n(t,e,n){t[0]=o(t[0],"fn-",null,n)}var r=t("ee").create(),o=t(1)(r);e.exports=r,o.inPlace(window,["setTimeout","setInterval","setImmediate"],"setTimer-"),r.on("setTimer-start",n)},{1:25,ee:"QJf3ax"}],11:[function(t,e){function n(){f.inPlace(this,p,"fn-")}function r(t,e){f.inPlace(e,["onreadystatechange"],"fn-")}function o(t,e){return e}function i(t,e){for(var n in t)e[n]=t[n];return e}var a=t("ee").create(),s=t(1),c=t(2),f=c(a),u=c(s),d=window.XMLHttpRequest,p=["onload","onerror","onabort","onloadstart","onloadend","onprogress","ontimeout"];e.exports=a,window.XMLHttpRequest=function(t){var e=new d(t);try{a.emit("new-xhr",[],e),u.inPlace(e,["addEventListener","removeEventListener"],"-",o),e.addEventListener("readystatechange",n,!1)}catch(r){try{a.emit("internal-error",[r])}catch(i){}}return e},i(d,XMLHttpRequest),XMLHttpRequest.prototype=d.prototype,f.inPlace(XMLHttpRequest.prototype,["open","send"],"-xhr-",o),a.on("send-xhr-start",r),a.on("open-xhr-start",r)},{1:7,2:25,ee:"QJf3ax"}],12:[function(t){function e(t){var e=this.params,r=this.metrics;if(!this.ended){this.ended=!0;for(var i=0;c>i;i++)t.removeEventListener(s[i],this.listener,!1);if(!e.aborted){if(r.duration=(new Date).getTime()-this.startTime,4===t.readyState){e.status=t.status;var a=t.responseType,f="arraybuffer"===a||"blob"===a||"json"===a?t.response:t.responseText,u=n(f);if(u&&(r.rxSize=u),this.sameOrigin){var d=t.getResponseHeader("X-NewRelic-App-Data");d&&(e.cat=d.split(", ").pop())}}else e.status=0;r.cbTime=this.cbTime,o("xhr",[e,r,this.startTime])}}}function n(t){if("string"==typeof t&&t.length)return t.length;if("object"!=typeof t)return void 0;if("undefined"!=typeof ArrayBuffer&&t instanceof ArrayBuffer&&t.byteLength)return t.byteLength;if("undefined"!=typeof Blob&&t instanceof Blob&&t.size)return t.size;if("undefined"!=typeof FormData&&t instanceof FormData)return void 0;try{return JSON.stringify(t).length}catch(e){return void 0}}function r(t,e){var n=i(e),r=t.params;r.host=n.hostname+":"+n.port,r.pathname=n.pathname,t.sameOrigin=n.sameOrigin}if(window.XMLHttpRequest&&XMLHttpRequest.prototype&&XMLHttpRequest.prototype.addEventListener&&!/CriOS/.test(navigator.userAgent)){t("loader").features.xhr=!0;var o=t("handle"),i=t(2),a=t("ee"),s=["load","error","abort","timeout"],c=s.length,f=t(1);t(4),t(3),a.on("new-xhr",function(){this.totalCbs=0,this.called=0,this.cbTime=0,this.end=e,this.ended=!1,this.xhrGuids={}}),a.on("open-xhr-start",function(t){this.params={method:t[0]},r(this,t[1]),this.metrics={}}),a.on("open-xhr-end",function(t,e){"loader_config"in NREUM&&"xpid"in NREUM.loader_config&&this.sameOrigin&&e.setRequestHeader("X-NewRelic-ID",NREUM.loader_config.xpid)}),a.on("send-xhr-start",function(t,e){var r=this.metrics,o=t[0],i=this;if(r&&o){var f=n(o);f&&(r.txSize=f)}this.startTime=(new Date).getTime(),this.listener=function(t){try{"abort"===t.type&&(i.params.aborted=!0),("load"!==t.type||i.called===i.totalCbs&&(i.onloadCalled||"function"!=typeof e.onload))&&i.end(e)}catch(n){try{a.emit("internal-error",[n])}catch(r){}}};for(var u=0;c>u;u++)e.addEventListener(s[u],this.listener,!1)}),a.on("xhr-cb-time",function(t,e,n){this.cbTime+=t,e?this.onloadCalled=!0:this.called+=1,this.called!==this.totalCbs||!this.onloadCalled&&"function"==typeof n.onload||this.end(n)}),a.on("xhr-load-added",function(t,e){var n=""+f(t)+!!e;this.xhrGuids&&!this.xhrGuids[n]&&(this.xhrGuids[n]=!0,this.totalCbs+=1)}),a.on("xhr-load-removed",function(t,e){var n=""+f(t)+!!e;this.xhrGuids&&this.xhrGuids[n]&&(delete this.xhrGuids[n],this.totalCbs-=1)}),a.on("addEventListener-end",function(t,e){e instanceof XMLHttpRequest&&"load"===t[0]&&a.emit("xhr-load-added",[t[1],t[2]],e)}),a.on("removeEventListener-end",function(t,e){e instanceof XMLHttpRequest&&"load"===t[0]&&a.emit("xhr-load-removed",[t[1],t[2]],e)}),a.on("fn-start",function(t,e,n){e instanceof XMLHttpRequest&&("onload"===n&&(this.onload=!0),("load"===(t[0]&&t[0].type)||this.onload)&&(this.xhrCbStart=(new Date).getTime()))}),a.on("fn-end",function(t,e){this.xhrCbStart&&a.emit("xhr-cb-time",[(new Date).getTime()-this.xhrCbStart,this.onload,e],e)})}},{1:"XL7HBI",2:13,3:11,4:7,ee:"QJf3ax",handle:"D5DuLP",loader:"G9z0Bl"}],13:[function(t,e){e.exports=function(t){var e=document.createElement("a"),n=window.location,r={};e.href=t,r.port=e.port;var o=e.href.split("://");return!r.port&&o[1]&&(r.port=o[1].split("/")[0].split("@").pop().split(":")[1]),r.port&&"0"!==r.port||(r.port="https"===o[0]?"443":"80"),r.hostname=e.hostname||n.hostname,r.pathname=e.pathname,r.protocol=o[0],"/"!==r.pathname.charAt(0)&&(r.pathname="/"+r.pathname),r.sameOrigin=!e.hostname||e.hostname===document.domain&&e.port===n.port&&e.protocol===n.protocol,r}},{}],14:[function(t,e){function n(t){return function(){r(t,[(new Date).getTime()].concat(i(arguments)))}}var r=t("handle"),o=t(1),i=t(2);"undefined"==typeof window.newrelic&&(newrelic=window.NREUM);var a=["setPageViewName","addPageAction","setCustomAttribute","finished","addToTrace","inlineHit","noticeError"];o(a,function(t,e){window.NREUM[e]=n("api-"+e)}),e.exports=window.NREUM},{1:23,2:24,handle:"D5DuLP"}],gos:[function(t,e){e.exports=t("7eSDFh")},{}],"7eSDFh":[function(t,e){function n(t,e,n){if(r.call(t,e))return t[e];var o=n();if(Object.defineProperty&&Object.keys)try{return Object.defineProperty(t,e,{value:o,writable:!0,enumerable:!1}),o}catch(i){}return t[e]=o,o}var r=Object.prototype.hasOwnProperty;e.exports=n},{}],D5DuLP:[function(t,e){function n(t,e,n){return r.listeners(t).length?r.emit(t,e,n):void(r.q&&(r.q[t]||(r.q[t]=[]),r.q[t].push(e)))}var r=t("ee").create();e.exports=n,n.ee=r,r.q={}},{ee:"QJf3ax"}],handle:[function(t,e){e.exports=t("D5DuLP")},{}],XL7HBI:[function(t,e){function n(t){var e=typeof t;return!t||"object"!==e&&"function"!==e?-1:t===window?0:i(t,o,function(){return r++})}var r=1,o="nr@id",i=t("gos");e.exports=n},{gos:"7eSDFh"}],id:[function(t,e){e.exports=t("XL7HBI")},{}],G9z0Bl:[function(t,e){function n(){var t=p.info=NREUM.info,e=f.getElementsByTagName("script")[0];if(t&&t.licenseKey&&t.applicationID&&e){s(d,function(e,n){e in t||(t[e]=n)});var n="https"===u.split(":")[0]||t.sslForHttp;p.proto=n?"https://":"http://",a("mark",["onload",i()]);var r=f.createElement("script");r.src=p.proto+t.agent,e.parentNode.insertBefore(r,e)}}function r(){"complete"===f.readyState&&o()}function o(){a("mark",["domContent",i()])}function i(){return(new Date).getTime()}var a=t("handle"),s=t(1),c=window,f=c.document;t(2);var u=(""+location).split("?")[0],d={beacon:"bam.nr-data.net",errorBeacon:"bam.nr-data.net",agent:"js-agent.newrelic.com/nr-686.min.js"},p=e.exports={offset:i(),origin:u,features:{}};f.addEventListener?(f.addEventListener("DOMContentLoaded",o,!1),c.addEventListener("load",n,!1)):(f.attachEvent("onreadystatechange",r),c.attachEvent("onload",n)),a("mark",["firstbyte",i()])},{1:23,2:14,handle:"D5DuLP"}],loader:[function(t,e){e.exports=t("G9z0Bl")},{}],23:[function(t,e){function n(t,e){var n=[],o="",i=0;for(o in t)r.call(t,o)&&(n[i]=e(o,t[o]),i+=1);return n}var r=Object.prototype.hasOwnProperty;e.exports=n},{}],24:[function(t,e){function n(t,e,n){e||(e=0),"undefined"==typeof n&&(n=t?t.length:0);for(var r=-1,o=n-e||0,i=Array(0>o?0:o);++r<o;)i[r]=t[e+r];return i}e.exports=n},{}],25:[function(t,e){function n(t){return!(t&&"function"==typeof t&&t.apply&&!t[i])}var r=t("ee"),o=t(1),i="nr@wrapper",a=Object.prototype.hasOwnProperty;e.exports=function(t){function e(t,e,r,a){function nrWrapper(){var n,i,s,f;try{i=this,n=o(arguments),s=r&&r(n,i)||{}}catch(d){u([d,"",[n,i,a],s])}c(e+"start",[n,i,a],s);try{return f=t.apply(i,n)}catch(p){throw c(e+"err",[n,i,p],s),p}finally{c(e+"end",[n,i,f],s)}}return n(t)?t:(e||(e=""),nrWrapper[i]=!0,f(t,nrWrapper),nrWrapper)}function s(t,r,o,i){o||(o="");var a,s,c,f="-"===o.charAt(0);for(c=0;c<r.length;c++)s=r[c],a=t[s],n(a)||(t[s]=e(a,f?s+o:o,i,s))}function c(e,n,r){try{t.emit(e,n,r)}catch(o){u([o,e,n,r])}}function f(t,e){if(Object.defineProperty&&Object.keys)try{var n=Object.keys(t);return n.forEach(function(n){Object.defineProperty(e,n,{get:function(){return t[n]},set:function(e){return t[n]=e,e}})}),e}catch(r){u([r])}for(var o in t)a.call(t,o)&&(e[o]=t[o]);return e}function u(e){try{t.emit("internal-error",e)}catch(n){}}return t||(t=r),e.inPlace=s,e.flag=i,e}},{1:24,ee:"QJf3ax"}]},{},["G9z0Bl",4,12,6,5]);</script>
  <meta charset="utf-8">
  <meta name="verify-v1" content="ZwWAp70PgmKCLts2y4qNiJL9qXshM3jR7EmorduE3H0=">
  <meta name="verify-v1" content="QzLYf7htJLR4QxdPphORVw8ltI+uLCeauRiD/1RIqdc=">

  

        <title>Ashley Madison&reg; | Contact Us</title>


















<meta name="copyright" content="Ashley Madison, Limited. 2001-2015">
<meta name="type" content="ashleymadison.com">
<meta name="robots" content="noindex,follow">
<meta name="distribution" content="global">

  
  <link rel="stylesheet" href="https://static-cdn.ashleymadison.com/v4/build/vendor/pure.min.ecb2a387.css">
  <link rel="stylesheet" href="https://static-cdn.ashleymadison.com/v4/build/css/main.6c001b91.css" type="text/css">
  <link rel="stylesheet" href="https://static-cdn.ashleymadison.com/v4/build/css/theme-public.b6abd39b.css" type="text/css">

  <script type="text/javascript" src="https://static-cdn.ashleymadison.com/v4/build/bower_components/jquery.273e017f.js"></script>
  <script type="text/javascript" src="https://static-cdn.ashleymadison.com/v4/build/bower_components/jquery.cookie.1e3faa7f.js"></script>
  <script type="text/javascript" src="https://static-cdn.ashleymadison.com/v4/build/js/countrylangselector.a4a7493a.js"></script>
  <script type="text/javascript" src="https://static-cdn.ashleymadison.com/v4/build/js/phonecall.ceee7021.js"></script>

  <script type="text/javascript">
    if (this != top) {
      top.location.href = this.location.href;
    }
      </script>

  <script>_udn='.ashleymadison.com';</script>
<script>
  function cookie_read(name) { var nameEQ = name + "="; var ca = document.cookie.split(';'); for(var i=0;i < ca.length;i++) { var c = ca[i]; while (c.charAt(0)==' ') c = c.substring(1,c.length); if (c.indexOf(nameEQ) == 0) return c.substring(nameEQ.length,c.length); }; return null; };
  affid = cookie_read('amaffiliate');
  kwd = cookie_read('amkeywords');
  if (affid == null) affid = 0;
  if (kwd == null) kwd = '';
  window._gaq = [['_setAccount', 'UA-344798-1'],['_setCampaignCookieTimeout', 63072000000],['_setDomainName', '.ashleymadison.com'],['_setAllowLinker', true],['_setCustomVar',1,'Affiliate',affid,1],['_setCustomVar',2,'Keywords',kwd,1],['_setCustomVar',3,'Async','1',1],['_trackPageLoadTime'],['_trackPageview']];
  (function() {
    var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
    ga.src = ('https:' == location.protocol ? '//ssl' : '//www') + '.google-analytics.com/ga.js';
    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
  })();
</script>


</head>
<body class="lang-en_US country-CA date-09-10 ">

<div class="content content-960">

  <div id="header" class="pure-g">
    <div id="logo" class="pure-u-2-5 box-marg-t box-marg-b text-center">
      <a href="../../index.html?c=2"><img src="https://static-cdn.ashleymadison.com/v4/build/images/global_logo_ashley.25ef2310.png" alt="Ashley Madison - &amp;nbsp;Life is short. Have an affair.&lt;sup&gt;&amp;reg;&lt;/sup&gt;" width="277" height="39"></a>
      <div id="tagline" class="bold">&nbsp;Life is short. Have an affair.<sup>&reg;</sup></div>
    </div>
          <div id="login" class="pure-u-3-5 text-right">
        <form name="loginform" class="pure-form pure-form-aligned" action="login.p" method="POST">
                    <input type="hidden" name="pinf_action_bG9naW4%3D_YXBwL3N0cnVjdHVyZS9wdWJsaWMvbG9naW4%3D_loginpage" value="00">
          <div class="box-marg-t">
            <div class="inline">
              <div class="pure-control-group">
                <label id="lusername">Username</label>


<input
	type="text"
	id="pinf_uio_app%2Fstructure%2Fpublic%2Fcount_login__username_value"

	
	
			name="pinf_uio_app%2Fstructure%2Fpublic%2Fcount_login__username_value"
					value=""
			
	
	

	size="20"							class="amLoginInputHilite"																		  >


              </div>
              <div class="pure-control-group">
                <label id="lpassword">Password</label>


<input
	type="password"
	id="pinf_uio_app%2Fstructure%2Fpublic%2Fcount_login__password_value"

	
	
			name="pinf_uio_app%2Fstructure%2Fpublic%2Fcount_login__password_value"
			
	
			autocomplete="off"
	

	size="20"	autocomplete="off"						class="amLoginInputHilite"																		  >


              </div>
            </div>
            <div class="inline box-marg-l">
              <a class="block font-sm" href="loginlost.p">Lost Login?</a>
              <button class="pure-button button-small box-marg-t" type="submit" name="pinf_action_bG9naW4%3D_YXBwL3N0cnVjdHVyZS9wdWJsaWMvY291bnQ%3D">Login</button>
            </div>
          </div>

        </form>
      </div>
      </div>

  
  <div id="content" class="thin-border">
  
<div id="container" class="contact-us box-marg-b box-pad-lg">


<h1>Contact Us</h1>

<div class="pure-g">

<div class="pure-u-3-5 simple-box simple-box-filled">
  
    <div class="text-center"><img src="https://static-cdn.ashleymadison.com/v4/build/images/contactgirl.fb6016c5.jpg" alt="Contact Us" /></div>

  <p>If you have not found the answer to your question after perusing our Help section, you may contact Customer Service directly during business hours for your location.</p>
  <p>To contact Customer Service by email, please <a href='contactform.p?contactform=1'>click here</a>.</p>

  <table class="font-sm">
    <tr>
      <th></th>
      <th>Toll Free</th>
      <th>Time</th>
    </tr>
    <tr>
      <td>North America</td>
      <td class="force-ltr box-hpad-sm">1-866-742-2218</td>
      <td>Monday 12am to Friday 9pm (EST)</td>
    </tr>
    <tr>
      <td>Australia</td>
      <td class="force-ltr box-hpad-sm">1-800-885-723</td>
      <td>Monday 4pm to Saturday 1pm (EDT)</td>
    </tr>
    <tr>
      <td>New Zealand</td>
      <td class="force-ltr box-hpad-sm">0800-451976</td>
      <td>Monday 6pm to Saturday 3pm (NZDT)</td>
    </tr>
    <tr>
      <td>UK</td>
      <td class="force-ltr box-hpad-sm">0-800-014-8429</td>
      <td>Monday 5am to Saturday 2am (GMT)</td>
    </tr>
    <tr>
      <td>Canada/US Spanish</td>
      <td class="force-ltr box-hpad-sm">877 440 7910</td>
      <td>Monday to Friday 7am to 3pm (EST)</td>
    </tr>
    <tr>
      <td>Germany</td>
      <td class="force-ltr box-hpad-sm">0800 181 7578</td>
      <td>Monday to Friday 1pm to 9pm (CET)</td>
    </tr>
    <tr>
      <td>Austria</td>
      <td class="force-ltr box-hpad-sm">0800 296092</td>
      <td>Monday to Friday 1pm to 9pm (CET)</td>
    </tr>
    <tr>
      <td>Switzerland</td>
      <td class="force-ltr box-hpad-sm">0 800 835 074</td>
      <td>Monday to Friday 1pm to 9pm (CET)</td>
    </tr>
    <tr>
      <td>Denmark</td>
      <td class="force-ltr box-hpad-sm">8082-6807</td>
      <td>Monday 6am to Saturday 3am (CET)</td>
    </tr>
    <tr>
      <td>Sweden</td>
      <td class="force-ltr box-hpad-sm">010-199 26 90</td>
      <td>Monday 6am to Saturday 3am (CET)</td>
    </tr>
    <tr>
      <td>Norway</td>
      <td class="force-ltr box-hpad-sm">800-10-859</td>
      <td>Monday 6am to Saturday 3am (CET)</td>
    </tr>
    <tr>
      <td>Finland</td>
      <td class="force-ltr box-hpad-sm">800-552-072</td>
      <td>Monday 7am to Saturday 4am (EET)</td>
    </tr>
    <tr>
      <td>Spain</td>
      <td class="force-ltr box-hpad-sm">900-809433</td>
      <td>Monday to Friday 1pm to 9pm (CET)</td>
    </tr>
    <tr>
      <td>Brasil</td>
      <td class="force-ltr box-hpad-sm">0-800-892-2096</td>
      <td>Monday to Friday 12pm to 8pm (BRST)</td>
    </tr>
    <tr>
      <td>Italy</td>
      <td class="force-ltr box-hpad-sm">800-788-042</td>
      <td>Monday to Friday 3pm to 11pm (CET)</td>
    </tr>
    <tr>
      <td>Mexico</td>
      <td class="force-ltr box-hpad-sm">01-800-681-6724</td>
      <td>Monday to Friday 6am to 2pm (CST)</td>
    </tr>
    <tr>
      <td>Netherlands</td>
      <td class="force-ltr box-hpad-sm">0-800-020-0734</td>
      <td>Monday to Friday 8am to 2pm (EET)</td>
    </tr>
    <tr>
      <td>Argentina</td>
      <td class="force-ltr box-hpad-sm">0-800-666-1527</td>
      <td>Monday to Friday 9am to 5pm (ART)</td>
    </tr>
    <tr>
      <td>Colombia</td>
      <td class="force-ltr box-hpad-sm">0-1800-710-1960</td>
      <td>Monday to Friday 7am to 3pm (COT)</td>
    </tr>
    <tr>
      <td>Chile</td>
      <td class="force-ltr box-hpad-sm">1230-020-8945</td>
      <td>Monday to Friday 9am to 5pm (CLST)</td>
    </tr>
    <tr>
      <td>Venezuela</td>
      <td class="force-ltr box-hpad-sm">0-800-100-9130</td>
      <td>Monday to Friday 8:30am to 4:30pm (VET)</td>
    </tr>
    <tr>
      <td>South Africa</td>
      <td class="force-ltr box-hpad-sm">0-800-981-876</td>
      <td>Monday 7am to Saturday 4am (SAST)</td>
    </tr>
    <tr>
      <td>France</td>
      <td class="force-ltr box-hpad-sm">0-800-914-817</td>
      <td>Monday to Friday 3pm to 11pm (CET)</td>
    </tr>
    <tr>
      <td>Belgium</td>
      <td class="force-ltr box-hpad-sm">0-800-262-03</td>
      <td>Monday to Friday 3pm to 11pm (CET)</td>
    </tr>
    <tr>
      <td>Greece</td>
      <td class="force-ltr box-hpad-sm">00 800 1809 203 1903</td>
      <td>Monday 6am - Saturday 4am (EET)</td>
    </tr>
    <tr>
      <td>Japan</td>
      <td class="force-ltr box-hpad-sm">0800-919-0833</td>
      <td>Monday to Friday 10pm - 6am (JST)</td>
    </tr>
    <tr>
      <td>India</td>
      <td class="force-ltr box-hpad-sm">000-800-100-4055</td>
      <td>Monday 9am to Saturday 6am (IST)</td>
    </tr>
    <tr>
      <td>Portugal</td>
      <td class="force-ltr box-hpad-sm">800-180-203</td>
      <td>Monday to Friday 3pm to 11pm (WET)</td>
    </tr>
    <tr>
      <td>Hong Kong</td>
      <td class="force-ltr box-hpad-sm">800 906 163</td>
      <td>Monday to Saturday 9pm to 5am (HKT)</td>
    </tr>
    <tr>
      <td>Taiwan</td>
      <td class="force-ltr box-hpad-sm">00801 147 107</td>
      <td>Monday to Saturday 9pm to 5am (CST)</td>
    </tr>
    <tr>
      <td>Singapore</td>
      <td class="force-ltr box-hpad-sm">800 852 3891</td>
      <td>Monday to Saturday 9pm to 5am (SST)</td>
    </tr>
    <tr>
      <td>Israel</td>
      <td class="force-ltr box-hpad-sm">1-809-429-370</td>
      <td>Monday to Friday 4pm to 12am (IDT)</td>
    </tr>
    <tr>
      <td>Korea</td>
      <td class="force-ltr box-hpad-sm">003 0813 2901</td>
      <td>Monday to Saturday 8pm to 12pm (KST)</td>
    </tr>
    <tr>
      <td>Macau</td>
      <td class="force-ltr box-hpad-sm">800 906 163</td>
      <td>Monday to Saturday 9pm to 5am (CST)</td>
    </tr>
    <tr>
      <td>Poland</td>
      <td class="force-ltr box-hpad-sm">0 0 800 141 0209</td>
      <td>Monday to Friday 2pm to 10pm (CEST)</td>
    </tr>
    <tr>
      <td>Czech Republic</td>
      <td class="force-ltr box-hpad-sm">800 701 639</td>
      <td>Monday to Friday 9am to 5pm (CEST)</td>
    </tr>
    <tr>
      <td>Slovakia</td>
      <td class="force-ltr box-hpad-sm">0 800 606 748</td>
      <td>Monday to Friday 9am to 5pm (CEST)</td>
    </tr>
    <tr>
      <td>Hungary</td>
      <td class="force-ltr box-hpad-sm">06 800 20769</td>
      <td>Monday to Friday 9am to 5pm (CEST)</td>
    </tr>
  </table>

  <script type="text/javascript">
  var holidays = {"Public Holidays in Canada":["2015",2016],"New Year's Day":["Thu, Jan  1","Fri, Jan  1"],"Family Day":["Mon, Feb 16","Mon, Feb 15"],"Good Friday":["Fri, Apr  3","Fri, Mar 25"],"Easter Monday":["Mon, Apr  6","Mon, Mar 28"],"Victoria Day":["Mon, May 18","Mon, May 23"],"Canada Day":["Wed, Jul  1","Fri, Jul  1"],"August Civic Holiday":["Mon, Aug  3","Mon, Aug  1"],"Labour Day":["Mon, Sep  7","Mon, Sep  5"],"Thanksgiving Day":["Mon, Oct 12","Mon, Oct 10"],"Christmas Day":["Fri, Dec 25","Sun, Dec 25"],"Boxing Day":["Sat, Dec 26","Mon, Dec 26"]};
  jQuery(document).ready(function () {
    for(holiday in holidays) {
      jQuery("table.holidays").append("<tr>"
        + "<td>" + holiday + "</td>"
        + "<td>" + holidays[holiday][0] + "</td>"
        + "<td>" + holidays[holiday][1] + "</td>"
        + "</tr>");
    }
  });
  </script>
  <table class="holidays box-marg-t"></table>

  
  </div>

<div class="pure-u-2-5 top-offset box-pad">
  <h2>Contact Information</h2>
  <div class="office">
    <p>
      <b>Corporate Office:</b>
      <br />Avid Life Media
      <br />PO Box 67027
      <br />Toronto, ON
      <br />M4P 1E4
    </p>
    <p>
      <b>Office Hours:</b>
      <br />Monday 12:00 a.m. to
      <br />Friday 9:00 p.m. ET
      <br />(Statutory Holidays Excluded)
    </p>
  </div>
  <div class="image_bank">
    <p>
      <b>Mail Photographs To:</b>
      <br />Avid Life Media
      <br />Attn: Image Bank
      <br />PO Box 67027
      <br />Toronto, ON Canada M4P 1E4
    </p>
    <p>
      <b>Email Photographs To:</b><br />
      <a href="../../cdn-cgi/l/email-protection#51383c30363433303f3a113022393d34283c303538223e3f7f323e3c"><span class="__cf_email__" data-cfemail="e0898d81878582818e8ba08193888c85998d818489938f8ece838f8d">[email&#160;protected]</span><script data-cfhash='f9e31' type="text/javascript">
/* <![CDATA[ */!function(){try{var t="currentScript"in document?document.currentScript:function(){for(var t=document.getElementsByTagName("script"),e=t.length;e--;)if(t[e].getAttribute("data-cfhash"))return t[e]}();if(t&&t.previousSibling){var e,r,n,i,c=t.previousSibling,a=c.getAttribute("data-cfemail");if(a){for(e="",r=parseInt(a.substr(0,2),16),n=2;a.length-n;n+=2)i=parseInt(a.substr(n,2),16)^r,e+=String.fromCharCode(i);e=document.createTextNode(e),c.parentNode.replaceChild(e,c)}t.parentNode.removeChild(t);}}catch(u){}}()/* ]]> */</script></a>
    </p>
    <p>
      <b>Business Development:</b><br />
      <a href="../../cdn-cgi/l/email-protection#21435452484f445252614052494d44584c404548524e4f0f424e4c"><span class="__cf_email__" data-cfemail="e48691978d8a819797a485978c88819d8985808d978b8aca878b89">[email&#160;protected]</span><script data-cfhash='f9e31' type="text/javascript">
/* <![CDATA[ */!function(){try{var t="currentScript"in document?document.currentScript:function(){for(var t=document.getElementsByTagName("script"),e=t.length;e--;)if(t[e].getAttribute("data-cfhash"))return t[e]}();if(t&&t.previousSibling){var e,r,n,i,c=t.previousSibling,a=c.getAttribute("data-cfemail");if(a){for(e="",r=parseInt(a.substr(0,2),16),n=2;a.length-n;n+=2)i=parseInt(a.substr(n,2),16)^r,e+=String.fromCharCode(i);e=document.createTextNode(e),c.parentNode.replaceChild(e,c)}t.parentNode.removeChild(t);}}catch(u){}}()/* ]]> */</script></a>
    </p>
    <p>
      <b>Affiliate Opportunities:</b><br />
      <a href="../../cdn-cgi/l/email-protection#a8c9cecec1c4c1c9dccddbe8c9dbc0c4cdd1c5c9ccc1dbc7c686cbc7c5"><span class="__cf_email__" data-cfemail="dfbeb9b9b6b3b6beabbaac9fbeacb7b3baa6b2bebbb6acb0b1f1bcb0b2">[email&#160;protected]</span><script data-cfhash='f9e31' type="text/javascript">
/* <![CDATA[ */!function(){try{var t="currentScript"in document?document.currentScript:function(){for(var t=document.getElementsByTagName("script"),e=t.length;e--;)if(t[e].getAttribute("data-cfhash"))return t[e]}();if(t&&t.previousSibling){var e,r,n,i,c=t.previousSibling,a=c.getAttribute("data-cfemail");if(a){for(e="",r=parseInt(a.substr(0,2),16),n=2;a.length-n;n+=2)i=parseInt(a.substr(n,2),16)^r,e+=String.fromCharCode(i);e=document.createTextNode(e),c.parentNode.replaceChild(e,c)}t.parentNode.removeChild(t);}}catch(u){}}()/* ]]> */</script></a>
    </p>
  </div>
  <p>
    Need more help using Ashley Madison?<br />
    <a href="faq.p">Click Here</a> to view our help section.  </p>
</div>
</div>



</div>


  </div>
  

  
  <div id="footer" class="text-center relative">
    
<p id="footer-nav">
        <a href="../../index.html?reg=1&amp;c=2" class="footerRegLink" title="Register on Ashley Madison">Register on Ashley Madison</a>
        <a href="http://affiliate.ashleymadison.com" title="Affiliate Program">Affiliate Program</a>
        <a href="media/index.p" title="Press">Press</a>
    <a href="faq.p" title="FAQ">FAQ</a>
        <a href="guarantee/detailsform.p" title="Guaranteed Affairs">Guarantee</a>
        <a id="bloglink" href="https://ashleymadison.com/blog/" title="Ashley Madison Blog">Blog</a>
        <a href="http://news.ashleymadison.com/" title="Ashley Madison Infidelity News">Infidelity News</a>
            <a href="http://affair.ashleymadison.com/" title="Articles">Articles</a>
        <a href="tandc.p?c=2" rel="nofollow" class="legal-link" title="Terms &amp; Conditions">Terms</a>
    <a href="privacy.p" rel="nofollow" title="Privacy">Privacy</a>
        <a href="contact.p" rel="nofollow" title="Contact Us">Contact Us</a>
    
    </p>

<p id="social-nav">
  
  <span class="inline">Follow Ashley Madison on:</span>
  
   <a href="https://twitter.com/ashleymadison">Twitter</a>  
  <a href="https://www.facebook.com/AshleyMadison">Facebook</a>
  <a href="https://www.youtube.com/ashleymadison">Youtube</a>

  </p>



    <div id="location" class="inline box-hpad-sm">
      Location: <a href="contactform.p#" id="locationChange">Canada <span class="arrow-down arrow-down-dark inline"></span></a>
    </div>

    <div id="language" class="inline box-hpad-sm">Language:
      <a href="contactform.p#" id="languageChange">English <span class="arrow-down arrow-down-dark inline"></span></a>
    </div>

    <div id="locationLanguage" class="relative">
      <div id="countryList" class="selectNew location box-pad-lg text-left is-hidden"></div>
      <div id="languageList" class="selectNew language box-pad-lg text-left is-hidden"></div>
    </div>

        <p>
      
              The most recognized name in infidelity. As seen on Dr. Phil, Tyra, CNN, The View, Ellen, Larry King, Good Morning America.<br />We are the most recognized and reputable extramarital affair company. Our married dating services work. We are the most successful website for finding cheating partners.
          </p>
    
    <p>
                                    <span class="memberFooterCopyright force-ltr"> &copy; 2001 - 2015 Avid Dating Life Inc.</span>
          <span class="memberFooterCopyright">  </span>
                    
      <br><br>
      <em>All Members are 18 or Over</em>
    </p>
      </div>
  

</div>

  
  
  <script>
    indexURL = (jQuery.cookie('indexURL') != null) ? jQuery.cookie('indexURL') : '';
    newHref = '/' + indexURL + jQuery('.footerRegLink').attr('href').substr(1);
    jQuery('.footerRegLink').attr('href', newHref);
    newHref = '/' + indexURL + jQuery('#logo a').attr('href').substr(1);
    jQuery('#logo a').attr('href', newHref);
  </script>

  <script type="text/javascript">window.NREUM||(NREUM={});NREUM.info={"beacon":"bam.nr-data.net","licenseKey":"e258bdbf0f","applicationID":"2364665","transactionName":"M1wBNhdWDENTVxdbCwoWIBcWQw1dHVUTQksUTAEODFRNU11aF1MHEF8MEAg=","queueTime":0,"applicationTime":45,"ttGuid":"","agentToken":"","userAttributes":"","errorBeacon":"bam.nr-data.net","agent":"js-agent.newrelic.com\/nr-686.min.js"}</script><script type="text/javascript">
/* <![CDATA[ */
(function(){try{var s,a,i,j,r,c,l=document.getElementsByTagName("a"),t=document.createElement("textarea");for(i=0;l.length-i;i++){try{a=l[i].getAttribute("href");if(a&&a.indexOf("/cdn-cgi/l/email-protection") > -1  && (a.length > 28)){s='';j=27+ 1 + a.indexOf("/cdn-cgi/l/email-protection");if (a.length > j) {r=parseInt(a.substr(j,2),16);for(j+=2;a.length>j&&a.substr(j,1)!='X';j+=2){c=parseInt(a.substr(j,2),16)^r;s+=String.fromCharCode(c);}j+=1;s+=a.substr(j,a.length-j);}t.innerHTML=s.replace(/</g,"&lt;").replace(/>/g,"&gt;");l[i].setAttribute("href","mailto:"+t.value);}}catch(e){}}}catch(e){}})();
/* ]]> */
</script>
</body>
</html>