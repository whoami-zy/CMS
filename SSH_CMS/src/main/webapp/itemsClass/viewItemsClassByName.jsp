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
<center>
<div style="padding-top: 100px">
 <h1>请输入类名</h1> <br /> <br /> <br />
 <h6><a href="itemsclass_itemsClassByAll">查看所有类</a></h6>
 <br /> <br />
	<form action="itemsclass_viewItemsClassByName" method="POST">
		<input type="text" name="itemsClassName">
		<button type="submit">查找</button>
</form>
</div>
</center>
 </body>
</html>