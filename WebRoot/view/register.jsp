<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ request.getContextPath();
%>


<!DOCTYPE html>
<!-- saved from url=(0023)https://ele.me/register -->
<html lang="zh"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge, chrome=1">

  
<meta name="msapplication-starturl" content="./">
<meta name="msapplication-tileimage" content="/msapp-icon.png">
<meta name="msapplication-tilecolor" content="#0088ff">
<meta name="renderer" content="webkit">
    
<link href="./assets/forward_201405232030.css" type="text/css" rel="stylesheet">
<!--[if (gte IE 7)&( lte IE 9)]>
<link href="https://static.ele.me/css/public/forward_iehack_201405232030.css" type="text/css" rel="stylesheet" />
<![endif]-->
  <link rel="apple-touch-icon-precomposed" href="https://static.ele.me/apple-touch-icon.png?v=2">
  <link rel="shortcut icon" href="https://ele.me/favicon.ico?v=2" type="image/x-icon">

  

</head>

<body youdao="bind">
      <link href="./assets/background.css" type="text/css" rel="stylesheet">
<div id="background" style="background-position:1px -5678.8888888889px;background-color:#C0DEED;" class=" day ">
    <div id="sun"></div>
    <div id="moon"></div>

    <div id="clouds">
        <div id="cloudGroup1">
            <img src="./assets/clouds.png" alt="" id="cloudPiece1" class="cloudPiece">
            <img src="./assets/clouds.png" alt="" id="cloudPiece2" class="cloudPiece">
            <img src="./assets/clouds.png" alt="" id="cloudPiece3" class="cloudPiece">
        </div>
        <div id="cloudGroup2">
            <img src="./assets/clouds.png" alt="" id="cloudPiece4" class="cloudPiece">
            <img src="./assets/clouds.png" alt="" id="cloudPiece5" class="cloudPiece">
            <img src="./assets/clouds.png" alt="" id="cloudPiece6" class="cloudPiece">
        </div>
        <div id="cloudGroup3">
            <img src="./assets/clouds.png" alt="" id="cloudPiece7" class="cloudPiece">
            <img src="./assets/clouds.png" alt="" id="cloudPiece8" class="cloudPiece">
        </div>
    </div>
    <div id="bg_stars">
        <div class="star_type_1_big">
            <div class="bg_star" id="star1_1"></div>
            <div class="bg_star" id="star1_2"></div>
            <div class="bg_star" id="star1_3"></div>
            <div class="bg_star" id="star1_4"></div>
<!--             <div class="bg_star" id="star1_5"></div>
            <div class="bg_star" id="star1_6"></div> -->
        </div>
        <div class="star_type_1_normal">
            <div class="bg_star" id="star1_7"></div>
            <div class="bg_star" id="star1_8"></div>
            <div class="bg_star" id="star1_9"></div>
            <div class="bg_star" id="star1_10"></div>
            <div class="bg_star" id="star1_11"></div>
            <div class="bg_star" id="star1_12"></div>
        </div>
        <div class="star_type_1_small">
            <div class="bg_star" id="star1_13"></div>
            <div class="bg_star" id="star1_14"></div>
            <div class="bg_star" id="star1_15"></div>
            <div class="bg_star" id="star1_16"></div>
            <div class="bg_star" id="star1_17"></div>
            <div class="bg_star" id="star1_18"></div>
        </div>
        <div class="star_type_2_big">
            <div class="bg_star" id="star2_1"></div>
            <div class="bg_star" id="star2_2"></div>
            <div class="bg_star" id="star2_3"></div>
            <div class="bg_star" id="star2_4"></div>
<!--             <div class="bg_star" id="star2_5"></div>
            <div class="bg_star" id="star2_6"></div> -->
        </div>
        <div class="star_type_2_normal">
            <div class="bg_star" id="star2_7"></div>
            <div class="bg_star" id="star2_8"></div>
            <div class="bg_star" id="star2_9"></div>
            <div class="bg_star" id="star2_10"></div>
            <div class="bg_star" id="star2_11"></div>
            <div class="bg_star" id="star2_12"></div>
        </div>
        <div class="star_type_2_small">
            <div class="bg_star" id="star2_13"></div>
            <div class="bg_star" id="star2_14"></div>
            <div class="bg_star" id="star2_15"></div>
            <div class="bg_star" id="star2_16"></div>
            <div class="bg_star" id="star2_17"></div>
            <div class="bg_star" id="star2_18"></div>
        </div>

    </div>
