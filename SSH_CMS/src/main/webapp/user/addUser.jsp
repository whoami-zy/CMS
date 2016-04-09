<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
<script type="text/javascript">
function checkPassword(){
	var getpass1=document.getElementById("passwd").value;
	var getpass2=document.getElementById("passwd2").value;
	if(getpass1==getpass2){
		
	}else{
		alert('输入的两次密码不同');  
		}
	
}
</script>
</head>
<body> 
<div style="position:fixed;top:80px;left:100px;">
	<a  href="index.jsp" style="margin-top:1px;margin-left:1px;padding-top:1px;padding-left:1px;"><img src="images/back.jpg" border="0"/></a>
</div>
<div class="page-container">
            <h1>添加用户</h1>
            <form action="user_userRegister2" method="post">
                <input type="text" name="u_name" class="username"  placeholder="请输入姓名" />
                <input type="password" name="u_password" id="passwd"  class="password" placeholder="请输入密码" />
                <input type="password" name="" id="passwd2"  class="password" placeholder="请再次输入密码" onblur="checkPassword()"  />
               <input type="text" name="u_email" class="username" placeholder="请输入QQ"  />
               <input type="text" name="u_phone" class="username" placeholder="请输入Phone" />
                <button type="submit">添加</button>
                <div class="error"><span>+</span></div>
            </form>
            </div>
</body>
</html>