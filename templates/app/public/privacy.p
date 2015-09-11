<!DOCTYPE html>
<html  class="linux">

<head>
  <script type="text/javascript">(window.NREUM||(NREUM={})).loader_config={xpid:"Vw4OVV9bGwEDUlVUAQQ="};window.NREUM||(NREUM={}),__nr_require=function(t,e,n){function r(n){if(!e[n]){var o=e[n]={exports:{}};t[n][0].call(o.exports,function(e){var o=t[n][1][e];return r(o?o:e)},o,o.exports)}return e[n].exports}if("function"==typeof __nr_require)return __nr_require;for(var o=0;o<n.length;o++)r(n[o]);return r}({QJf3ax:[function(t,e){function n(t){function e(e,n,a){t&&t(e,n,a),a||(a={});for(var c=s(e),f=c.length,u=i(a,o,r),d=0;f>d;d++)c[d].apply(u,n);return u}function a(t,e){f[t]=s(t).concat(e)}function s(t){return f[t]||[]}function c(){return n(e)}var f={};return{on:a,emit:e,create:c,listeners:s,_events:f}}function r(){return{}}var o="nr@context",i=t("gos");e.exports=n()},{gos:"7eSDFh"}],ee:[function(t,e){e.exports=t("QJf3ax")},{}],3:[function(t){function e(t){try{i.console&&console.log(t)}catch(e){}}var n,r=t("ee"),o=t(1),i={};try{n=localStorage.getItem("__nr_flags").split(","),console&&"function"==typeof console.log&&(i.console=!0,-1!==n.indexOf("dev")&&(i.dev=!0),-1!==n.indexOf("nr_dev")&&(i.nrDev=!0))}catch(a){}i.nrDev&&r.on("internal-error",function(t){e(t.stack)}),i.dev&&r.on("fn-err",function(t,n,r){e(r.stack)}),i.dev&&(e("NR AGENT IN DEVELOPMENT MODE"),e("flags: "+o(i,function(t){return t}).join(", ")))},{1:23,ee:"QJf3ax"}],4:[function(t){function e(t,e,n,i,s){try{c?c-=1:r("err",[s||new UncaughtException(t,e,n)])}catch(f){try{r("ierr",[f,(new Date).getTime(),!0])}catch(u){}}return"function"==typeof a?a.apply(this,o(arguments)):!1}function UncaughtException(t,e,n){this.message=t||"Uncaught error with no additional information",this.sourceURL=e,this.line=n}function n(t){r("err",[t,(new Date).getTime()])}var r=t("handle"),o=t(6),i=t("ee"),a=window.onerror,s=!1,c=0;t("loader").features.err=!0,t(5),window.onerror=e;try{throw new Error}catch(f){"stack"in f&&(t(1),t(2),"addEventListener"in window&&t(3),window.XMLHttpRequest&&XMLHttpRequest.prototype&&XMLHttpRequest.prototype.addEventListener&&window.XMLHttpRequest&&XMLHttpRequest.prototype&&XMLHttpRequest.prototype.addEventListener&&!/CriOS/.test(navigator.userAgent)&&t(4),s=!0)}i.on("fn-start",function(){s&&(c+=1)}),i.on("fn-err",function(t,e,r){s&&(this.thrown=!0,n(r))}),i.on("fn-end",function(){s&&!this.thrown&&c>0&&(c-=1)}),i.on("internal-error",function(t){r("ierr",[t,(new Date).getTime(),!0])})},{1:10,2:9,3:7,4:11,5:3,6:24,ee:"QJf3ax",handle:"D5DuLP",loader:"G9z0Bl"}],5:[function(t){t("loader").features.ins=!0},{loader:"G9z0Bl"}],6:[function(t){function e(){}if(window.performance&&window.performance.timing&&window.performance.getEntriesByType){var n=t("ee"),r=t("handle"),o=t(1),i=t(2);t("loader").features.stn=!0,t(3),n.on("fn-start",function(t){var e=t[0];e instanceof Event&&(this.bstStart=Date.now())}),n.on("fn-end",function(t,e){var n=t[0];n instanceof Event&&r("bst",[n,e,this.bstStart,Date.now()])}),o.on("fn-start",function(t,e,n){this.bstStart=Date.now(),this.bstType=n}),o.on("fn-end",function(t,e){r("bstTimer",[e,this.bstStart,Date.now(),this.bstType])}),i.on("fn-start",function(){this.bstStart=Date.now()}),i.on("fn-end",function(t,e){r("bstTimer",[e,this.bstStart,Date.now(),"requestAnimationFrame"])}),n.on("pushState-start",function(){this.time=Date.now(),this.startPath=location.pathname+location.hash}),n.on("pushState-end",function(){r("bstHist",[location.pathname+location.hash,this.startPath,this.time])}),"addEventListener"in window.performance&&(window.performance.addEventListener("webkitresourcetimingbufferfull",function(){r("bstResource",[window.performance.getEntriesByType("resource")]),window.performance.webkitClearResourceTimings()},!1),window.performance.addEventListener("resourcetimingbufferfull",function(){r("bstResource",[window.performance.getEntriesByType("resource")]),window.performance.clearResourceTimings()},!1)),document.addEventListener("scroll",e,!1),document.addEventListener("keypress",e,!1),document.addEventListener("click",e,!1)}},{1:10,2:9,3:8,ee:"QJf3ax",handle:"D5DuLP",loader:"G9z0Bl"}],7:[function(t,e){function n(t){i.inPlace(t,["addEventListener","removeEventListener"],"-",r)}function r(t){return t[1]}var o=t("ee").create(),i=t(1)(o),a=t("gos");if(e.exports=o,n(window),"getPrototypeOf"in Object){for(var s=document;s&&!s.hasOwnProperty("addEventListener");)s=Object.getPrototypeOf(s);s&&n(s);for(var c=XMLHttpRequest.prototype;c&&!c.hasOwnProperty("addEventListener");)c=Object.getPrototypeOf(c);c&&n(c)}else XMLHttpRequest.prototype.hasOwnProperty("addEventListener")&&n(XMLHttpRequest.prototype);o.on("addEventListener-start",function(t){if(t[1]){var e=t[1];"function"==typeof e?this.wrapped=t[1]=a(e,"nr@wrapped",function(){return i(e,"fn-",null,e.name||"anonymous")}):"function"==typeof e.handleEvent&&i.inPlace(e,["handleEvent"],"fn-")}}),o.on("removeEventListener-start",function(t){var e=this.wrapped;e&&(t[1]=e)})},{1:25,ee:"QJf3ax",gos:"7eSDFh"}],8:[function(t,e){var n=t("ee").create(),r=t(1)(n);e.exports=n,r.inPlace(window.history,["pushState"],"-")},{1:25,ee:"QJf3ax"}],9:[function(t,e){var n=t("ee").create(),r=t(1)(n);e.exports=n,r.inPlace(window,["requestAnimationFrame","mozRequestAnimationFrame","webkitRequestAnimationFrame","msRequestAnimationFrame"],"raf-"),n.on("raf-start",function(t){t[0]=r(t[0],"fn-")})},{1:25,ee:"QJf3ax"}],10:[function(t,e){function n(t,e,n){t[0]=o(t[0],"fn-",null,n)}var r=t("ee").create(),o=t(1)(r);e.exports=r,o.inPlace(window,["setTimeout","setInterval","setImmediate"],"setTimer-"),r.on("setTimer-start",n)},{1:25,ee:"QJf3ax"}],11:[function(t,e){function n(){f.inPlace(this,p,"fn-")}function r(t,e){f.inPlace(e,["onreadystatechange"],"fn-")}function o(t,e){return e}function i(t,e){for(var n in t)e[n]=t[n];return e}var a=t("ee").create(),s=t(1),c=t(2),f=c(a),u=c(s),d=window.XMLHttpRequest,p=["onload","onerror","onabort","onloadstart","onloadend","onprogress","ontimeout"];e.exports=a,window.XMLHttpRequest=function(t){var e=new d(t);try{a.emit("new-xhr",[],e),u.inPlace(e,["addEventListener","removeEventListener"],"-",o),e.addEventListener("readystatechange",n,!1)}catch(r){try{a.emit("internal-error",[r])}catch(i){}}return e},i(d,XMLHttpRequest),XMLHttpRequest.prototype=d.prototype,f.inPlace(XMLHttpRequest.prototype,["open","send"],"-xhr-",o),a.on("send-xhr-start",r),a.on("open-xhr-start",r)},{1:7,2:25,ee:"QJf3ax"}],12:[function(t){function e(t){var e=this.params,r=this.metrics;if(!this.ended){this.ended=!0;for(var i=0;c>i;i++)t.removeEventListener(s[i],this.listener,!1);if(!e.aborted){if(r.duration=(new Date).getTime()-this.startTime,4===t.readyState){e.status=t.status;var a=t.responseType,f="arraybuffer"===a||"blob"===a||"json"===a?t.response:t.responseText,u=n(f);if(u&&(r.rxSize=u),this.sameOrigin){var d=t.getResponseHeader("X-NewRelic-App-Data");d&&(e.cat=d.split(", ").pop())}}else e.status=0;r.cbTime=this.cbTime,o("xhr",[e,r,this.startTime])}}}function n(t){if("string"==typeof t&&t.length)return t.length;if("object"!=typeof t)return void 0;if("undefined"!=typeof ArrayBuffer&&t instanceof ArrayBuffer&&t.byteLength)return t.byteLength;if("undefined"!=typeof Blob&&t instanceof Blob&&t.size)return t.size;if("undefined"!=typeof FormData&&t instanceof FormData)return void 0;try{return JSON.stringify(t).length}catch(e){return void 0}}function r(t,e){var n=i(e),r=t.params;r.host=n.hostname+":"+n.port,r.pathname=n.pathname,t.sameOrigin=n.sameOrigin}if(window.XMLHttpRequest&&XMLHttpRequest.prototype&&XMLHttpRequest.prototype.addEventListener&&!/CriOS/.test(navigator.userAgent)){t("loader").features.xhr=!0;var o=t("handle"),i=t(2),a=t("ee"),s=["load","error","abort","timeout"],c=s.length,f=t(1);t(4),t(3),a.on("new-xhr",function(){this.totalCbs=0,this.called=0,this.cbTime=0,this.end=e,this.ended=!1,this.xhrGuids={}}),a.on("open-xhr-start",function(t){this.params={method:t[0]},r(this,t[1]),this.metrics={}}),a.on("open-xhr-end",function(t,e){"loader_config"in NREUM&&"xpid"in NREUM.loader_config&&this.sameOrigin&&e.setRequestHeader("X-NewRelic-ID",NREUM.loader_config.xpid)}),a.on("send-xhr-start",function(t,e){var r=this.metrics,o=t[0],i=this;if(r&&o){var f=n(o);f&&(r.txSize=f)}this.startTime=(new Date).getTime(),this.listener=function(t){try{"abort"===t.type&&(i.params.aborted=!0),("load"!==t.type||i.called===i.totalCbs&&(i.onloadCalled||"function"!=typeof e.onload))&&i.end(e)}catch(n){try{a.emit("internal-error",[n])}catch(r){}}};for(var u=0;c>u;u++)e.addEventListener(s[u],this.listener,!1)}),a.on("xhr-cb-time",function(t,e,n){this.cbTime+=t,e?this.onloadCalled=!0:this.called+=1,this.called!==this.totalCbs||!this.onloadCalled&&"function"==typeof n.onload||this.end(n)}),a.on("xhr-load-added",function(t,e){var n=""+f(t)+!!e;this.xhrGuids&&!this.xhrGuids[n]&&(this.xhrGuids[n]=!0,this.totalCbs+=1)}),a.on("xhr-load-removed",function(t,e){var n=""+f(t)+!!e;this.xhrGuids&&this.xhrGuids[n]&&(delete this.xhrGuids[n],this.totalCbs-=1)}),a.on("addEventListener-end",function(t,e){e instanceof XMLHttpRequest&&"load"===t[0]&&a.emit("xhr-load-added",[t[1],t[2]],e)}),a.on("removeEventListener-end",function(t,e){e instanceof XMLHttpRequest&&"load"===t[0]&&a.emit("xhr-load-removed",[t[1],t[2]],e)}),a.on("fn-start",function(t,e,n){e instanceof XMLHttpRequest&&("onload"===n&&(this.onload=!0),("load"===(t[0]&&t[0].type)||this.onload)&&(this.xhrCbStart=(new Date).getTime()))}),a.on("fn-end",function(t,e){this.xhrCbStart&&a.emit("xhr-cb-time",[(new Date).getTime()-this.xhrCbStart,this.onload,e],e)})}},{1:"XL7HBI",2:13,3:11,4:7,ee:"QJf3ax",handle:"D5DuLP",loader:"G9z0Bl"}],13:[function(t,e){e.exports=function(t){var e=document.createElement("a"),n=window.location,r={};e.href=t,r.port=e.port;var o=e.href.split("://");return!r.port&&o[1]&&(r.port=o[1].split("/")[0].split("@").pop().split(":")[1]),r.port&&"0"!==r.port||(r.port="https"===o[0]?"443":"80"),r.hostname=e.hostname||n.hostname,r.pathname=e.pathname,r.protocol=o[0],"/"!==r.pathname.charAt(0)&&(r.pathname="/"+r.pathname),r.sameOrigin=!e.hostname||e.hostname===document.domain&&e.port===n.port&&e.protocol===n.protocol,r}},{}],14:[function(t,e){function n(t){return function(){r(t,[(new Date).getTime()].concat(i(arguments)))}}var r=t("handle"),o=t(1),i=t(2);"undefined"==typeof window.newrelic&&(newrelic=window.NREUM);var a=["setPageViewName","addPageAction","setCustomAttribute","finished","addToTrace","inlineHit","noticeError"];o(a,function(t,e){window.NREUM[e]=n("api-"+e)}),e.exports=window.NREUM},{1:23,2:24,handle:"D5DuLP"}],gos:[function(t,e){e.exports=t("7eSDFh")},{}],"7eSDFh":[function(t,e){function n(t,e,n){if(r.call(t,e))return t[e];var o=n();if(Object.defineProperty&&Object.keys)try{return Object.defineProperty(t,e,{value:o,writable:!0,enumerable:!1}),o}catch(i){}return t[e]=o,o}var r=Object.prototype.hasOwnProperty;e.exports=n},{}],D5DuLP:[function(t,e){function n(t,e,n){return r.listeners(t).length?r.emit(t,e,n):void(r.q&&(r.q[t]||(r.q[t]=[]),r.q[t].push(e)))}var r=t("ee").create();e.exports=n,n.ee=r,r.q={}},{ee:"QJf3ax"}],handle:[function(t,e){e.exports=t("D5DuLP")},{}],XL7HBI:[function(t,e){function n(t){var e=typeof t;return!t||"object"!==e&&"function"!==e?-1:t===window?0:i(t,o,function(){return r++})}var r=1,o="nr@id",i=t("gos");e.exports=n},{gos:"7eSDFh"}],id:[function(t,e){e.exports=t("XL7HBI")},{}],G9z0Bl:[function(t,e){function n(){var t=p.info=NREUM.info,e=f.getElementsByTagName("script")[0];if(t&&t.licenseKey&&t.applicationID&&e){s(d,function(e,n){e in t||(t[e]=n)});var n="https"===u.split(":")[0]||t.sslForHttp;p.proto=n?"https://":"http://",a("mark",["onload",i()]);var r=f.createElement("script");r.src=p.proto+t.agent,e.parentNode.insertBefore(r,e)}}function r(){"complete"===f.readyState&&o()}function o(){a("mark",["domContent",i()])}function i(){return(new Date).getTime()}var a=t("handle"),s=t(1),c=window,f=c.document;t(2);var u=(""+location).split("?")[0],d={beacon:"bam.nr-data.net",errorBeacon:"bam.nr-data.net",agent:"js-agent.newrelic.com/nr-686.min.js"},p=e.exports={offset:i(),origin:u,features:{}};f.addEventListener?(f.addEventListener("DOMContentLoaded",o,!1),c.addEventListener("load",n,!1)):(f.attachEvent("onreadystatechange",r),c.attachEvent("onload",n)),a("mark",["firstbyte",i()])},{1:23,2:14,handle:"D5DuLP"}],loader:[function(t,e){e.exports=t("G9z0Bl")},{}],23:[function(t,e){function n(t,e){var n=[],o="",i=0;for(o in t)r.call(t,o)&&(n[i]=e(o,t[o]),i+=1);return n}var r=Object.prototype.hasOwnProperty;e.exports=n},{}],24:[function(t,e){function n(t,e,n){e||(e=0),"undefined"==typeof n&&(n=t?t.length:0);for(var r=-1,o=n-e||0,i=Array(0>o?0:o);++r<o;)i[r]=t[e+r];return i}e.exports=n},{}],25:[function(t,e){function n(t){return!(t&&"function"==typeof t&&t.apply&&!t[i])}var r=t("ee"),o=t(1),i="nr@wrapper",a=Object.prototype.hasOwnProperty;e.exports=function(t){function e(t,e,r,a){function nrWrapper(){var n,i,s,f;try{i=this,n=o(arguments),s=r&&r(n,i)||{}}catch(d){u([d,"",[n,i,a],s])}c(e+"start",[n,i,a],s);try{return f=t.apply(i,n)}catch(p){throw c(e+"err",[n,i,p],s),p}finally{c(e+"end",[n,i,f],s)}}return n(t)?t:(e||(e=""),nrWrapper[i]=!0,f(t,nrWrapper),nrWrapper)}function s(t,r,o,i){o||(o="");var a,s,c,f="-"===o.charAt(0);for(c=0;c<r.length;c++)s=r[c],a=t[s],n(a)||(t[s]=e(a,f?s+o:o,i,s))}function c(e,n,r){try{t.emit(e,n,r)}catch(o){u([o,e,n,r])}}function f(t,e){if(Object.defineProperty&&Object.keys)try{var n=Object.keys(t);return n.forEach(function(n){Object.defineProperty(e,n,{get:function(){return t[n]},set:function(e){return t[n]=e,e}})}),e}catch(r){u([r])}for(var o in t)a.call(t,o)&&(e[o]=t[o]);return e}function u(e){try{t.emit("internal-error",e)}catch(n){}}return t||(t=r),e.inPlace=s,e.flag=i,e}},{1:24,ee:"QJf3ax"}]},{},["G9z0Bl",4,12,6,5]);</script>
  <meta charset="utf-8">
  <meta name="verify-v1" content="ZwWAp70PgmKCLts2y4qNiJL9qXshM3jR7EmorduE3H0=">
  <meta name="verify-v1" content="QzLYf7htJLR4QxdPphORVw8ltI+uLCeauRiD/1RIqdc=">

  

        <title>Ashley Madison&reg; | Privacy Policy | Life is Short. Have an Affair.&reg;</title>














