<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
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
	<div style="padding-top: 30px">
		<%
			String id = request.getParameter("key");
		%>
		
			<form action="admin_Update" method="post"
				style="padding-top: 50px; padding-left: 50px">
				用户ID <input type="text" name="adminID" value="<%=id%>" readonly="readonly" /><br />
				<br /> 姓名 <input type="text" name="adminName" /><br />
				<br /> 密码 <input type="text" name="adminPassword" /><br />
				<br /> <input type="submit" value="更新" /><br />
				<br />
			</form>
		</div>
	</center>
</body>
</html>