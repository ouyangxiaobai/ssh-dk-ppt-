<%@ page language="java" import="java.util.*"  contentType="text/html;charset=gb2312" %>
<%@ include file="iframe/head.jsp" %>   
<SCRIPT language=javascript>
//检验表单的合法性
function checklogin() {
	if (document.loginform.username.value.replace(/\s+$|^\s+/g,"").length<=0) {
		alert("\请输入您的用户名！");
		document.loginform.username.focus();
		return false;
	}
	if (document.loginform.email.value.replace(/\s+$|^\s+/g,"").length<=0) {
		alert("\请输入您的注册邮箱！");
		document.loginform.email.focus();
		return false;
	} 
}
</SCRIPT>

  <FORM name="loginform" method="post" action="<%=basePath %>member.do?method=lost" onSubmit="return checklogin();"> 
  <TABLE align=center height="180">
    <TBODY>
    <TR>
	  <TD width="20%" align="right">用户帐号：</TD>
	  <TD align="left"><input type="text" size="30"name="username"></TD>
	</TR>
	<TR>
	  <TD width="20%" align="right">注册邮箱：</TD>
	  <TD align="left"><input type="text" size="30"name="email"></TD>
	</TR> 
    <TR>
      <TD align="center" colspan="2"><INPUT value="提交" type=submit> </TD>
	</TR>
	</TBODY>
  </TABLE>
  </FORM>
<%@ include file="iframe/foot.jsp"%>