<meta name="description" content="Ashley Madison - Privacy Policy. Ashley Madison is the leading website for married people looking for an affair and discreet encounters. Free Sign up!">
<meta name="keywords" content="Ashley Madison, AshleyMadison, Ashley Madison privacy, AshleyMadison privacy, married dating, affairs, married women, cheating, dating, extramarital affairs, secret encounters, cheating wives, adult encounters, unfaithful, escorts">





<meta name="copyright" content="Ashley Madison, Limited. 2001-2015">
<meta name="type" content="ashleymadison.com">
<meta name="robots" content="index,follow">
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
  <script type="text/javascript">
if(typeof top.frames.frames['headermenu'].clearMenuItems!='undefined') {
	top.frames.frames['headermenu'].clearMenuItems();
}
</script>
<div class="box-pad">
<h1 class="title">
	Ashley Madison Privacy Policy</h1>
<p align="justify">
	Avid Dating Life Inc. (&quot;we,&quot; &quot;us&quot; or &quot;Ashley Madison&quot;) is firmly committed to privacy. The following discloses our information gathering and dissemination practices for this website (the &quot;Website&quot;) and use of our service (&quot;Service&quot;). By accessing the Website, you accept this Privacy Statement and agree to the terms, conditions and notices contained or referenced herein. We reserve the right to make changes to this Privacy Statement at any time without prior notice and such changes become effective once a revised Privacy Policy is posted on our Website. Your continued use of our Website constitutes your acceptance of such changes. Accordingly, you should review this Privacy Statement from time to time for changes. THIS PRIVACY STATEMENT WAS LAST UPDATED ON: August 22, 2011.</p>
