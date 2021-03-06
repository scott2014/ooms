<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ request.getContextPath();
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns:wb="http://open.weibo.com/wb">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>网络订餐管理系统</title>

		<link rel="shortcut icon" href="http://www.shikuaigou.com/assets/img/favicon.ico">
		<link rel="stylesheet" href="./assets/common.css" type="text/css" media="all">
		<link rel="stylesheet" href="./assets/index.css" type="text/css" media="all">

		<script charset="UTF-8" src="./assets/bundle.js"></script>
		<script charset="UTF-8" src="./assets/iframeWidget.js"></script>

		<script type="text/javascript" src="./assets/jquery.js"></script>
		<script type="text/javascript" src="./assets/jquery.cookie.js"></script>
		<script type="text/javascript" src="./assets/json2.min.js"></script>
		<script type="text/javascript" src="./assets/base0714.js"></script>
		<script type="text/javascript" src="./assets/imgLoad.js"></script>
		<script type="text/javascript" src="./assets/shadow.js"></script>
		<script type="text/javascript" src="./assets/collect.js"></script>
		<script type="text/javascript" src="./assets/returnTop.js"></script>
		<script type="text/javascript" src="./assets/nvaBarWithNoVoice.js"></script>
		<script type="text/javascript" src="./assets/pagination.js"></script>

	</head>

	<body youdao="bind">
		<iframe id="sina_anywhere_iframe" style="display: none;"></iframe>
		<div id="topArea">
			<div class="topAreaContainer">
				<div class="topLeft">
					<ul>
						<li>
							<a href="<%=basePath %>/view/login.jsp">登录</a>
						</li>
						<li>
							<a href="<%=basePath %>/view/register.jsp">免费注册</a>
						</li>
					</ul>
				</div>
			</div>
		</div>
		<div id="header">
			<div id="headBox">

				<h1>
					<a href="http://www.shikuaigou.com/" title="十块购：全场十块钱包邮"
						class="logo">十块购</a>
				</h1>
				<ul>
					<li>
						<a class="baoyou" >优质美食</a>
					</li>
					<li>
						<a class="jingxuan" >任君挑选</a>
					</li>
					<li>
						<a class="genxing" href="<%=basePath %>/view/add.jsp" >添加</a>
					</li>
				</ul>
			</div>
		</div>

		<div id="nav">
			<div id="navBox">
				<ul class="navLeft">
					<li class="mainNav first actived" id="default">
						<a href="http://www.shikuaigou.com/">首页</a>
					</li>
					<li class="subNav" id="sfuzhuang">
						<a href="http://www.shikuaigou.com/default/fuzhuang/">服装</a>
					</li>
					<li class="subNav" id="sjujia">
						<a href="http://www.shikuaigou.com/default/jujia/">居家</a>
					</li>
					<li class="subNav" id="sxiebao">
						<a href="http://www.shikuaigou.com/default/xiebao/">鞋包</a>
					</li>
					<li class="subNav" id="smeishi">
						<a href="http://www.shikuaigou.com/default/meishi/">美食</a>
					</li>
					</ul>
			</div>
		</div>

		<div class="mainDown">
			<ul>
				<li class="">
					<div class="commodity-body">
						<div class="image lazy-img">
							<div class="productWrap">
								<a href="http://www.shikuaigou.com/deal/EZBFvi" target="_blank"><img
										src="./assets/T1R0x5FpXcXXXXXXXX_!!0-item_pic.jpg_300x300.jpg"
										data-src="http://img04.taobaocdn.com/bao/uploaded/i4/T1R0x5FpXcXXXXXXXX_!!0-item_pic.jpg_300x300.jpg"
										alt="【T恤】2014夏装 纯色 莱卡棉 贴身男士短袖" class="ST-uLi-loaded"
										style="display: inline;">
								</a>
							</div>

							<h4>
								<i class="downTaoIcon"></i>


								<a href="http://www.shikuaigou.com/deal/EZBFvi" target="_blank"
									title="【T恤】2014夏装 纯色 莱卡棉 贴身男士短袖">【T恤】2014夏装 纯色 莱卡棉 贴身男士短袖</a>
							</h4>

							<p>
								<a
									href="http://www.shikuaigou.com/jump/EZBFvi?sid=0.47504479507915676"
									class="rushBuy" target="_blank">去抢购</a>

								<span class="price marLe">￥9.44</span>
								<span class="originalPrice mainDownT">￥59.00</span>
							</p>
						</div>
					</div>
				</li>
			</ul>
		</div>

		<div class="clearFloat"></div>

		<input id="pageNum" style="display: none" value="1">
		<input id="pageSize" style="display: none" value="48">
		<input id="pageCount" style="display: none" value="358">
		<div class="clearFloat"></div>
		<div class="pagination">
			<span class="disabled">上一页</span><span class="current">1</span><a
				href="http://www.shikuaigou.com/default/all/2">2</a><span
				class="ombit">...</span><a
				href="http://www.shikuaigou.com/default/all/358">358</a><a
				href="http://www.shikuaigou.com/default/all/2">下一页</a><span
				class="enhanced_tip">&nbsp;</span>
		</div>
		<div class="clearFloat"></div>
		<a class="bottomBanner" href="http://www.shikuaigou.com/broadcast/"
			target="_blank"><!-- <img src="./assets/banner20131023.jpg"
				alt="过期不候，特价秒杀，品牌折扣，限时特价，优惠团购-十块购"> --></a>
		<div class="classNav">
			<i class="topBorder"></i>
			<a href="http://www.shikuaigou.com/default/fuzhuang/" class="costume"
				id="fuzhuang"><span>服装</span>
			</a>
			<i class="seperate"></i>
			<a href="http://www.shikuaigou.com/default/jujia/" class="home"
				id="jujia"><span>居家</span>
			</a>
			<i class="seperate"></i>
			<a href="http://www.shikuaigou.com/default/xiebao/" class="shoes"
				id="xiebao"><span>鞋包</span>
			</a>
			<i class="seperate"></i>
			<a href="http://www.shikuaigou.com/default/meishi/" class="food"
				id="meishi"><span>美食</span>
			</a>
			<i class="seperate"></i>
			<a href="http://www.shikuaigou.com/default/shishang/" class="beauty"
				id="shishang"><span>美妆</span>
			</a>
			<i class="seperate"></i>
			<a href="http://www.shikuaigou.com/default/shuma/" class="digital"
				id="shuma"><span>数码</span>
			</a>
			<i class="seperate"></i>
			<a href="http://www.shikuaigou.com/default/qita/" class="creative"
				id="qita"><span>创意</span>
			</a>
		</div>

		<div id="mask" style="display: none;"></div>
		<div class="footerWrap"></div>
		<script src="./assets/wb.js" type="text/javascript" charset="utf-8">
	</script>
	</body>
</html>