</div>
    <div class="full-content-wrapper">

                        
<header id="topbar" role="banner">
  
</header>
                <div class="container">
          
          <div class="clearfix">
  <div class="logreg-banner">
</div>
<div id="modal_qr" class="modal-qr modal hide fade" tabindex="-1" role="dialog" aria-labelledby="iphoneDownloadLabel" aria-hidden="true">
  <div class="modal-header">
    <a class="close" data-dismiss="modal" aria-hidden="true">×</a>
    <h3>使用手机扫描安装</h3>
  </div>
  <div class="modal-body">
    <img src="./assets/logreg-qrCode.png" alt="QR Code">
  </div>
</div>

  <div class="logreg-box">
    <nav class="clearfix">
      <a class="logreg-tab-item" href="login.jsp">会员登录</a>
      <a class="logreg-tab-item active" href="register.jsp">免费注册</a>
    </nav>
    <div class="logreg-form"><form id="register_form" name="register" action="./assets/饿了么-网上订餐-叫外卖上ele.me.html" method="post" autocomplete="off" novalidate="novalidate">
  <div class="relative">
    <label><span class="required-mark">*</span>用户名</label>
    <input type="text" class="logreg-input" name="sf_guard_user[username]">
  </div>

  <div class="relative">
    <label><span class="required-mark">*</span>密码</label>
    <input type="password" id="sf_guard_user_password" class="logreg-input" name="sf_guard_user[password]">
  </div>

  <div class="relative">
    <label><span class="required-mark">*</span>确认密码</label>
    <input type="password" class="logreg-input" name="sf_guard_user[repeatPassword]">
  </div>

  <div class="relative">
    <label><span class="required-mark">*</span>电子邮箱</label>
    <input type="text" class="logreg-input" name="sf_guard_user[email]">
  </div>

  
  <div class="clearfix">
    <label class="logreg-checkbox" for="agreement">
     <!-- <input id="agreement" type="checkbox" name="agreement" checked="true">
      <input id="registerFormToken" type="hidden" value="538404b7f1f09" name="token">
      我同意<a target="_blank" href="https://ele.me/about/agreement" class="link">使用条款和协议</a>
    </label> -->

    <button id="register_btn" class="btn btn-yellow logreg-btn" type="submit" data-loading="提交中…">注册</button>
  </div>

  <div class="logreg-oauth">
    <!-- 其他方式：
    <a class="logreg-olink" href="https://ele.me/weibo/auth"><img id="wb_login_image" src="./assets/sina.gif" title="微博连接" alt="" border="0"></a>
    <a class="logreg-olink" href="https://ele.me/renren/auth"><img id="xn_login_image" src="./assets/renren.gif" title="人人连接" alt="" border="0"></a>-->
  </div>
</form>

</div>
  </div>
</div>
        </div>
      
      <div id="site_fixed" class="site-fixed">
        <a id="back_top" class="btn-back-top ui_invisible" role="button" title="回顶部"><i class="icon-backtop"></i></a>
        <div class="btn-app-qrcode">
          <i class="icon-qrcode"></i>
          <img class="img-qrcode" src="./assets/app-qrcode.png" alt="扫描二维码免费下载手机App">
        </div>
      </div>


      <div id="modal_globalLogin" class="modal-global-login modal hide fade" aria-hidden="true" tabindex="-1">
  <div class="modal-header">
    <a class="close" aria-hidden="true">×</a>
    <h3>饿了么账号</h3>
  </div>

  <div class="modal-body">
    <ul class="nav nav-tabs">
        <li class="active"><a href="https://ele.me/register#" class="">登录</a></li>
        <li><a href="./assets/饿了么-网上订餐-叫外卖上ele.me.html" class="">注册</a></li>
    </ul>

    <form action="https://ele.me/login" method="post" class="form-horizontal">
      <fieldset>
        <div class="control-group">
          <label class="control-label" for="xlInput">用户名</label>
          <div class="controls">
            <input class="" id="" name="login[username]" size="30" type="text">
          </div>
        </div><!-- /clearfix -->
        <div class="control-group">
          <label class="control-label" for="xlInput">密码</label>
          <div class="controls">
            <input class="" id="" name="login[password]" size="30" type="password">
          </div>
        </div><!-- /clearfix -->

        <div class="form-actions">
          <input name="redirect_url" type="hidden" value="https://ele.me:80/register">
          <input type="submit" class="btn btn-yellow login" value="登录网站">&nbsp;<button class="btn close">取消</button>
        </div>
      </fieldset>
    </form>
  </div>
