<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
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
  <link type="text/css" rel="stylesheet" href="css/style.css" />
<link type="text/css" rel="stylesheet" href="css/style.css" />
<script type="text/javascript" src="js/jquery-1.8.3.min.js"></script>
<script type="text/javascript" src="js/menu.js"></script>
 </head>
<body>
	<div class="top"></div>
<div id="header">
	<div class="logo">商城后台管理系统</div>
	<div class="navigation">
		<ul>
		 	<li>欢迎您！管理员 </li>
			<li><a href="" target="main_view"><%=session.getAttribute("SessionName") %></a></li>
			<li><a href="" target="main_view">修改密码</a></li>
			<li><a href="" target="main_view">设置</a></li>
			<li><a href="user_loginOut" target="">退出</a></li>
			<li><s:fielderror /></li>
		</ul>
	</div>
</div>
<div id="content">
	<div class="left_menu">
				<ul id="nav_dot">
      <li>
          <h4 class="M1"><span></span>系统公告</h4>
          <div class="list-item none">
            <a href='addAdmin.html' target="main_view">系统公告1</a>
            <a href="addAdmin.html" target="main_view">系统公告2</a>
            <a href='' target="main_view">系统公告3</a>
            <a href='' target="main_view">系统公告4</a>
          </div>
        </li>
        <li>
          <h4 class="M2"><span></span>管理员管理</h4>
          <div class="list-item none">
            <a href='adminJsp/addAdmin.jsp' target="main_view">添加管理员</a>
            <a href='adminJsp/viewAdminByIdDo.jsp' target="main_view">查询管理员</a>      
           </div>
        </li>
        <li>
          <h4 class="M3"><span></span>订单信息管理</h4>
          <div class="list-item none">
            <a href='' target="main_view">查看订单</a>
          </div>
        </li>
				<li>
          <h4 class="M4"><span></span>商品信息管理</h4>
          <div class="list-item none">
            <a href='items/addItems.jsp' target="main_view">添加商品</a>
            <a href='items/viewItemsDo.jsp' target="main_view">查看商品</a>
          </div>
        </li>
				<li>
          <h4 class="M5"><span></span>种类管理</h4>
          <div class="list-item none">
            <a href='itemsClass/addItemsClass.jsp' target="main_view">添加种类</a>
            <a href='itemsClass/viewItemsClassByName.jsp' target="main_view">查询种类</a>
          </div>
        </li>
	
				<li>
          <h4  class="M7"><span></span>留言管理</h4>
          <div class="list-item none">
          	<a href='leaveLanguage/addLeaveLanguage.jsp' target="main_view">添加留言</a>
            <a href='leaveLanguage/viewDo.jsp' target="main_view">查看留言</a>
          </div>
        </li>
        
				<li>
          <h4 class="M8"><span></span>用户管理</h4>
          <div class="list-item none">
            <a href='user/addUser.jsp' target="main_view">添加用户</a>
            <a href='user/viewUserByIdDo.jsp' target="main_view">查找用户</a>
          </div>
        </li>
  </ul>
		</div>
		<div class="m-right">
			<div class="right-nav">
					<ul>
							<li><img src="images/home.jpg"></li>
								<li style="margin-left:25px;">您当前的位置：</li>
								<li><a href="#">系统公告</a></li>
								<li>></li>
								<li><a href="#">最新公告</a></li>
						</ul>
			</div>
			<div class="main">
				    <iframe id="iframe_view" name="main_view" src=""></iframe>
			</div>
		</div>
</div>
<div class="bottom"></div>
<div id="footer"><p>Copyright©  2015 版权所有b</p></div>
<script>navList(12);</script>
</body>
</html>