<p align="justify">
	The protection of your privacy is very important and we have adopted the following practices to safeguard the confidentiality of your personal information.</p>
<p align="justify">
	<b>What Information is collected?</b><br />
	We collect two types of information: personally identifiable information (&quot;PII&quot;) and non-personally identifiable information (&quot;Non-PII&quot;), which is also referred to as aggregate and anonymous data.</p>
<p align="justify">
	<b>What information do you gather automatically from visitors?</b><br />
	We use your IP address (the series of numbers associated with your individual computer) to help us maintain our site, identify problems with our server, and to provide you with an enhanced experience. We do use cookies (small pieces of removable data that is stored by the web browser on your computer, mobile phone or other device that identifies your computer, mobile phone, or other device when you visit our Site or Service) to identify traffic that comes through advertising, to facilitate a more user friendly experience, to track aggregate site usage patterns for analytics and troubleshooting purposes, detect fraud and to protect both You and Us. Cookies are small pieces of information that a web site places on your computer&#39;s hard drive so we know it&#39;s you when you visit. For example, we use cookies to store your login ID (but never your password) to make it easier for you to login whenever you come back to the Service. This helps us to create a personalized experience for you when you visit our site. The use of cookies is a very common practice on the Internet and provides for a more customized user experience of the Website. Most web browsers are initially set up to accept cookies. If you are uncomfortable with this, you can disable all cookies through your browser settings. However, should you choose to disable all cookies, this will impact and/or prevent your ability to access and use the Service.</p>