</div>

      <footer class="site-footer">
      </footer>
    </div>
  
    
  <script type="text/javascript" src="./assets/foot_201405232030.js"></script>
  <script src="./assets/sfGuardAuth_201405232030.js"></script>


<script type="text/javascript">
  var _hmt = _hmt || [];
  (function() {
    var hm = document.createElement("script");
    hm.src = "//hm.baidu.com/hm.js?4f06ea17a2c10a25b2f39bb33b432b16";
    var s = document.getElementsByTagName("script")[0];
    s.parentNode.insertBefore(hm, s);
  })();
</script>

<script type="text/javascript">
  window.onload = function () {
    var end_time = new Date().getTime();
    var load_time = end_time - start_time;
    if(load_time > 10000){
      if (end_time - ready_time > 0) {
        _gaq.push(['_trackEvent', 'TimeoutResourceTime', 'sfGuardAuth/register', '', end_time - ready_time]);
      }
      if (ready_time -start_time > 0) {
        _gaq.push(['_trackEvent', 'TimeoutReadyTime', 'sfGuardAuth/register', '', ready_time - start_time]);
      }
      _gaq.push(['_trackEvent', 'RenderTimeout', 'sfGuardAuth/register', '', load_time]);
    }
    else if(load_time > 0){
      if(ready_time > 0 && end_time > 0 && end_time - ready_time > 0){
        _gaq.push(['_trackEvent', 'ResourceTime', 'sfGuardAuth/register', '', end_time - ready_time]);
      }
      _gaq.push(['_trackEvent', 'RenderTime', 'sfGuardAuth/register', '', load_time]);
    }
  }
</script>
<script type="text/javascript">
  var isReady = false,
      readyList = null;
  function domReady(callback) {
    if (isReady) {
      setTimeout(callback);
      return;
    }

    if (readyList) {
      readyList.push(callback);
      return;
    }

    readyList = [callback];
    var completed = function(event) {
      if (document.addEventListener || event.type == 'load' || document.readyState === 'complete') {
        detach();
        realReady();
      }
    };

    if (document.addEventListener) {
      document.addEventListener('DOMContentLoaded', completed, false);
      window.addEventListener('load', completed, false);
    } else {
      document.attachEvent('onreadystatechange', completed);
      window.attachEvent('onload', completed);

      var top = false;
      try {
        top = window.frameElement == null && document.documentElement;
      } catch(e) {}

      if (top && top.doScroll) {
        (function doScrollCheck() {
          if (!isReady) {
            try {
              top.doScroll('left');
            } catch(e) {
              return setTimeout(doScrollCheck, 50);
            }
            detach();
            realReady();
          }
        })();
      }
    }

    function detach() {
      if (document.addEventListener) {
        document.removeEventListener('DOMContentLoaded', completed, false);
        window.removeEventListener('load', completed, false);
      } else {
        document.detachEvent('onreadystatechange', completed);
        window.detachEvent('onload', completed);
      }
    }

    function realReady() {
      if (!document.body) {
        setTimeout(realReady);
        return;
      }
      isReady = true;
      var callback;
      while (callback = readyList.shift()) {
        callback();
      }
    }
  }
  var ready_time = 0;
  domReady(function(){
    ready_time = new Date().getTime();
    if(ready_time - start_time < 10000 && ready_time - start_time > 0){
      _gaq.push(['_trackEvent', 'ReadyTime', 'sfGuardAuth/register', '', ready_time - start_time]);
    }
  });
</script>
<script type="text/javascript">
  (function() {
  var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
  ga.src = 'https://static.ele.me/js/forward/lib/ga.js?v=20130110';
  var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
  })();
</script>

<!-- eleme user event track -->
<script type="text/javascript">
  var _ueaq = _ueaq || [];
  _ueaq.push(['set_push_url', 'http://api.ele.me/eleme_user_event']);

  (function() {
    var ue = document.createElement('script'); ue.type = 'text/javascript'; ue.async = true; ue.defer = true;
    ue.src = 'https://static.ele.me/js/forward/lib/user_event_track.js?v=20130916';
    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ue, s);
  })();
</script>
<!-- eleme user event track -->


<!-- haha! everyone is a frontier -->
<img></body></html>
