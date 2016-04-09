<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%  
String path = request.getContextPath();  
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";  
%>  
<!DOCTYPE html >
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

</head>
<body> 
<div class="page-container">
            <h1>添加商品类别</h1>
            <form action="itemsclass_addItemsClass" method="post">
                <input type="text" name="itemsClassName"   placeholder="请输入类名" />
                <button type="submit">添加商品类</button>
                <div class="error"><span>+</span></div>
            </form>
            </div>
</body>
</html>