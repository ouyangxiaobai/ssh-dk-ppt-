<%@ page language="java" import="java.util.*"  contentType="text/html;charset=gb2312"%> 
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML><HEAD><TITLE>会员管理中心</TITLE>
<META http-equiv=Content-Type content="text/html; charset=gb2312">
<link href="<%=basePath %>member/images/css1/css.css" rel="stylesheet" type="text/css"> 
<script type="text/javascript">
function check()
{
	if(document.form1.oldpwd.value=="")
	{
		alert("请输入旧密码！");
		document.form1.oldpwd.focus();
		return false;
	}
	if(document.form1.newpwd.value=="")
	{
		alert("请输入新密码！");
		document.form1.newpwd.focus();
		return false;
	} 
	if(document.form1.repwd.value=="")
	{
		alert("请确认密码！");
		document.form1.repwd.focus();
		return false;
	}
	if(document.form1.repwd.value!=document.form1.newpwd.value)
	{
		alert("对不起，两次输入的密码不相同，请确认密码！");
		document.form1.repwd.focus();
		return false;
	}
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
	
	String member=(String)session.getAttribute("member"); 
	if(member==null){
		response.sendRedirect(path+"index.jsp");
	}
	else{ 
%>
<body>
<form action="<%=basePath %>member.do?method=muppwd" method="post" name="form1" onSubmit="return check()">
<table class="table" cellspacing="1" cellpadding="2" width="99%" align="center" border="0">
  <tbody>
    <tr>
      <th class="bg_tr" align="left" colspan="2" height="25">修改后台登录密码 当前用户：<FONT color=red><%=member %></FONT></th>
    </tr>
    <tr>
      <td class="td_bg" width="45%" height="23" align=right>旧 密 码：</td>
      <td class="td_bg" align=left><input type="password" name="oldpwd" size="20" maxlength=16></td>
    </tr>
    <tr>
      <td class="td_bg" width="45%" height="23" align=right>新 密 码：</td>
      <td class="td_bg" align=left><input type="password" name="newpwd" size="20" maxlength=16></td>
    </tr>
    <tr>
      <td class="td_bg" width="45%" height="23" align=right>确认密码：</td>
      <td class="td_bg" align=left><input type="password" name="repwd" size="20" maxlength=16></td>
    </tr> 
    <tr>
      <td class="td_bg" colspan="2" height="23" align=center>
      <input type="submit" value="确定">&nbsp;&nbsp;<input type="reset" value="重填"></td>
    </tr> 
  </tbody>
</table>
</form>
</body>
<%} %>
