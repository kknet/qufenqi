<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<script language="javascript">
	function searchGoods()
	{
		var targetForm = document.forms[0];
		targetForm.action="<%=basePath%>goods/usersearchgoods.action";
	}
</script>

<body>
	<form method="post" action="" >
		商品名<input type="text" name="goodsName"></input>
		<input type=submit value="查询" onClick="searchGoods();" id="querygoods" />
		<br /><br /><br />
			
		<table>
			<tr>
				<td>商品ID</td>
				<td>商品名</td>
				<td>品牌</td>
				<td>型号</td>
				<td>尺寸</td>
				<td>颜色</td>
				<td>材料</td>
				<td>库存量</td>
				<td>商家ID</td>	
				<td>商家名字</td>			
			</tr>
			
			<script language="javascript">
			
				function gotodetails(id)
				{
				//	alert("gotoupdate");
				//	alert("id="+id);

					window.location.href="<%=basePath%>goods/queryOneGoods.action?sellergoodsid="+id;
					
				}
			</script>
			<s:iterator value="l_sellergoods" id="l_sellergoods" status="status">
				<tr>
					<td align="center"><s:property value="#l_sellergoods.goods.goodsId"/></td>
					<td><a  style="color:blue;cursor:pointer;" onclick="gotodetails(<s:property value="#l_sellergoods.id" />);">
						<s:property value="#l_sellergoods.goods.goodsName" ></s:property>
					</a></td>
					<td align="center"><s:property value="#l_sellergoods.goods.brand"/></td>
					<td align="center"><s:property value="#l_sellergoods.goods.model"/></td>
					<td align="center"><s:property value="#l_sellergoods.goods.size"/></td>
					<td align="center"><s:property value="#l_sellergoods.goods.color"/></td>
					<td align="center"><s:property value="#l_sellergoods.goods.material"/></td>
					<td align="center"><s:property value="#l_sellergoods.goods.storeNum"/></td>
					<td align="center"><s:property value="#l_sellergoods.seller.sellerId"/></td>
					<td align="center"><s:property value="#l_sellergoods.seller.sellerName"/></td>
				</tr>
			</s:iterator>
		</table>
		
		<center>
	        <font size="3">共<font color="red"><s:property value="#request.pageBean.totalPage"/></font>页 </font>&nbsp;&nbsp;
	        <font size="3">共<font color="red"><s:property value="#request.pageBean.allRow"/></font>条记录</font><br><br>
	        
	        <s:if test="#request.pageBean.currentPage == 1">
	           	 首页&nbsp;上一页
	        </s:if>
	        
	        <s:else>
	            <a href="usersearchgoods.action">首页</a>
	            &nbsp;
	            <a href="usersearchgoods.action?page=<s:property value="#request.pageBean.currentPage - 1"/>">上一页</a>
	        </s:else>
	        	&nbsp;
	        <s:if test="#request.pageBean.currentPage != #request.pageBean.totalPage">
	            <a href="usersearchgoods.action?page=<s:property value="#request.pageBean.currentPage + 1"/>">下一页</a>
	            &nbsp;
	            <a href="usersearchgoods.action?page=<s:property value="#request.pageBean.totalPage"/>">尾页</a>
	        </s:if>
	        
	        <s:else>
	            	下一页&nbsp;尾页
	        </s:else>
	    
	    </center><br>
		
	</form>
	
	
</body>
</html>