<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<%  
String path = request.getContextPath();  
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";  
%>  
<!DOCTYPE html ">
<html>
<head>
<base href="<%=basePath%>">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">    
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
 <link href="css/login.css" rel="stylesheet" type="text/css" />
<title>Insert title here</title>
<style type="text/css">
#error{
	color: #FBFDE6;
	padding-top: 15px;
}
</style>
</head>
<body> 
<div class="page-container">
            <h1>管理员登陆入口</h1>
            <form action="admin_adminLogin" method="post">
                <input type="text" name="adminName"  placeholder="请输入姓名" />
                <input type="password" name="adminPassword"  placeholder="请输入密码" />
               
                <button type="submit">登陆</button>
                <div class="error"><span>+</span></div>
                 <div id="error">
					<s:fielderror />
				</div>
            </form>
            </div>
</body>
</html>