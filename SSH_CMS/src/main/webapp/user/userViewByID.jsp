<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.whoami.po.*"%>
<%@page import="java.util.*"%>
<%@page import="com.whoami.DAOFactory.*"%>
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
			<h1>查找到的用户</h1>
			<hr />
			<br />
			<%
				int i =0;
				String key=request.getParameter("u_id");
				List<user> all =null;
				int keys=Integer.parseInt(key);
				all =DAOFactory.getPersonDAOInstance().selectById(keys);
			%>
			<table width="80%" border="1" bordercolor="#8B8878" style="padding-top: 20px">
				<tr>
					<td>id</td>
					<td>姓名</td>
					<td>密码</td>
					<td>QQ</td>
					<td>电话</td>
				</tr>
				<%
				if(all.size() > 0){
					Iterator<user> iter =all.iterator();
					while(iter.hasNext()){
						user u =iter.next();
						i++;
						int id = u.getU_id();
						String name=u.getU_name();
						String password=u.getU_password();
						String qq=u.getU_email();
						String phone=u.getU_phone();
						%>
						<tr>
							<td><%=id%></td>
							<td><a href="user/update.jsp?id=<%=id%>"><%=name%></a></td>
							<td><%=password%></td>
							<td><%=qq%></td>
							<td><%=phone%></td>
							<td><a href="user/delete_do.jsp?id=<%=id%>">删除</a></td>
						</tr>
				<%
					}
				}else{
					response.setHeader("refresh", "3;url='user/viewUserByIdDo.jsp'");
					response.setContentType("text/html;charset=UTF-8");
					response.getWriter().write("没有找到你要查询的人，请重新输入ID号，将在3秒后跳转到查询页面，如果没有，请点<a href='user/viewUserByIdDo.jsp'>主页</a>");
				}
				%>
			</table>
		</center>
</body>
</html>