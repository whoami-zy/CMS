<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">    
    <title>viewById</title>        
  <meta http-equiv="pragma" content="no-cache">
  <meta http-equiv="cache-control" content="no-cache">
  <meta http-equiv="expires" content="0">    
  <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
  <meta http-equiv="description" content="This is my page">
  <link href="css/login.css" rel="stylesheet" type="text/css" />
 </head>
 <body>
 
 <div style="position:fixed;top:100px;left:120px;">
	<a  href="index.jsp" style="margin-top:1px;margin-left:1px;padding-top:1px;padding-left:1px;"><img src="images/back.jpg" border="0"/></a>
</div>
<center>
<div style="padding-top: 100px">
 <h1>按ID号查询！！！</h1> <br /> <br /> <br />
 <h6><a href="admin_adminViewByALL">查看所有</a></h6>
 <br /> <br />
	<form action="admin_adminViewById" method="POST">
		<input type="text" name="adminID">
		<button type="submit">查找</button>
</form>
</div>
</center>
 </body>
</html>