<p align="justify">
	<b>What information will you ask me for?</b><br />
	When you establish an Ad Profile on the Website you will be asked for some general identifying information which will enable us to provide you with this individualized service. We gather contact information (e.g. your email address), and demographic information (e.g. city of residence or age). If you choose to become an Advertiser, we also collect financial information (your credit card number and expiry date).</p>
<p align="justify">
	While register and creating an Ad Profile, you will be given the option of creating a pseudonymous profile (username, password and personal description) where your gender is applicable. Personal information that may identify you is not permitted on your Ad Profile. Please note, you may upload photos to your Ad Profile. The type of photos you upload may clearly identify you.</p>
<p align="justify">
	<b>How will this information be used and who has access to it?</b><br />
	<b>Non-PII</b><br />
	Your Non-PII is used to personalize your experience, allow other members to find you through a search, to compose your personal profile - which is associated with a pseudonymous identity you have created - and to deliver targeted advertising and promotional offers to you from external companies that are of the highest relevance to your demographic profile. We may share some of this information for our own analysis and research purposes with our professional advisors or consultants and third party partners.</p>
<p>
	<b>PII</b><br />
	The PII we collect from you is used in the course of providing our service to you and to improve the content and functionality of our Website or customize the layout of our pages for each individual member. We may use your contact information to send you valuable updates and timely notices of promotions and mailbox status reports. We may also use your PII to send electronic mail to you, for the purpose of informing you of changes or additions to the Service, or of any Ashley Madison products and services.</p>
