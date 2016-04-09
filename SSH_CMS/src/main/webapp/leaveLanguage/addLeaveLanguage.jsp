<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML >
<html>
  <head>
    <base href="<%=basePath%>">    
    <title>标题</title>        
  <meta http-equiv="pragma" content="no-cache">
  <meta http-equiv="cache-control" content="no-cache">
  <meta http-equiv="expires" content="0">    
  <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
  <meta http-equiv="description" content="This is my page">
  <link href="css/leaveLanguage.css" type="text/css" rel="stylesheet">
 </head>
 <body>
 		<form action="leavelanguage_addLeaveLanguage" method="post">
 		<div class="div1">
 			留言者：<input type="text" id="text1" name="u_id" value="<%=session.getAttribute("sessionId") %>" readonly="readonly"><br />
            <div class="div1">
                <textarea name="leaveLanguageContext" id="info" class="field" cols="30" rows="10" placeholder="骚年，哪有不爽，来喷吧！"></textarea>
            </div>
            <div class="div2">
            <input type="submit" value="提交" class="btn">
            </div>
     </div>
        </form>
 </body>
</html>