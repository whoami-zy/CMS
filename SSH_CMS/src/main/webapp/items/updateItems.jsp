<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="com.whoami.po.itemsclass" %>
<%@page import="java.util.*" %>
<%@page import="com.whoami.DAOFactory.DAOFactory" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
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
  			<%
    		List<itemsclass> all =DAOFactory.getItemsClassDAOInstance().viewAllClass(); 
    		String id=request.getParameter("id");
            %>
 		<div align="center">
 		<h3>更改商品信息</h3>
 	 <form action="items_updateItems" method="post"  enctype="multipart/form-data">
 	 			<input type="text" name="itemsID" value=<%=id%> readonly="readonly"/><br /><br />
                <input type="text" name="itemsName"   placeholder="请输入商品名" /><br /><br />
                <input type="text" name="itemsPrice"   placeholder="单价" /><br /><br />
                <input type="text" name="itemsAllNum"   placeholder="库存" /><br /><br />
                <input type="text" name="itemsLeaveNum"   placeholder="剩余库存" /><br /><br />
                <input type="text" name="itemsFactory"   placeholder="厂商" /><br /><br />
                <input type="text" name="itemsAbout"   placeholder="说明" /><br /><br />
                
             请选择商品类别： <select name="itemsClassKey">
            	<%
						for(int i=0; i<all.size();i++){					           	
            	%>
            	<option value="<%=all.get(i).getItemsClassID()%>"><%=all.get(i).getItemsClassName() %></option>
            	<%
						} 
            	%>
            </select>
                <br /><br />
                商品图片：<input type="file" name="file"/><br /><br />
                <button type="submit">更新商品</button><br />
                
            </form>     
            </div>
 </body>
</html>