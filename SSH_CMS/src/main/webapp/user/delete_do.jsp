<%@page import="com.whoami.DAOFactory.DAOFactory"%>
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
 	<%
 		int id=Integer.parseInt(request.getParameter("id"));
 		if(DAOFactory.getPersonDAOInstance().delectUser(id)){

 			response.setHeader("refresh", "3;url='user/viewUserByIdDo.jsp'");
 			response.setContentType("text/html;charset=UTF-8");
 			response.getWriter().write("删除成功，将在3秒后跳转到查找，如果没有，请点<a href='user/viewUserByIdDo.jsp'>查找用户</a>");
 		}else{
 			response.setHeader("refresh", "3;url='user/viewUserByIdDo.jsp'");
 			response.setContentType("text/html;charset=UTF-8");
 			response.getWriter().write("删除失败，将在3秒后跳转到查找，如果没有，请点<a href='user/viewUserByIdDo.jsp'>查找用户</a>");
 		}
 	%>
 </body>
</html>