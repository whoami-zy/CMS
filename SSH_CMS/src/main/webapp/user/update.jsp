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
    <title>标题</title>        
  <meta http-equiv="pragma" content="no-cache">
  <meta http-equiv="cache-control" content="no-cache">
  <meta http-equiv="expires" content="0">    
  <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
  <meta http-equiv="description" content="This is my page">
 </head>
 <body>
 <center>
 			<%
 			String id=request.getParameter("id");
 			%>
 			<form action="user_updateUser" method="post" style="padding-top: 50px;padding-left: 50px">
 				用户ID <input type="text" name="u_id" value=<%=id%> readonly="readonly"/><br /><br />
 				姓名     <input type="text" name="u_name"/><br /><br />
 				密码     <input type="text" name="u_password"/><br /><br />
 				email <input type="text" name="u_email"/><br /><br />
 				电话     <input type="text" name="u_phone"/><br /><br />
 				<input type="submit" value="提交"/><br /><br />
 			</form>
 			</center>
 </body>
</html>