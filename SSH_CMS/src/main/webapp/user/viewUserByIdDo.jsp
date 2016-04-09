<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE >
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
	
<div style="padding-top: 100px;text-align: center;">
 <h1>按ID号查询！！！</h1><br /><br />
 <h6><a href="user/ViewByIDAll.jsp">查看所有</a></h6>
 <br /><br />
<form action="user/userViewByID.jsp" method="POST">
	<input type="text" name="u_id" placeholder="输入用户ID">
	<input type="submit" value="查看联系人">
</form>
</div>

 </body>
</html>