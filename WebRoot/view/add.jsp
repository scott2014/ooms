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

		<script type="text/javascript" src="<%=basePath %>/view/assets/jquery-1.8.3.min.js"></script>
		<script type="text/javascript" src="<%=basePath %>/view/assets/base.js"></script>
		<script type="text/javascript" src="<%=basePath %>/view/assets/add.js"></script>

	</head>

	<body youdao="bind">
		<iframe id="sina_anywhere_iframe" style="display: none;"></iframe>
		
		<!-- 隐藏div，用于select框的添加替换 -->
		<div style=“display:none;”>
			<div id="shop_select_box" style="display: none;">
				<select name="meal.shopId" id="shop_select" style="height:26px;">
      					<option value="-1">请选择</option>
      					<s:iterator value="myrepos">
      						<option value='<s:property value="id"/>'>
      							<s:property value="repoName"/>
      						</option>
      					</s:iterator>
      					<option value="-2">添加</option>
      				</select>
	        	<span id="shop_tip">*可以选择添加新的店铺名称</span>
			</div>
			
			<div id="category_select_box"  style="display: none;">
				<select name="meal.categoryId" id="category_select" style="height:26px;">
  					<option value="-1">请选择</option>
  					<s:iterator value="myrepos">
  						<option value='<s:property value="id"/>'>
  							<s:property value="repoName"/>
  						</option>
  					</s:iterator>
  				    <option value="-2">添加</option>
  				</select>
	        	<span id="category_tip">*可以选择添加新的菜系</span>
			</div>
		</div>
		
		<div id="topArea">
			<div class="topAreaContainer">
				<div class="topLeft">
					<ul>
						<li>
							用户：Scott Smith
						
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
			<form action="<%=basePath %>/meal!add" method="post" id="form" enctype="multipart/form-data">
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
							<select name="meal.shopId" id="shop_select" style="height:26px;">
	        					<option value="-1">请选择</option>
	        					<s:iterator value="myrepos">
	        						<option value='<s:property value="id"/>'>
	        							<s:property value="repoName"/>
	        						</option>
	        					</s:iterator>
	        					<option value="-2">添加</option>
	        				</select>
	        				<span id="shop_tip">*可以选择添加新的店铺名称</span>
	        			</td>
	        			<td align="left">
						    <span></span>
						</td>
					</tr>
					<tr >
						<td align="right">快餐名称：</td>
						<td align="left">
							<input type="text" name="meal.name"/>
	        			</td>
	        			<td align="left">
						    <span id="name_tip"></span>
						</td>
					</tr>
					<tr >
						<td align="right">菜系：</td>
						<td align="left">
							<select name="meal.categoryId" id="category_select" style="height:26px;">
	        					<option value="-1">请选择</option>
	        					<s:iterator value="myrepos">
	        						<option value='<s:property value="id"/>'>
	        							<s:property value="repoName"/>
	        						</option>
	        					</s:iterator>
	        				    <option value="-2">添加</option>
	        				</select>
	        				<span id="category_tip">*可以选择添加新的菜系</span>
	        			</td>
	        			<td align="left">
						    <span></span>
						</td>
					</tr>
					<tr >
						<td align="right"> 价格：</td>
						<td align="left">
							 <input type="text" name="meal.price"/>
	        			</td>
	        			<td align="left">
						    <span id="price_tip"></span>
						</td>
					</tr>
					
					<tr >
						<td align="right"> 送餐费用：</td>
						<td align="left">
							 <input type="text" name="meal.roomCosts"/>
	        			</td>
	        			<td align="left">
						    <span id="roomCosts_tip"></span>
						</td>
					</tr>
					
					<tr >
						<td align="right"> 描述：</td>
						<td align="left">
							  <input type="text" name="meal.description"/>
	        			</td>
	        			<td align="left">
						    <span id="desc_tip"></span>
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
		</form>
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
