<%@ page language="java" import="java.util.*"  contentType="text/html;charset=gb2312"%> 
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
<HEAD>
<META http-equiv=Content-Type content="text/html; charset=gb2312">
<LINK href="<%=basePath %>admin/images/admin.css" type="text/css" rel="stylesheet">
</HEAD>
<%String username=(String)session.getAttribute("user"); %>
<BODY>
<TABLE cellSpacing=0 cellPadding=0 width="100%" style="background-color: #0080bb" border=0>
  <TR height=56>
    <TD width=260>
        <%--<IMG height=56 src="<%=basePath %>admin/images/header_left2.jpg" width=260>--%>
            <h2 style="
    /* line-height: 56; */
    margin-bottom: 0px;
    color: white;
    margin-left: 20px;
">大学生银行助学贷款系统</h2>
    </TD>
    <TD style="FONT-WEIGHT: bold; COLOR: #fff; PADDING-TOP: 20px" align="center">当前用户：<%=username %> &nbsp;&nbsp;
	<A style="COLOR: #fff" href="<%=basePath %>admin/system/editpwd.jsp" target="MainFrame">修改口令</A> &nbsp;&nbsp;
	<A style="COLOR: #fff" onclick="if (confirm('确定要退出吗？')) return true; else return false;" href="<%=basePath%>admin.do?method=adminexit" target=_top>退出系统</A> 
    </TD>
    <TD align=right width=268>
        <%--<IMG height=56 src="<%=basePath %>admin/images/header_right.jpg" width=268>--%>
    </TD></TR></TABLE>
<TABLE cellSpacing=0 cellPadding=0 width="100%" border=0><TR bgColor=#1c5db6 height=4><TD></TD></TR></TABLE>
</BODY>
</HTML>