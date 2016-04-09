<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
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
 		<div style="padding-top: 100px;" align="center">
 				<h1>查找到的商品类</h1>
 				<hr />
 				<br />
 				<table width="60%" border="1">
 					<tr align="center">
 						<td>ID</td>
 						<td>类名</td>
 						<td>删除</td>
 					</tr>
 					<s:iterator value="#request.listByName" id="itemstype">
 					<tr align="center">
 						<td><s:property value="#itemstype.ItemsClassID"/></td>
 						<td><s:property value="#itemstype.ItemsClassName"/></td>	
 						<td><a href="itemsclass_deleteItemsClass?id=<s:property value="#itemstype.ItemsClassID"/>">删除</a></td>		
 					</tr>
 					</s:iterator>
 				</table>
 		</div>
 </body>
</html>