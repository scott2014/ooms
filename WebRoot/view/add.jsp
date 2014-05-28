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
		<link rel="stylesheet" href="./assets/add.css" type="text/css" media="all">

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
							<a href="http://www.shikuaigou.com/login">登录</a>
						</li>
						<li>
							<a href="http://www.shikuaigou.com/register">免费注册</a>
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
						<a class="genxing" ></a>
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
			<div class="add">
			<table>
				<tbody>
					<tr >
						<td align="right">图片：</td>
						<td align="left">
							<input type="file" name="photo" />
						</td>
						<td align="left">
						    <span></span>
						</td>
					</tr>
					<tr >
						<td align="right">店铺名称：</td>
						<td align="left">
							<select name="medicinal.repositoryId" id="shiji_select" style="height:26px;">
	        					<s:iterator value="myrepos">
	        						<option value='<s:property value="id"/>'>
	        							<s:property value="repoName"/>
	        						</option>
	        					</s:iterator>
	        				</select>
	        			</td>
	        			<td align="left">
						    <span></span>
						</td>
					</tr>
					<tr >
						<td align="right">快餐名称：</td>
						<td align="left">
							<input type="text" name="medicinal.no"/>
	        			</td>
	        			<td align="left">
						    <span></span>
						</td>
					</tr>
					<tr >
						<td align="right"> 价格：</td>
						<td align="left">
							 <input type="text" name="medicinal.formula"/>
	        			</td>
	        			<td align="left">
						    <span></span>
						</td>
					</tr>
					
					<tr >
						<td align="right"> 送餐费用：</td>
						<td align="left">
							 <input type="text" name="medicinal.name"/>
	        			</td>
	        			<td align="left">
						    <span></span>
						</td>
					</tr>
					
					<tr >
						<td align="right"> 描述：</td>
						<td align="left">
							  <input type="text" name="medicinal.cas"/>
	        			</td>
	        			<td align="left">
						    <span></span>
						</td>
					</tr>
					
					
					<tr >
						<td align="center" colspan="3">
							<input type="button" value="提交"  id="tijiao" class="btn"/> 
							<input type="reset" value="重置"  class="btn"/>
	        			</td>
					</tr>
				</tbody>
		</table>
			</div>
		</div>

		<div class="clearFloat"></div>

		<input id="pageNum" style="display: none" value="1">
		<input id="pageSize" style="display: none" value="48">
		<input id="pageCount" style="display: none" value="358">
		<div class="clearFloat"></div>
	    <div class="clearFloat"></div>
		<a class="bottomBanner" href="http://www.shikuaigou.com/broadcast/"
			target="_blank"></a>
			<div id="mask" style="display: none;"></div>
		<script src="./assets/wb.js" type="text/javascript" charset="utf-8">
	</script>
	</body>
</html>
