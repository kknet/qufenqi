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
				<div class="search">
					<form method="get">
						订单号：<input type="text" class="text" name="orderId" /> 订货人：<input
							type="text" class="text" name="userName" /> <label
							class="ui-blue"><input type="submit" name="submit"
							value="查询" /> </label>
					</form>
				</div>
				<div class="spacer"></div>
					
					<s:if test="#request.pageBean == null || #request.pageBean.size() == 0">
						<table>
							<tr>
								<td></td>
							</tr>
						</table>
						
						<table border="1" cellspacing="0" cellpadding="0" width="100%" height="">
							<tr>
								<td style="color: red ; font-weight: bolder;"><center>没有商品</center></td>
							</tr>
						</table>
					</s:if>
					<s:else>
						<table class="list">
							<tr>
					  			<td>订单id</td>
					  			<td>商品名</td>
								<td>运费</td>
								<td>总价</td>
								<td>订货人</td>
								<td>收货人</td>
								<td>状态</td>
								<td>分期</td>
								<td>还款信息</td>
								<td>物流</td>
							</tr>
							<s:iterator value="#request.pageBean.list" status="status">
								<tr>
									<td>${orderId }</td>
									<td><a href="<%=basePath %>/manage/goodsOfMess.jsp">${goods.brand }</a></td>
									<td>${carriage }</td>
									<td>${orderAmount }</td>
									<td><a href="">${user.userName }</a></td>
									<td><a href="<%=basePath %>/manage/devilery.jsp">收获详情</a></td>
									<td>${orderStatus }</td>
									<td><a href="<%=basePath %>/manage/period.jsp">分期详情</a></td>
									<td><a href="<%=basePath %>/manage/repament.jsp">还款详情</a></td>
									<td><a href="<%=basePath %>/manage/logistics.jsp">物流详情</a></td>
								</tr>										
							</s:iterator>
						</table>
					</s:else>
				
				<!-- 
				<table class="list">
					<tr>
						<th>ID</th>
						<th>姓名</th>
						<th>发货地址</th>
						<th>状态</th>
						<th>操作</th>
					</tr>
					<tr>
						<td class="first w4 c">1</td>
						<td class="w1 c">张三丰</td>
						<td>高老庄</td>
						<td class="w1 c">发货</td>
						<td class="w1 c"><a href="<%=basePath%>/manage/order-modify.jsp">修改</a> <a
							href="javascript:Delete(1);">删除</a></td>
					</tr>
					<tr>
						<td class="first w4 c">1</td>
						<td class="w1 c">张三丰</td>
						<td>花果山</td>
						<td class="w1 c">审核通过</td>
						<td class="w1 c"><a href="<%=basePath%>/manage/order-modify.jsp">修改</a> <a
							href="javascript:Delete(1);">删除</a></td>
					</tr>
				</table>
				 -->
				
			</div>
			
			<center style="font-size: 14px">
			        <font size="3">共<font color="red"><s:property value="#request.pageBean.totalPage"/></font>页 </font>&nbsp;&nbsp;
			        <font size="3">共<font color="red"><s:property value="#request.pageBean.allRow"/></font>条记录</font><br><br>
			        
			        <s:if test="#request.pageBean.currentPage == 1">
			           	 首页&nbsp;上一页
			        </s:if>
			        
			        <s:else>
			            <a href="<%=basePath%>/queryOrderBySelleName.action">首页</a>
			            &nbsp;
			            <a href="<%=basePath%>/queryOrderBySelleName.action?page=<s:property value="#request.pageBean.currentPage - 1"/>">上一页</a>
			        </s:else>
			        	&nbsp;
			        <s:if test="#request.pageBean.currentPage != #request.pageBean.totalPage">
			            <a href="<%=basePath%>/queryOrderBySelleName.action?page=<s:property value="#request.pageBean.currentPage + 1"/>">下一页</a>
			            &nbsp;
			            <a href="<%=basePath%>/queryOrderBySelleName.action?page=<s:property value="#request.pageBean.totalPage"/>">尾页</a>
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
