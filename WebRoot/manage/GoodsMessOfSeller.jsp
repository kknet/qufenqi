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
<link type="text/css" rel="stylesheet"
	href="<%=basePath%>/css/style.css" />
<script type="text/javascript"
	src="<%=basePath%>/scripts/function-manage.js"></script>
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
			<h2>订单管理</h2>
			<div class="manage">
						<table class="list">
							<tr>
								<td>商品ID</td>
								<td>商品名</td>
								<td>品牌</td>
								<td>型号</td>
								<td>尺寸</td>
								<td>颜色</td>
								<td>材料</td>
								<td>库存量</td>	
								<td>商品类型</td>			
							</tr>
							<s:iterator value="l_ofsellergoods" id="l_ofsellergoods" status="status">
								<tr>
									<td align="center"><s:property value="#l_ofsellergoods.goods.goodsId"/></td>
									<td>
										<s:property value="#l_ofsellergoods.goods.goodsName" ></s:property>
									</td>
									<td align="center"><s:property value="#l_ofsellergoods.goods.brand"/></td>
									<td align="center"><s:property value="#l_ofsellergoods.goods.model"/></td>
									<td align="center"><s:property value="#l_ofsellergoods.goods.size"/></td>
									<td align="center"><s:property value="#l_ofsellergoods.goods.color"/></td>
									<td align="center"><s:property value="#l_ofsellergoods.goods.material"/></td>
									<td align="center"><s:property value="#l_ofsellergoods.quantity"/></td>
									<td align="center"><s:property value="#l_ofsellergoods.goods.goodstype.goodsTypeName"/></td>
								</tr>
							</s:iterator>
						</table>
				</div>
				<center style="font-size: 14px">
			        <font size="3">共<font color="red"><s:property value="#request.pageBean.totalPage"/></font>页 </font>&nbsp;&nbsp;
			        <font size="3">共<font color="red"><s:property value="#request.pageBean.allRow"/></font>条记录</font><br><br>
			        
			        <s:if test="#request.pageBean.currentPage == 1">
			           	 首页&nbsp;上一页
			        </s:if>
			        
			        <s:else>
			            <a href="/goods/sellerquerygoods.action">首页</a>
			            &nbsp;
			            <a href="/goods/sellerquerygoods.action?page=<s:property value="#request.pageBean.currentPage - 1"/>">上一页</a>
			        </s:else>
			        	&nbsp;
			        <s:if test="#request.pageBean.currentPage != #request.pageBean.totalPage">
			            <a href="/goods/sellerquerygoods.action?page=<s:property value="#request.pageBean.currentPage + 1"/>">下一页</a>
			            &nbsp;
			            <a href="/goods/sellerquerygoods.action?page=<s:property value="#request.pageBean.totalPage"/>">尾页</a>
			        </s:if>
			        
			        <s:else>
			            	下一页&nbsp;尾页
			        </s:else>
			    
			   </center><br>
		</div>
		<div class="clear"></div>
	</div>
	<div id="footer">Copyright &copy; 2010 北大青鸟 All Rights Reserved.
		京ICP证1000001号</div>
</body>
</html>
