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
<base href="<%=basePath%>">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">    
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<title>Insert title here</title>
</head>
<body>
<center>
			<h1>查找到的管理员</h1>
			<hr />
			<br />
		
			<table width="80%" border="1" bordercolor="#8B8878" style="padding-top: 20px">
				<tr  align="center">
					<td>ID号</td>
					<td>管理员姓名</td>
					<td>管理员密码</td>
					<td>删除</td>
				</tr>
				
				<s:iterator value="#request.list" id="ad" >
 			 <tr align="center">
 					 <td><s:property value="#ad.getAdminID()"/></td>
 					 <td><s:property value="#ad.getAdminName()"/></td>
  					<td><s:property value="#ad.getAdminPassword()"/></td>
  					<td><a href="admin_Delete?id=<s:property value="#person.adminID"/>">删除</a></td>        
  			</tr>
 			 </s:iterator> 
			</table>
		</center>
</body>
</html>
