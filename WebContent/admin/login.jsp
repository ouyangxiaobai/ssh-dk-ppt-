<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*,java.util.*,com.util.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"> 
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>管理登陆</title>
<style type="text/css">
<!--
.STYLE1 {
	font-size: 11pt;
	font-weight: bold;
}
-->
</style>
</head>

<script language=Javascript>
	form1.username.focus()	
	function checkform(form)
	{
		var flag=true;
		if(form("username").value==""){alert("请输入用户名!");form("username").focus();return false};
		if(form("password").value==""){alert("请输入口令!");form("password").focus();return false}; 
		form1.submit();
	}
</script>
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
<body style="background-image:url(<%=basePath %>admin/images/admin_login_bg.gif); margin:0 auto; width:500px;">
<br><br><p align=center><font size="+3"><strong>系统管理中心</strong></font></p>
<div style="background-image:url(<%=basePath %>admin/images/admin_login.png); width:500px; height:200px; margin-top:50px;">
  <form name="form1" method="post" action="<%=basePath %>AdminServlet">
    <table width="500" border="0" cellpadding="0" cellspacing="0">
      <tr>
        <td width="250">&nbsp;</td>
        <td colspan="2">&nbsp;</td>
      </tr>
      <tr><input type=hidden name=method value=one />
        <td height="40"><div align="right" class="STYLE1">用户名：</div></td>
        <td height="40" colspan="2"><input type="text" name="username" style="height:25px; width:200px; font-size:15pt; font-weight:bold;" /></td>
      </tr>
      <tr>
        <td height="40"><div align="right" class="STYLE1">密&nbsp; 码：</div></td>
        <td height="40" colspan="2"><input type="password" name="password" style="height:25px; width:200px; font-size:15pt; font-weight:bold;" /></td>
      </tr> 
      <tr>
        <td height="40">&nbsp;</td>
        <td height="40" colspan="2">
        <input type="button" onclick="checkform(form1)" value="" style="width:130px; height:30px; background-image:url(<%=basePath %>admin/images/admin_login_button.png); border:0; background-color: transparent; "/></td>
      </tr>
    </table>
  </form>
</div>
</body>
</html>