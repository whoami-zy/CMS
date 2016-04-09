<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="com.whoami.po.itemsclass"%>
<%@page import="java.util.*"%>
<%@page import="com.whoami.DAOFactory.DAOFactory"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE HTML>
<html>
<head>
<base href="<%=basePath%>">
<title>标题</title>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
</head>
<body>

	<%!List<itemsclass> all = DAOFactory.getItemsClassDAOInstance().viewAllClass();%>
	<div align="center">
		<h2>查找商品</h2>
		<h6>
			<a href="items_viewItemsByAll">查看所有商品</a>
		</h6>
		</div>
		<br />
		<hr />
		 <div align="center">
		<h4>按商品名或者录入时间段查询商品</h4>
		<br />
		<form action="items_viewItemsByNameOrTime" method="post">
			<input type="text" name="itemsName" placeholder="请输入时间或名字" />
			<input type="submit" value="提交" >
		</form>
	</div>

	<br />
	<hr />
	<br />
	<div align="center">
	<h4>按商品类查找</h4>
	<form action="items_viewItemsByClass">
		请选择商品类别：<select name="itemsClassKey">
			<%
				for (int i = 0; i < all.size(); i++) {
			%>
			<option value="<%=all.get(i).getItemsClassID()%>"><%=all.get(i).getItemsClassName()%></option>
			<%
				}
			%>
		</select> <br /> <input type="submit" value="提交">
	</form>
	</div>
</body>
</html>