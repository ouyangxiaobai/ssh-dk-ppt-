<%@ page language="java" import="java.util.*"  contentType="text/html;charset=gb2312" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <SCRIPT language=javascript>
//检验表单的合法性
function checklogin() {
	if (document.loginform.username.value.replace(/\s+$|^\s+/g,"").length<=0) {
		alert("\请输入您的用户名！");
		document.loginform.username.focus();
		return false;
	}
	if (document.loginform.password.value.replace(/\s+$|^\s+/g,"").length<=0) {
		alert("\请输入您的密码！");
		document.loginform.password.focus();
		return false;
	} 
	 
}
</SCRIPT>
<style type="text/css">
	TABLE{
		margin-bottom: 110px;
		margin-right: 110px;
	}
</style>
  </head>
  
  <body background="images/back.png">
  <%@ include file="iframe/head.jsp" %>    
<FORM name="loginform" method="post" action="<%=basePath %>member.do?method=mlogin" onSubmit="return checklogin();"> 
  <TABLE align=center height="180">
    <TBODY>
    <tr>
        <td colspan="2"> <h1>大学生银行助学贷款系统</h1></td>
    <TR>
	  <TD width="20%" align="right">用户帐号：</TD>
	  <TD align="left"><input type="text" size="30" name="username"></TD>
	</TR>
	<TR>
	  <TD width="20%" align="right">登录密码：</TD>
	  <TD align="left"><input type="password" size="30" name="password"></TD>
	</TR> 
	 <TR>
	  <TD width="20%" align="right">用户身份：</TD>
	  <TD align="left"><select name="sf"> 
	  <option value="学生">学生</option>
      <option value="系领导">系领导</option> 
      <option value="学院领导">学院领导</option>  
	  <option value="管理员">院长</option>
	  </select></TD>
	</TR> 
	 
    <TR>
      <TD align="left"><INPUT value="登录" type=submit></TD>
      <TD align="center"><INPUT value="注册" type="button" onclick="window.location.href='reg.jsp'">
      <!-- <INPUT value="忘记密码" type="button" onclick="window.location.href='lost.jsp'"> --></TD>
	</TR>
	</TBODY>
  </TABLE>
  </FORM>
<%-- <%@ include file="iframe/foot.jsp"%> --%>
  </body>
</html>
 
  
