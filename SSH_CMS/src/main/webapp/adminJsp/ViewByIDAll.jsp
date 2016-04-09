<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="com.whoami.po.*"%>
<%@page import="java.util.*"%>
<%@page import="com.whoami.DAOFactory.*"%>
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
<body>
<center>
	<h1>查询所有用户</h1>
	<br />
	<hr />
		 <%   
            int pagesize = 5;//每页显示记录数   
            int liststep = 10;//最多显示分页页数   
            int pages = 1;//默认显示第一页   
            if (request.getParameter("pages") != null) {   
                pages = Integer.parseInt(request.getParameter("pages"));//分页页码变量   
            }   
            int count = DAOFactory.getPersonDAOInstance().getmaxpagecount();//假设取出记录总数   
            int pagescount = (int) Math.ceil((double) count / pagesize);//求总页数，ceil（num）取整不小于num   
            if (pagescount < pages) {   
                pages = pagescount;//如果分页变量大总页数，则将分页变量设计为总页数   
            }   
            if (pages < 1) {   
                pages = 1;//如果分页变量小于１,则将分页变量设为１   
            }   
            int listbegin = (pages - (int) Math.ceil((double) liststep / 2));//从第几页开始显示分页信息   
            if (listbegin < 1) { //当前页-(总显示的页列表数/2)   
                listbegin = 1;   
            }   
            int listend = pages + liststep / 2;//分页信息显示到第几页//当前页+(总显示的页列表数/2)   
            if (listend > pagescount) {    
                listend = pagescount + 1;   
            }   
        %>   
        <table align="center" width="80%" border="1">   
           <tr>
        <td>id</td>
        <td>姓名(更改)</td>
        <td>密码</td>
        <td>QQ</td>
        <td>电话</td>
    </tr>
            <%   
            int k = 0 ;
    		List<user> all =DAOFactory.getPersonDAOInstance().selectByAll(pages);
               Iterator<user> iter = all.iterator();
            while(iter.hasNext())
            {
                user u = (user)iter.next() ;
                k++ ;
                int id = u.getU_id();
                String name = u.getU_name();
                String password = u.getU_password() ;
                String qq = u.getU_email();
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
            %>   
        </table>   
        <table align="center">   
            <tr>   
                <%   
                    //<显示分页信息   
                    //<显示上一页   
                    if (pages > 1) {   
                        out.println("<td><a href=user/ViewByIDAll.jsp?pages=" + (pages - 1)   
                                + ">上一页</a></td>");   
                    }//>显示上一页   
                    //<显示分页码   
                    for (int i = listbegin; i < listend; i++) {   
                        if (i != pages) {//如果i不等于当前页   
                            out.println("<td><a href=user/ViewByIDAll.jsp?pages=" + i + ">[" + i   
                                    + "]</a></td>");   
                        } else {   
                            out.println("<td>[" + i + "]</td>");   
                        }   
                    }//显示分页码>   
                    //<显示下一页   
                    if (pages != pagescount) {   
                        out.println("<td><a href=user/ViewByIDAll.jsp?pages=" + (pages + 1)   
                                + ">下一页</a></td>");   
                    }//>显示下一页   
                    //>显示分页信息   
                %>   
            </tr>   
        </table> 
        </center>  
    </body>   
</html>  