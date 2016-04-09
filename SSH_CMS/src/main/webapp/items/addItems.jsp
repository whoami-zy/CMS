<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.whoami.po.itemsclass" %>
<%@page import="java.util.*" %>
<%@page import="com.whoami.DAOFactory.DAOFactory" %>
<%  
String path = request.getContextPath();  
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";  
%>  
<!DOCTYPE html>
<html>
<head>
<base href="<%=basePath%>">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">    
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--  
 <link href="css/login.css" rel="stylesheet" type="text/css" />
 -->
<title>Insert title here</title>

</head>
<body> 

	<div class="page-container" style="text-align: center;padding-top:10px;margin-top: 20px;" >
 	
            <h1>添加商品</h1>
            <%! 
    		List<itemsclass> all =DAOFactory.getItemsClassDAOInstance().viewAllClass(); 
            %>
            <form action="items_addItems" method="post"  enctype="multipart/form-data">
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
                <button type="submit">添加商品</button><br />
                
            </form>
          
            </div>
</body>
</html>