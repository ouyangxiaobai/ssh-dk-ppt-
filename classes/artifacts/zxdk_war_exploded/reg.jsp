<%@ page language="java" import="java.util.*" contentType="text/html;charset=gb2312" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
  <SCRIPT language=javascript>
//检验表单的合法性
function checkreg() {
	if (document.regform.username.value.replace(/\s+$|^\s+/g,"").length<=0) {
		alert("\请输入您的学号！");
		document.regform.username.focus();
		return false;
	}
	if (document.regform.password.value.replace(/\s+$|^\s+/g,"").length<=0) {
		alert("\请输入您的密码！");
		document.regform.password.focus();
		return false;
	} 
	if (document.regform.realname.value.replace(/\s+$|^\s+/g,"").length<=0) {
		alert("\请输入用户姓名！");
		document.regform.realname.focus();
		return false;
	} 
	 if (document.regform.sex.value.replace(/\s+$|^\s+/g,"").length<=0) {
		alert("\请输入班级！");
		document.regform.sex.focus();
		return false;
	} 
	if (document.regform.age.value.replace(/\s+$|^\s+/g,"").length<=0) {
		alert("\请输入联系电话！");
		document.regform.age.focus();
		return false;
	} 
	 
	if (document.regform.email.value.replace(/\s+$|^\s+/g,"").length<=0) {
		alert("\请输入您的邮箱！");
		document.regform.email.focus();
		return false;
	} 
	if(!/(\S)+[@]{1}(\S)+[.]{1}(\w)+/.test(document.regform.email.value)) 
    {
        alert("请输入格式正确的 e-mail 地址！");
        document.regform.email.focus();
        return false;         
    }
}
</SCRIPT>
  </head>
  <body background="images/regBack4.jpg">
  <%@ include file="iframe/head.jsp" %>  
   <FORM name="regform" method="post" action="<%=basePath%>member.do?method=mreg" onSubmit="return checkreg();"> 
  <TABLE align=center>
    <TBODY>
    <tr><td colspan="2"><img src="images/head.jpg" alt="不见了"></td>
    <TR>
	  <TD width="20%" align="right">学生学号：</TD>
	  <TD align="left"><input type="text" size="30" name="username"></TD>
	</TR>
	<TR>
	  <TD width="20%" align="right">登录密码：</TD>
	  <TD align="left"><input type="password" size="30" name="password"></TD>
	</TR>
	<TR>
	  <TD width="20%" align="right">学生姓名：</TD>
	  <TD align="left"><input type="text" size="30" name="realname"></TD>
	</TR>
	<TR>
	  <TD width="20%" align="right">学生班级：</TD>
	  <TD align="left"><input type="text" size="30" name="sex"></TD>
	</TR>
	<TR>
	  <TD width="20%" align="right">联系电话：</TD>
	  <TD align="left"><input type="text" size="30" name="age"></TD>
	</TR>
	<TR>
	  <TD width="20%" align="right">学生性别：</TD>
	  <TD align="left"><select name=address> 
        <option value="男">男</option>
        <option value="女">女</option> 
        </select></TD>
	</TR>
	<TR>
	  <TD width="20%" align="right">学生邮箱：</TD>
	  <TD align="left"><input type="text" size="30" name="email"></TD>
	</TR>
    <TR>
      <TD align="center" colspan="2"><INPUT value="立即注册" type=submit>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<INPUT value="登录" type="button" onclick="window.location.href='login.jsp'"></TD>
	</TR>
	</TBODY>
  </TABLE>
  </FORM>
<%@ include file="iframe/foot.jsp"%>
  </body>
</html>




 