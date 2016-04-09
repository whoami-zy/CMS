<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
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
 				window.document.location.href = "items_viewItemsByAll";
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
				<th>商品名(更新)</th>
				<th>价格</th>
				<th>库存</th>
				<th>货存</th>
				<th>商品详细</th>
				<th>工厂</th>
				<th>添加时间</th>
				<th>所属类别</th>
				<th>图片</th>
			</tr> 		
			<s:iterator value="#request.listByAll.list" id="items">
				<tr align="center">
					<td><s:property value="#items.itemsID"/></td>
					<td><a href="items/updateItems.jsp?id=<s:property value="#items.itemsID"/>"><s:property value="#items.itemsName"/></a></td>
					<td><s:property value="#items.itemsPrice"/></td>
					<td><s:property value="#items.itemsAllNum"/></td>
					<td><s:property value="#items.itemsLeaveNum"/></td>
					<td><s:property value="#items.itemsAbout"/></td>
					<td><s:property value="#items.itemsFactory"/></td>
					<td><s:property value="#items.itemsTime"/></td>
					<td><s:property value="#items.itemsClassKey"/></td>
					<td><s:property value="#items.image"/></td>
					<td style="color: red"><a href="items_deleteItems?key=<s:property value="#items.itemsID"/>">删除</a></td>
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
            <a href="items_viewItemsByAll">首页</a>
            &nbsp;&nbsp;&nbsp;
            <a href="items_viewItemsByAll?page=<s:property value="#request.listByAll.currentPage - 1"/>">上一页</a>
        </s:else>
        
        <s:if test="#request.listByAll.currentPage != #request.listByAll.totalPage">
            <a href="items_viewItemsByAll?page=<s:property value="#request.listByAll.currentPage + 1"/>">下一页</a>
            &nbsp;&nbsp;&nbsp;
            <a href="items_viewItemsByAll?page=<s:property value="#request.listByAll.totalPage"/>">尾页</a>
        </s:if>
        
        <s:else>
            下一页&nbsp;&nbsp;&nbsp;尾页
        </s:else>
    
    </center>
    <br />
    
 		
 </body>
</html>