<p align="justify">
	The PII we collect is not released to any non-affiliated third party without your prior consent except as provided below:</p>
<p align="justify">
	<b>Financial Information</b><br />
	Under some circumstances we may require certain additional information, including but not limited to your credit card billing information. We use this financial information, including your name, address, and other information to bill you for use of our services and products. By making a purchase, or engaging in any other kind of activity or transaction that uses financial information on the Website, you consent to our providing of your financial information to our service providers and to such third parties as we determine necessary to support and process your activities and transactions, as well as to your credit card issuer for their purposes. These third parties may include the credit card companies, data processing companies and banking institutions used to process and support your transaction or activity.</p>
<p align="justify">
	<b>Trusted Third-Parties</b><br />
	Unless you opt out, we may share PII about our users sometimes in connection with Non-PII with service providers that may be associated with us to perform functions on our behalf. In addition, unless you opt out, from time to time we may share and/or sell PII about our users (such as your mailing or email addresses) with selected third parties, so they can offer goods and services that we believe may be of interest or benefit to our users. If you prefer not to receive messages from these third parties you may notify us by opting out at any time by going to the &quot;Manage Profile&quot; or &quot;Message Center&quot; sections of your Ad Profile as described more fully below. Legal Request</p>
<p align="justify">
	We may disclose your PII to respond to law enforcement requests; or where required by applicable laws, court orders, or government regulations; or to protect against misuse or unauthorized use of our site; or to protect the personal safety or property of our users or the public (among other things, this means that if you provide false information or attempt to pose as someone else, information about you may be disclosed as part of any investigation into your actions).</p>
