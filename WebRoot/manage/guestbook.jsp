<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<base href="<%=basePath%>">
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<title>后台管理 - 易买网</title>
		<link type="text/css" rel="stylesheet" href="<%=basePath%>/css/style.css" />
		<script type="text/javascript" src="<%=basePath%>/scripts/function-manage.js"></script>
	</head>
	<body>
		<div id="header" class="wrap">
			<div id="logo">
				<img src="<%=basePath%>/images/logo.gif" />
			</div>
			<div class="help">
				<a href="<%=basePath%>/index.jsp">返回前台页面</a>
			</div>
			<div class="navbar">
				<ul class="clearfix">
						<li class="current">
							<a href="<%=basePath%>/manage/index.jsp">首页</a>
						</li>
						<li>
							<a href="<%=basePath%>/manage/user.jsp">用户</a>
						</li>
						<li>
							<a href="<%=basePath%>/manage/product.jsp">商品</a>
						</li>
						<li>
							<a href="<%=basePath%>/manage/order.jsp">订单</a>
						</li>
						<li>
							<a href="<%=basePath%>/manage/guestbook.jsp">留言</a>
						</li>
						<li>
							<a href="<%=basePath%>/manage/news.jsp">新闻</a>
						</li>
				</ul>
			</div>
		</div>
		<div id="childNav">
			<div class="welcome wrap">
				<s:if test="#session.role == 1">
					商家${seller.sellerName }您好，欢迎回到趣分期管理后台。
				</s:if>
				<s:else>
					管理员${manager.managName }您好，欢迎回到趣分期管理后台。
				</s:else>
			</div>
		</div>
		<div id="position" class="wrap">
			您现在的位置：<a href="<%=basePath%>/manage/index.jsp">趣分期</a> &gt; 管理后台
		</div>
		<div id="main" class="wrap">
			<div id="menu-mng" class="lefter">
				<div class="box">
					<s:if test="#session.role == 1">
						<dl>
							<dt>个人信息管理</dt>
							<dd>
								<a href="<%=basePath%>findAllUser.action">用户管理</a>
							</dd>
							<dt>商品管理</dt>
							<dd>
								<em><a href="<%=basePath%>/manage/productClass-add.jsp">新增</a>
								</em><a href="<%=basePath%>/goods/findAllGoods.action">分类管理</a>
							</dd>
							<dd>
								<em><a href="<%=basePath%>/manage/product-add.jsp">新增</a>
								</em><a href="<%=basePath%>/goods/findAllGoods.action">商品管理</a>
							</dd>
							<dt>订单管理</dt>
							<dd>
								<a href="<%=basePath%>/manage/order.jsp">订单管理</a>
							</dd>
							<dt>申诉管理</dt>
							<dd>
								<a href="<%=basePath%>/manage/guestbook.jsp">申诉管理</a>
							</dd>
							<dt>新闻管理</dt>
							<dd>
								<em><a href="<%=basePath%>/manage/news-add.jsp">新增</a>
								</em><a href="<%=basePath%>/manage/news.jsp">新闻管理</a>
							</dd>
						</dl>
					</s:if>
					<s:else>
						<dl>
							<dt>用户管理</dt>
							<dd>
								<a href="<%=basePath%>findAllUser.action">用户管理</a>
							</dd>
							<dt>商家管理</dt>
							<dd>
								<a href="<%=basePath%>/findAll.action">商家管理</a>
							</dd>
							<dt>商品信息</dt>
							<dd>
								<a href="<%=basePath%>/goods/findAllGoods.action">分类管理</a>
							</dd>
							<dd>
								<a href="<%=basePath%>/goods/findAllGoods.action">商品管理</a>
							</dd>
							<dt>订单管理</dt>
							<dd>
								<a href="<%=basePath%>/manage/order.jsp">订单管理</a>
							</dd>
							<dt>申诉管理</dt>
							<dd>
								<a href="<%=basePath%>/manage/guestbook.jsp">申诉管理</a>
							</dd>
							<dt>新闻管理</dt>
							<dd>
								<em><a href="<%=basePath%>/manage/news-add.jsp">新增</a>
								</em><a href="<%=basePath%>/manage/news.jsp">新闻管理</a>
							</dd>
						</dl>
					</s:else>
				</div>
			</div>
			<div class="main">
				<h2>留言管理</h2>
				<div class="manage">
					<table class="list">
						<tr>
							<th>ID</th>
							<th>姓名</th>
							<th>留言内容</th>
							<th>状态</th>
							<th>操作</th>
						</tr>
						<tr>
							<td class="first w4 c">1</td>
							<td class="w1 c">张三丰</td>
							<td>高老庄的货发了没？</td>
							<td class="w1 c">已回复</td>
							<td class="w1 c"><a href="<%=basePath%>/manage/guestbook-modify.jsp">回复</a> <a
								href="javascript:Delete(1);">删除</a>
							</td>
						</tr>
						<tr>
							<td class="first w4 c">1</td>
							<td class="w1 c">张三丰</td>
							<td>高老庄的货发了没？</td>
							<td class="w1 c">已回复</td>
							<td class="w1 c"><a href="<%=basePath%>/manage/guestbook-modify.jsp">回复</a> <a
								href="javascript:Delete(1);">删除</a>
							</td>
						</tr>
					</table>
					<div class="pager">
						<ul class="clearfix">
							<li><a href="#">上一页</a>
							</li>
							<li class="current">1</li>
							<li><a href="#">2</a>
							</li>
							<li><a href="#">3</a>
							</li>
							<li><a href="#">4</a>
							</li>
							<li><a href="#">5</a>
							</li>
							<li><a href="#">下一页</a>
							</li>
						</ul>
					</div>
				</div>
			</div>
			<div class="clear"></div>
		</div>
		<div id="footer">Copyright &copy; 2010 北大青鸟 All Rights Reserved.
			京ICP证1000001号</div>
	</body>
</html>
