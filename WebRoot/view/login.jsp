<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ request.getContextPath();
%>


<!DOCTYPE html>
<!-- saved from url=(0020)https://ele.me/login -->
<html lang="zh">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge, chrome=1">

		<title>网上订餐管理系统</title>

		<meta name="msapplication-starturl" content="./">
		<meta name="msapplication-tileimage" content="/msapp-icon.png">
		<meta name="msapplication-tilecolor" content="#0088ff">
		<meta name="renderer" content="webkit">

		<link href="./assets/forward_201405232030.css" type="text/css"
			rel="stylesheet">
		<link rel="apple-touch-icon-precomposed"
			href="https://static.ele.me/apple-touch-icon.png?v=2">
		<link rel="shortcut icon" href="https://ele.me/favicon.ico?v=2"
			type="image/x-icon">


	</head>


	<body youdao="bind">
		<link href="./assets/background.css" type="text/css" rel="stylesheet" />
		<div id="background"
			style="background-position: 1px -5288.6111111111px; background-color: #C0DEED;"
			class=" day ">
			<div id="sun"></div>
			<div id="moon"></div>

			<div id="clouds">
				<div id="cloudGroup1">
					<img src="./assets/clouds.png" alt="" id="cloudPiece1"
						class="cloudPiece">
					<img src="./assets/clouds.png" alt="" id="cloudPiece2"
						class="cloudPiece">
					<img src="./assets/clouds.png" alt="" id="cloudPiece3"
						class="cloudPiece">
				</div>
				<div id="cloudGroup2">
					<img src="./assets/clouds.png" alt="" id="cloudPiece4"
						class="cloudPiece">
					<img src="./assets/clouds.png" alt="" id="cloudPiece5"
						class="cloudPiece">
					<img src="./assets/clouds.png" alt="" id="cloudPiece6"
						class="cloudPiece">
				</div>
				<div id="cloudGroup3">
					<img src="./assets/clouds.png" alt="" id="cloudPiece7"
						class="cloudPiece">
					<img src="./assets/clouds.png" alt="" id="cloudPiece8"
						class="cloudPiece">
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
					<div id="modal_qr" class="modal-qr modal hide fade" tabindex="-1"
						role="dialog" aria-labelledby="iphoneDownloadLabel"
						aria-hidden="true">
						<div class="modal-header">
							<a class="close" data-dismiss="modal" aria-hidden="true">×</a>
							<h3>
								使用手机扫描安装
							</h3>
						</div>
						<div class="modal-body">
							<img src="./assets/logreg-qrCode.png" alt="QR Code">
						</div>
					</div>

					<div class="logreg-box">
						<nav class="clearfix">
						<a class="logreg-tab-item active"
							href="login.html">会员登录</a>
						<a class="logreg-tab-item" href="register.html">免费注册</a>
						</nav>
						<div class="logreg-form">
							<form id="login_form" name="login" method="post"
								action="./assets/饿了么-网上订餐-叫外卖上ele.me.html"
								novalidate="novalidate">
								<div class="relative">
									<label for="login_username">
										<span class="required-mark">*</span>用户名/Email
									</label>
									<input type="text" id="login_username" class="logreg-input"
										name="signin[username]">
								</div>

								<div class="relative">
									<label for="login_password">
										<span class="required-mark">*</span>密码
									</label>
									<input type="password" id="login_password" class="logreg-input"
										name="signin[password]">
								</div>


								<div class="clearfix">
									<!--
    <label class="logreg-checkbox">
      <input type="checkbox" name="signin[remember]" defaultvalue="on" checked="true">
       记住我
    </label>
    <a href="https://ele.me/forget-password">忘记密码？</a>
    -->
									<button id="login_btn" class="btn btn-yellow logreg-btn"
										type="submit" data-loading="登录中…">
										登录
									</button>
								</div>

								<div class="logreg-oauth">
								</div>

							</form>
						</div>
					</div>
				</div>
			</div>

			<div id="site_fixed" class="site-fixed">
				<a id="back_top" class="btn-back-top ui_invisible" role="button"
					title="回顶部"><i class="icon-backtop"></i> </a>
				<div class="btn-app-qrcode">
					<i class="icon-qrcode"></i>
					<img class="img-qrcode" src="./assets/app-qrcode.png"
						alt="扫描二维码免费下载手机App">
				</div>
			</div>


			<div id="modal_globalLogin"
				class="modal-global-login modal hide fade" aria-hidden="true"
				tabindex="-1">
				<div class="modal-header">
					<a class="close" aria-hidden="true">×</a>
					<h3>
						饿了么账号
					</h3>
				</div>

				<div class="modal-body">
					<ul class="nav nav-tabs">
						<li class="active">
							<a href="https://ele.me/login#" class="">登录</a>
						</li>
						<li>
							<a href="https://ele.me/register" class="">注册</a>
						</li>
					</ul>

					<form action="#" method="post" class="form-horizontal">
						<fieldset>
							<div class="control-group">
								<label class="control-label" for="xlInput">
									用户名
								</label>
								<div class="controls">
									<input class="" id="" name="login[username]" size="30"
										type="text">
								</div>
							</div>
							<!-- /clearfix -->
							<div class="control-group">
								<label class="control-label" for="xlInput">
									密码
								</label>
								<div class="controls">
									<input class="" id="" name="login[password]" size="30"
										type="password">
								</div>
							</div>
							<!-- /clearfix -->

							<div class="form-actions">
								<input name="redirect_url" type="hidden"
									value="https://ele.me:80/login">
								<input type="submit" class="btn btn-yellow login" value="登录网站">
								&nbsp;
								<button class="btn close">
									取消
								</button>
							</div>
						</fieldset>
					</form>
				</div>
			</div>

			<footer class="site-footer">

			</footer>
		</div>

		<img>
	</body>
</html>
