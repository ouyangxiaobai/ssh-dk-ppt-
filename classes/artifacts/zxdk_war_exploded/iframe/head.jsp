<%@ page language="java" import="java.util.*"  contentType="text/html;charset=gb2312" %> 
<jsp:useBean id="cb" scope="page" class="com.bean.ComBean"/> 
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/"; 
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3c.org/TR/1999/REC-html401-19991224/loose.dtd"> 
<HTML xmlns="http://www.w3.org/1999/xhtml">
<HEAD>
<TITLE> </TITLE>
<META http-equiv=content-type content="text/html; charset=gb2312">
<LINK href="<%=basePath %>images/css.css" type=text/css rel=stylesheet>
<META content="" name=author>
<META content=all name=robots>
<META content=all name=googleot>
<META content="MSHTML 6.00.2900.5945" name=GENERATOR>
</HEAD>
<STYLE type=text/css>.daohaolan {
	DISPLAY: block; FONT-SIZE: 12px; COLOR: #ffffff; FONT-FAMILY: "宋体"; TEXT-DECORATION: none
}
.daohaolan A {
	DISPLAY: block; FONT-SIZE: 12px; COLOR: #ffffff
}
.daohaolan A:link {
	FONT-SIZE: 12px; TEXT-DECORATION: none
}
.daohaolan A:visited {
	FONT-SIZE: 12px; COLOR: #ffffff; TEXT-DECORATION: none
}
.daohaolan A:hover {
	FONT-SIZE: 14px; COLOR: #ffff99; TEXT-DECORATION: underline
}
.daohaolan A:active {
	FONT-SIZE: 12px; TEXT-DECORATION: none
}
</STYLE>
<BODY topMargin=0>
<TABLE height=70 cellSpacing=0 cellPadding=0 width=900 align=center border=0>
  <TBODY>
  <TR>
    <%-- <TD align=center width=900><IMG height=150 src="<%=basePath %>images/head.jpg" width=900></TD> --%>
  </TR>
  </TBODY>
</TABLE>
 
 

<%
String message = (String)request.getAttribute("message");
	if(message == null){
		message = "";
	}
	if (!message.trim().equals("")){
		out.println("<script language='javascript'>");
		out.println("alert('"+message+"');");
		out.println("</script>");
	}
	request.removeAttribute("message");
%>