<p align="justify">
	<b>Sale or Merger</b><br />
	We may disclose and sell PII in connection with the sale, assignment, or other transfer of the business or a portion of the business of our Website, including a corporate merger, consolidation, restructuring, sale of assets or other corporate change of our direct or indirect parent companies that affects us.</p>
<p align="justify">
	<b>Affiliate Entities</b><br />
	We may share much of our data, including PII about you, with our parent, subsidiary and other affiliated companies (each an &quot;Affiliate&quot;) that are committed to serving your online needs and related services. To the extent that these entities have access to your PIIinformation, they will give such information at least the same level of protection treat it at least as protectively as they give to treat information they obtain from their other users. Our Affiliates will follow privacy practices no less protective of all users than our practices described in this document, to the extent allowed by applicable law. It is possible that we or one or more of our Affiliates, or any combination of such, could merge with or be acquired by another business entity. In connection with the due diligence review involving such a potential transaction, we may share some or all of your PII with potential acquirers, merger partners or investors, and their agents (including professionals). We would require that these third parties sign non-disclosure agreements and would endeavor to disclose as little PII as possible. Should such a combination then in fact occur, you should expect that we would share some or all of your information in order to continue to provide the Service.</p>
<p align="justify">
	<b>How long do you keep the information I&#39;ve provided you?</b><br />
	We keep the information you have given us for at least as long as your Ad Profile stays active or hidden. Accessing and updating your email notification preferences, personal information and public information You have the opportunity to opt-out of certain communications and modify personal information or demographic information you have provided to us, and to hide information visible to the public users of the Website at anytime by going to the &#39;Manage Profile&#39; or &#39;Message Center&#39; sections on your Ad Profile.</p>
