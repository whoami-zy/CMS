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
	<div align="center">
		<h2>查看留言</h2>
		<h6>
			<a href="leavelanguage_viewByAll">查看所有留言</a>
		</h6>
		</div>
		<br />
		<hr />
		 <div align="center">
		<h4>按时间或名字</h4>
		<br />
		<form action="leavelanguage_viewByNameOrLeaveTime" method="post">
			<input type="text" name="leaveLanguageContext" placeholder="请输入时间或名字" />
			<input type="submit" value="提交" >
		</form>
	</div>

	<br />
	<hr />
	<br />
</body>
</html>