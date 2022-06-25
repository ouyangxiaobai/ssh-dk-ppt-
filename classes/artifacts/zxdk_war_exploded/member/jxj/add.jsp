<%@ page language="java" import="java.util.*"  contentType="text/html;charset=gb2312"%>  
<jsp:useBean id="cb" scope="page" class="com.bean.ComBean" />
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
String method=request.getParameter("method");
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML><HEAD><TITLE>后台操作区</TITLE>
<META http-equiv=Content-Type content="text/html; charset=gb2312">
<link href="<%=basePath %>admin/images/style.css" rel="stylesheet" type="text/css"> 
<style type="text/css">
<!--
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
	font-family: "宋体";
	font-size: 12px;
	color: #333333;
	background-color: #eef9ff;
}
-->
</style>
</head>  
<script type="text/javascript">
function check()
{//String xm="";String bj=""; String pic="";String xh="";String xb="";String nl="";String mz="";String zz="";String lx="";
	//String mc="";String ysc=""; String sl="";String bz="";  
	if(document.form1.zt.value==""||document.form1.dj.value==""||document.form1.ly.value==""||document.form1.sm.value=="")
	{
		alert("所有内容都要填写！");
	//	document.form1.title.focus();
		return false;
	} 
	 
	 
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
	
	String member=(String)session.getAttribute("member"); 
	if(member==null){
		response.sendRedirect(path+"index.jsp");
	}
	else{ 
		
		String id="";
		String zt="";String dj=""; String ly="";String sm=""; 
		if(method.equals("upjxj")){
			id=request.getParameter("id");
			List wzlist=cb.get1Com("select * from jxj where id='"+id+"'",5);
			zt=wzlist.get(1).toString(); 
			dj=wzlist.get(2).toString(); 
			ly=wzlist.get(3).toString();  
			sm=wzlist.get(4).toString();  
		}
%>
<BODY>
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
	<td height="2">&nbsp;</td>
  </tr>
  <tr>
	<td background="<%=basePath %>admin/images/index1_45.gif"></td>
	<td bgcolor="#FFFFFF" style="height:490px; vertical-align:top;">
	  <table width="100%" border="0" cellspacing="10" cellpadding="0">
		 
		<tr>
		  <td>
<form action="<%=basePath%>com.do" name="form1" method="post" >
<table width="100%" border="0" cellpadding="0" cellspacing="1" bgcolor="#BBD3EB">
  <tbody> 
  
    <input type="hidden" name="method" value="<%=method %>" /> 
    <input type="hidden" name="id" value="<%=id %>" />
    <tr bgColor=#ffffff>
      <td width="35%"  class="font1" height="26" align=right>申请主题：</td>
      <td align=left><input type="text" name="zt" size="50" value="<%=zt %>"></td>
    </tr>
    <tr bgColor=#ffffff>
      <td width="35%"  class="font1" height="26" align=right>奖学金等级：</td>
      <td align=left><input type="text" name="dj" size="50" value="<%=dj %>"></td>
    </tr>   
     <tr bgColor=#ffffff>
      <td width="35%"  class="font1" height="26" align=right>申请理由：</td>
      <td align=left><textarea name=ly cols=50 rows=10><%=ly %></textarea></td>
    </tr> 
    <tr bgColor=#ffffff>
      <td width="35%"  class="font1" height="26" align=right>自我说明：</td>
      <td align=left><textarea name=sm cols=50 rows=10><%=sm %></textarea></td>
    </tr>
    <tr bgColor=#ffffff>
      <td colspan="2"  class="font1" height="26" align=center>
      <input type="button" value="确定" onClick="check()"> </td>
    </tr> 
  </tbody>
</table>
</form>
</td>
</tr> 
	  </table>
	</td>
	<td background="images/index1_47.gif"></td>
  </tr>
  <tr>
	<td width="8" height="8"><img src="images/index1_91.gif" width="8" height="8" /></td>
	<td background="images/index1_92.gif"></td>
	<td width="8" height="8"><img src="images/index1_93.gif" width="8" height="8" /></td>
  </tr>
</table>
</body>
<%} %>