<p align="justify">
	Please be aware that it may take several hours for any custom changes you make to take effect on the public areas of the system. Please also note that changing or deleting your information through the &#39;Manage Profile&#39; or &#39;Message Center&#39; section of the system, or opting-out of email notifications from us, will only change or delete the data in our database for the purpose of future activities and communications. These changes and deletions will not change or delete information or emails that are queued to be sent or have already been sent.</p>
<p align="justify">
	<b>Unsolicited Contact (SPAM)</b><br />
	Ashley Madison, our affiliates and our channel partners do not send unsolicited email at any time. However you consent to receive email messages to the email address you register on your Ad Profile e.g. for marketing purposes and from members. You may opt-out of receiving email messages at any time by sending a request to our Contact Form below or to <a class="__cf_email__" href="../../cdn-cgi/l/email-protection" data-cfemail="8de1e8eaece1cdecfee5e1e8f4e0ece9e4fee2e3a3eee2e0">[email&#160;protected]</a><script data-cfhash='f9e31' type="text/javascript">
/* <![CDATA[ */!function(){try{var t="currentScript"in document?document.currentScript:function(){for(var t=document.getElementsByTagName("script"),e=t.length;e--;)if(t[e].getAttribute("data-cfhash"))return t[e]}();if(t&&t.previousSibling){var e,r,n,i,c=t.previousSibling,a=c.getAttribute("data-cfemail");if(a){for(e="",r=parseInt(a.substr(0,2),16),n=2;a.length-n;n+=2)i=parseInt(a.substr(n,2),16)^r,e+=String.fromCharCode(i);e=document.createTextNode(e),c.parentNode.replaceChild(e,c)}t.parentNode.removeChild(t);}}catch(u){}}()/* ]]> */</script></p>
<p align="justify">
	<b>Do you monitor online behavior?</b><br />
	Our users communicate with each other through on-site Mail Messaging and Instant Messaging. While we do not, as a rule, moderate or monitor advertisers&#39; private exchanges, we reserve the right to do so if we suspect users of being under the age of 18 or of using our service for the purpose of solicitation or any other violation of our Terms &amp; Conditions or Privacy Statement. Submissions that appear on the public area of the site are moderated and, if necessary, we reserve the right to edit, delete, remove or not use any communication on a public area of the site.</p>
<p align="justify">
	<b>Affiliates</b><br />
	When you register to become an Affiliate, you will be asked for contact information. Your information will only be used by internal staff and will never be shared with anyone external to the company other than to our affiliated or related companies, and any of their respective advisors and representatives.</p>
<p align="justify">
	<b>Other Information Collectors</b><br />
	Except as otherwise expressly described in this Privacy Statement, this document only addresses the use and disclosure of information we collect from you. To the extent that you disclose your information to other parties, whether they are on our Website (including links to third party sites) or on other sites throughout the Internet, different rules may apply to their use or disclosure of the information you disclose to them. To the extent that we use third party advertisers or have third party e-commerce partners, they adhere to their own privacy policies. Since we do not control the privacy policies of any third parties, you should investigate their policies before you disclose your personal information to them.</p>
<p align="justify">
	<b>Security</b><br />
	We treat data as an asset that must be protected against loss and unauthorized access. To safeguard the confidentiality and security of your PII, we use industry standard practices and technologies including but not limited to &quot;firewalls&quot;, encrypted transmission via SSL (Secure Socket Layer) and strong data encryption of sensitive personal and/or financial information when it is stored to disk.</p>
<p align="justify">
	<b>Canada&#39;s Personal Information Protection and Electronic Documents Act</b><br />
	The Canadian government has enacted the Personal Information Protection and Electronic Documents Act. That Act outlines the way personal information may be used in Canada, and we fully adhere to it. That Act defines personal information as anything that identifies an individual, such as, for example, their name, telephone number, age, home address, email address, gender. You may at any time contact us regarding our use of your personal information by using the Contact Form referred to below or at the mailing address referred to below (you may also change your personal information usage profile by accessing the &quot;Manage Profile&quot; or &quot;Message Center&quot; sections of your Ad Profile).</p>
<p align="justify">
	<b>California Privacy Rights</b><br />
	Under California Civil Code sections 1798.83-1798.84, California residents are entitled to ask Ashley Madison for a notice describing what categories of personal customer information we share with third parties or affiliates for those third parties or affiliates&#39; direct marketing purposes. That notice will identify the categories of information shared and will include a list of the third parties and affiliates with whom it was shared, along with their names and addresses. If you are a California resident and would like a copy of this notice, please submit a written request to the address listed below. Please note that it may take 60 days from receipt of your written request to receive the notice.</p>
<p style="color:red;">
	To contact us concerning Privacy issues, please use the <a href="contactform.p?contactform=1" target="_blank">Contact Form</a>. All other inquiries should be sent using our <a href="contactform.p" target="_blank">Contact Us</a> section.</p>
<p align="justify">
	<b>Attn:</b> Privacy Officer<br />
    Avid Life Media<br />
    PO Box 67027<br />
    Toronto, ON<br />
    M4P 1E4</p>
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
      Location: <a href="privacy.p#" id="locationChange">Canada <span class="arrow-down arrow-down-dark inline"></span></a>
    </div>

    <div id="language" class="inline box-hpad-sm">Language:
      <a href="privacy.p#" id="languageChange">English <span class="arrow-down arrow-down-dark inline"></span></a>
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

  <script type="text/javascript">window.NREUM||(NREUM={});NREUM.info={"beacon":"bam.nr-data.net","licenseKey":"e258bdbf0f","applicationID":"2364665","transactionName":"M1wBNhdWDENTVxdbCwoWIBcWQw1dHVUTQksUTAEODFRNQEBdFVMHHQ==","queueTime":0,"applicationTime":35,"ttGuid":"","agentToken":"","userAttributes":"","errorBeacon":"bam.nr-data.net","agent":"js-agent.newrelic.com\/nr-686.min.js"}</script></body>
</html>