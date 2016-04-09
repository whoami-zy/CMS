<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
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
<script type="text/javascript">
    
        function validate()
        {
            var page = document.getElementsByName("page")[0].value;
                
            if(page > <s:property value="#request.listByAll.totalPage"/>)
            {
                alert("你输入的页数大于最大页数，页面将跳转到首页！");
                
                window.document.location.href = "itemsclass_itemsClassByAll";
                
                return false;
            }
            
            return true;
        }
    
    </script>
</head>
<body>
	<table border="1" align="center"  width="50%">
    
        <tr>
            <th>ID</th>
            <th>商品类名</th>
        </tr>
    
    
    <s:iterator value="#request.listByAll.list" id="itemstype">
    
        <tr align="center">
            <td><s:property value="#itemstype.itemsClassID"/></td>
          	<td><s:property value="#itemstype.itemsClassName"/></td>
            <td><a href="itemsclass_deleteItemsClass?id=<s:property value="#itemstype.itemsClassID"/>">删除</a></td>        
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
            <a href="itemsclass_itemsClassByAll">首页</a>
            &nbsp;&nbsp;&nbsp;
            <a href="itemsclass_itemsClassByAll?page=<s:property value="#request.listByAll.currentPage - 1"/>">上一页</a>
        </s:else>
        
        <s:if test="#request.listByAll.currentPage != #request.listByAll.totalPage">
            <a href="itemsclass_itemsClassByAll?page=<s:property value="#request.listByAll.currentPage + 1"/>">下一页</a>
            &nbsp;&nbsp;&nbsp;
            <a href="itemsclass_itemsClassByAll?page=<s:property value="#request.listByAll.totalPage"/>">尾页</a>
        </s:if>
        
        <s:else>
            下一页&nbsp;&nbsp;&nbsp;尾页
        </s:else>
    
    </center><br />
    
    <center>
        
        <form action="itemsclass_itemsClassByAll" onsubmit="return validate();">
            <font size="4">跳转至</font>
            <input type="text" size="2" name="page">页
            <input type="submit" value="跳转">
        </form>
        
    </center>
</body>
</html>