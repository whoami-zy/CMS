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
   <script type="text/javascript">
 	function validate(){
 			var page =document.getElementByName("page")[0].value;
 			if(page > <s:property value="#request.listByAll.totalPage"/>){
 				alert("你输入的页数大于最大页数，页面将跳转到首页！");
 				window.document.location.href = "leavelanguage_<%=session.getAttribute("method")%>";
 				return false;
 			}
 			return true;
 	}
 </script>
 </head>
 <body>
 		<table border="1" align="center" width="80%">
			<tr>
				<th>ID</th>
				<th>USER-ID</th>
				<th>留言内容</th>
				<th>留言时间</th>
				<th>删除</th>
			</tr> 		
			<s:iterator value="#request.listByAll.list" id="llanguage">
				<tr align="center">
					<td><s:property value="#llanguage.leaveLanguageID"/></td>
					<td><s:property value="#llanguage.u_id"/></td>
					<td><s:property value="#llanguage.leaveLanguageContext"/></td>
					<td><s:property value="#llanguage.LeaveTime"/></td>
					<td style="color: red"><a href="leavelanguage_deleteLeaveLanguage?key=<s:property value="#llanguage.leaveLanguageID"/>">删除</a></td>
				</tr>
			</s:iterator>
 		</table>
 		<center>
 			<font size="5">共<font color="red"><s:property value="#request.listByAll.totalPage"/></font>页 </font>&nbsp;&nbsp;
        <font size="5">共<font color="red"><s:property value="#request.listByAll.allRows"/></font>条记录</font><br /><br />
        
        <s:if test="#request.listByAll.currentPage == 1">
            首页&nbsp;&nbsp;&nbsp;上一页
        </s:if>
        
        <s:else>
            <a href="leavelanguage_<%=session.getAttribute("method")%>">首页</a>
            &nbsp;&nbsp;&nbsp;
            <a href="leavelanguage_<%=session.getAttribute("method")%>?page=<s:property value="#request.listByAll.currentPage - 1"/>">上一页</a>
        </s:else>
        
        <s:if test="#request.listByAll.currentPage != #request.listByAll.totalPage">
            <a href="leavelanguage_<%=session.getAttribute("method")%>?page=<s:property value="#request.listByAll.currentPage + 1"/>">下一页</a>
            &nbsp;&nbsp;&nbsp;
            <a href="leavelanguage_<%=session.getAttribute("method")%>?page=<s:property value="#request.listByAll.totalPage"/>">尾页</a>
        </s:if>
        
        <s:else>
            下一页&nbsp;&nbsp;&nbsp;尾页
        </s:else>
    
    </center>
    <br />
    
 </body>
</html>