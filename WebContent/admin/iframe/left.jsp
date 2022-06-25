<%@ page language="java" import="java.util.*" contentType="text/html;charset=gb2312"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
<HEAD>
<META http-equiv=Content-Type content="text/html; charset=gb2312">
<LINK href="<%=basePath %>admin/images/admin.css" type="text/css" rel="stylesheet">
<SCRIPT language=javascript>
	function expand(el)
	{
		childObj = document.getElementById("child" + el);

		if (childObj.style.display == 'none')
		{
			childObj.style.display = 'block';
		}
		else
		{
			childObj.style.display = 'none';
		}
		return;
	}
</SCRIPT>
</HEAD>
<%
	String username=(String)session.getAttribute("user"); String sf=(String)session.getAttribute("sf"); 
	if(username==null){
		response.sendRedirect(path+"index.jsp");
	}
	else{ 
%>
<body>
<TABLE height="100%" cellSpacing=0 cellPadding=0 width=170 background=<%=basePath %>admin/images/menu_bg.jpg border=0>
  <TR>
    <TD vAlign=top align=middle>
      <TABLE cellSpacing=0 cellPadding=0 width="100%" border=0><TR><TD height=10></TD></TR></TABLE>  
      <TABLE cellSpacing=0 cellPadding=0 width=150 border=0>
        <TR height=22>
          <TD style="PADDING-LEFT: 30px" background=<%=basePath %>admin/images/menu_bt.jpg>
          <A class=menuParent onclick=expand(1) href="javascript:void(0);">密码信息管理</A></TD>
		</TR>
        <TR height=4><TD></TD></TR>
	  </TABLE>
      <TABLE id=child1 style="DISPLAY: none" cellSpacing=0 cellPadding=0 width=150 border=0>
        <TR height=20>
          <TD align=middle width=30><IMG height=9 src="<%=basePath %>admin/images/menu_icon.gif" width=9></TD>
          <TD><A class=menuChild href="<%=basePath %>admin/system/editpwd.jsp" target="MainFrame">修改登陆密码</A></TD></TR> 
        <TR height=4>
          <TD colSpan=2></TD>
		</TR>
	  </TABLE>
	  <%if(sf.equals("管理员")){ %>
	   <TABLE cellSpacing=0 cellPadding=0 width=150 border=0>
        <TR height=22>
          <TD style="PADDING-LEFT: 30px" background=<%=basePath %>admin/images/menu_bt.jpg>
          <A class=menuParent onclick=expand(61) href="javascript:void(0);">系统用户管理</A></TD>
		</TR>
        <TR height=4><TD></TD></TR>
	  </TABLE>
      <TABLE id=child61 style="DISPLAY: none" cellSpacing=0 cellPadding=0 width=150 border=0>
        <TR height=20>
          <TD align=middle width=30><IMG height=9 src="<%=basePath %>admin/images/menu_icon.gif" width=9></TD>
          <TD><A class=menuChild href="<%=basePath %>admin/system/index.jsp" target="MainFrame">系统用户管理</A></TD>
		</TR>
		<TR height=20>
          <TD align=middle width=30><IMG height=9 src="<%=basePath %>admin/images/menu_icon.gif" width=9></TD>
          <TD><A class=menuChild href="<%=basePath %>admin/system/add.jsp?method=addm" target="MainFrame">增加系统用户</A></TD>
		</TR> 
		<TR height=20>
          <TD align=middle width=30><IMG height=9 src="<%=basePath %>admin/images/menu_icon.gif" width=9></TD>
          <TD><A class=menuChild href="<%=basePath %>admin/system/s.jsp" target="MainFrame">查询系统用户</A></TD>
		</TR>  
        <TR height=4>
          <TD colSpan=2></TD>
		</TR>
	  </TABLE> 
	  
	  
	    <TABLE cellSpacing=0 cellPadding=0 width=150 border=0>
        <TR height=22>
          <TD style="PADDING-LEFT: 30px" background=<%=basePath %>admin/images/menu_bt.jpg>
          <A class=menuParent onclick=expand(6) href="javascript:void(0);">注册学生管理</A></TD>
		</TR>
        <TR height=4><TD></TD></TR>
	  </TABLE>
      <TABLE id=child6 style="DISPLAY: none" cellSpacing=0 cellPadding=0 width=150 border=0>
        <TR height=20>
          <TD align=middle width=30><IMG height=9 src="<%=basePath %>admin/images/menu_icon.gif" width=9></TD>
          <TD><A class=menuChild href="<%=basePath %>admin/member/index.jsp" target="MainFrame">注册学生管理</A></TD>
		</TR> 
		<TR height=20>
          <TD align=middle width=30><IMG height=9 src="<%=basePath %>admin/images/menu_icon.gif" width=9></TD>
          <TD><A class=menuChild href="<%=basePath %>admin/member/s.jsp" target="MainFrame">查询学生用户</A></TD>
		</TR> 
        <TR height=4>
          <TD colSpan=2></TD>
		</TR>
	  </TABLE> 
	    
	  
	<TABLE cellSpacing=0 cellPadding=0 width=150 border=0>
<%--        <TR height=22>--%>
<%--          <TD style="PADDING-LEFT: 30px" background=<%=basePath %>admin/images/menu_bt.jpg>--%>
<%--          <A class=menuParent onclick=expand(333) href="javascript:void(0);">奖学金申请管理</A></TD>--%>
<%--		</TR>--%>
<%--        <TR height=4><TD></TD></TR>--%>
<%--	  </TABLE>--%>
<%--      <TABLE id=child333 style="DISPLAY: none" cellSpacing=0 cellPadding=0 width=150 border=0> --%>
<%--		<TR height=20>--%>
<%--          <TD align=middle width=30><IMG height=9 src="<%=basePath %>admin/images/menu_icon.gif" width=9></TD>--%>
<%--          <TD><A class=menuChild href="<%=basePath %>admin/ayjxj/index.jsp" target="MainFrame">奖学金申请管理</A></TD>--%>
<%--		</TR>  --%>
<%--		<TR height=20>--%>
<%--          <TD align=middle width=30><IMG height=9 src="<%=basePath %>admin/images/menu_icon.gif" width=9></TD>--%>
<%--          <TD><A class=menuChild href="<%=basePath %>admin/ayjxj/s.jsp" target="MainFrame">奖学金申请查询</A></TD>--%>
<%--		</TR>  --%>
<%--        <TR height=4>--%>
<%--          <TD colSpan=2></TD>--%>
<%--		</TR>--%>
<%--	  </TABLE>--%>
	  
	  <TABLE cellSpacing=0 cellPadding=0 width=150 border=0>
        <TR height=22>
          <TD style="PADDING-LEFT: 30px" background=<%=basePath %>admin/images/menu_bt.jpg>
          <A class=menuParent onclick=expand(3331) href="javascript:void(0);">助学金申请管理</A></TD>
		</TR>
        <TR height=4><TD></TD></TR>
	  </TABLE>
      <TABLE id=child3331 style="DISPLAY: none" cellSpacing=0 cellPadding=0 width=150 border=0> 
		<TR height=20>
          <TD align=middle width=30><IMG height=9 src="<%=basePath %>admin/images/menu_icon.gif" width=9></TD>
          <TD><A class=menuChild href="<%=basePath %>admin/ayzxj/index.jsp" target="MainFrame">助学金申请管理</A></TD>
		</TR>  
		<TR height=20>
          <TD align=middle width=30><IMG height=9 src="<%=basePath %>admin/images/menu_icon.gif" width=9></TD>
          <TD><A class=menuChild href="<%=basePath %>admin/ayzxj/s.jsp" target="MainFrame">助学金申请查询</A></TD>
		</TR>  
        <TR height=4>
          <TD colSpan=2></TD>
		</TR>
	  </TABLE>
	  
	  <TABLE cellSpacing=0 cellPadding=0 width=150 border=0>
        <TR height=22>
          <TD style="PADDING-LEFT: 30px" background=<%=basePath %>admin/images/menu_bt.jpg>
          <A class=menuParent onclick=expand(3332) href="javascript:void(0);">贷款申请管理</A></TD>
		</TR>
        <TR height=4><TD></TD></TR>
	  </TABLE>
      <TABLE id=child3332 style="DISPLAY: none" cellSpacing=0 cellPadding=0 width=150 border=0> 
		<TR height=20>
          <TD align=middle width=30><IMG height=9 src="<%=basePath %>admin/images/menu_icon.gif" width=9></TD>
          <TD><A class=menuChild href="<%=basePath %>admin/aydk/index.jsp" target="MainFrame">贷款申请管理</A></TD>
		</TR>  
		<TR height=20>
          <TD align=middle width=30><IMG height=9 src="<%=basePath %>admin/images/menu_icon.gif" width=9></TD>
          <TD><A class=menuChild href="<%=basePath %>admin/aydk/s.jsp" target="MainFrame">贷款申请查询</A></TD>
		</TR>  
        <TR height=4>
          <TD colSpan=2></TD>
		</TR>
	  </TABLE>
	 <%}else if(sf.equals("系领导")){ %> 
	 	<TABLE cellSpacing=0 cellPadding=0 width=150 border=0>
        <TR height=22>
          <TD style="PADDING-LEFT: 30px" background=<%=basePath %>admin/images/menu_bt.jpg>
          <A class=menuParent onclick=expand(611) href="javascript:void(0);">个人资料管理</A></TD>
		</TR>
        <TR height=4><TD></TD></TR>
	  </TABLE>
      <TABLE id=child611 style="DISPLAY: none" cellSpacing=0 cellPadding=0 width=150 border=0> 
		<TR height=20>
          <TD align=middle width=30><IMG height=9 src="<%=basePath %>admin/images/menu_icon.gif" width=9></TD>
          <TD><A class=menuChild href="<%=basePath %>admin/system/gr.jsp" target="MainFrame">个人资料管理</A></TD>
		</TR>  
        <TR height=4>
          <TD colSpan=2></TD>
		</TR>
	  </TABLE> 
	 
	  
	 <TABLE cellSpacing=0 cellPadding=0 width=150 border=0>
<%--        <TR height=22>--%>
<%--          <TD style="PADDING-LEFT: 30px" background=<%=basePath %>admin/images/menu_bt.jpg>--%>
<%--          <A class=menuParent onclick=expand(333) href="javascript:void(0);">奖学金申请管理</A></TD>--%>
<%--		</TR>--%>
<%--        <TR height=4><TD></TD></TR>--%>
<%--	  </TABLE>--%>
<%--      <TABLE id=child333 style="DISPLAY: none" cellSpacing=0 cellPadding=0 width=150 border=0> --%>
<%--		<TR height=20>--%>
<%--          <TD align=middle width=30><IMG height=9 src="<%=basePath %>admin/images/menu_icon.gif" width=9></TD>--%>
<%--          <TD><A class=menuChild href="<%=basePath %>admin/jxj/index.jsp" target="MainFrame">奖学金申请管理</A></TD>--%>
<%--		</TR>  --%>
<%--		<TR height=20>--%>
<%--          <TD align=middle width=30><IMG height=9 src="<%=basePath %>admin/images/menu_icon.gif" width=9></TD>--%>
<%--          <TD><A class=menuChild href="<%=basePath %>admin/jxj/s.jsp" target="MainFrame">奖学金申请查询</A></TD>--%>
<%--		</TR>  --%>
<%--        <TR height=4>--%>
<%--          <TD colSpan=2></TD>--%>
<%--		</TR>--%>
<%--	  </TABLE>--%>
	  
	  <TABLE cellSpacing=0 cellPadding=0 width=150 border=0>
        <TR height=22>
          <TD style="PADDING-LEFT: 30px" background=<%=basePath %>admin/images/menu_bt.jpg>
          <A class=menuParent onclick=expand(3331) href="javascript:void(0);">助学金申请管理</A></TD>
		</TR>
        <TR height=4><TD></TD></TR>
	  </TABLE>
      <TABLE id=child3331 style="DISPLAY: none" cellSpacing=0 cellPadding=0 width=150 border=0> 
		<TR height=20>
          <TD align=middle width=30><IMG height=9 src="<%=basePath %>admin/images/menu_icon.gif" width=9></TD>
          <TD><A class=menuChild href="<%=basePath %>admin/zxj/index.jsp" target="MainFrame">助学金申请管理</A></TD>
		</TR>  
		<TR height=20>
          <TD align=middle width=30><IMG height=9 src="<%=basePath %>admin/images/menu_icon.gif" width=9></TD>
          <TD><A class=menuChild href="<%=basePath %>admin/zxj/s.jsp" target="MainFrame">助学金申请查询</A></TD>
		</TR>  
        <TR height=4>
          <TD colSpan=2></TD>
		</TR>
	  </TABLE>
	  
	  <TABLE cellSpacing=0 cellPadding=0 width=150 border=0>
        <TR height=22>
          <TD style="PADDING-LEFT: 30px" background=<%=basePath %>admin/images/menu_bt.jpg>
          <A class=menuParent onclick=expand(3332) href="javascript:void(0);">贷款申请管理</A></TD>
		</TR>
        <TR height=4><TD></TD></TR>
	  </TABLE>
      <TABLE id=child3332 style="DISPLAY: none" cellSpacing=0 cellPadding=0 width=150 border=0> 
		<TR height=20>
          <TD align=middle width=30><IMG height=9 src="<%=basePath %>admin/images/menu_icon.gif" width=9></TD>
          <TD><A class=menuChild href="<%=basePath %>admin/dk/index.jsp" target="MainFrame">贷款申请管理</A></TD>
		</TR>  
		<TR height=20>
          <TD align=middle width=30><IMG height=9 src="<%=basePath %>admin/images/menu_icon.gif" width=9></TD>
          <TD><A class=menuChild href="<%=basePath %>admin/dk/s.jsp" target="MainFrame">贷款申请查询</A></TD>
		</TR>  
        <TR height=4>
          <TD colSpan=2></TD>
		</TR>
	  </TABLE>
	  <%}else if(sf.equals("学院领导")){ %>
	 <TABLE cellSpacing=0 cellPadding=0 width=150 border=0>
        <TR height=22>
          <TD style="PADDING-LEFT: 30px" background=<%=basePath %>admin/images/menu_bt.jpg>
          <A class=menuParent onclick=expand(611) href="javascript:void(0);">个人资料管理</A></TD>
		</TR>
        <TR height=4><TD></TD></TR>
	  </TABLE>
      <TABLE id=child611 style="DISPLAY: none" cellSpacing=0 cellPadding=0 width=150 border=0> 
		<TR height=20>
          <TD align=middle width=30><IMG height=9 src="<%=basePath %>admin/images/menu_icon.gif" width=9></TD>
          <TD><A class=menuChild href="<%=basePath %>admin/system/gr.jsp" target="MainFrame">个人资料管理</A></TD>
		</TR>  
        <TR height=4>
          <TD colSpan=2></TD>
		</TR>
	  </TABLE> 
	 
	  
	 <TABLE cellSpacing=0 cellPadding=0 width=150 border=0>
<%--        <TR height=22>--%>
<%--          <TD style="PADDING-LEFT: 30px" background=<%=basePath %>admin/images/menu_bt.jpg>--%>
<%--          <A class=menuParent onclick=expand(333) href="javascript:void(0);">奖学金申请管理</A></TD>--%>
<%--		</TR>--%>
<%--        <TR height=4><TD></TD></TR>--%>
<%--	  </TABLE>--%>
<%--      <TABLE id=child333 style="DISPLAY: none" cellSpacing=0 cellPadding=0 width=150 border=0> --%>
<%--		<TR height=20>--%>
<%--          <TD align=middle width=30><IMG height=9 src="<%=basePath %>admin/images/menu_icon.gif" width=9></TD>--%>
<%--          <TD><A class=menuChild href="<%=basePath %>admin/yjxj/index.jsp" target="MainFrame">奖学金申请管理</A></TD>--%>
<%--		</TR>  --%>
<%--		<TR height=20>--%>
<%--          <TD align=middle width=30><IMG height=9 src="<%=basePath %>admin/images/menu_icon.gif" width=9></TD>--%>
<%--          <TD><A class=menuChild href="<%=basePath %>admin/yjxj/s.jsp" target="MainFrame">奖学金申请查询</A></TD>--%>
<%--		</TR>  --%>
<%--        <TR height=4>--%>
<%--          <TD colSpan=2></TD>--%>
<%--		</TR>--%>
<%--	  </TABLE>--%>
	  
	  <TABLE cellSpacing=0 cellPadding=0 width=150 border=0>
        <TR height=22>
          <TD style="PADDING-LEFT: 30px" background=<%=basePath %>admin/images/menu_bt.jpg>
          <A class=menuParent onclick=expand(3331) href="javascript:void(0);">助学金申请管理</A></TD>
		</TR>
        <TR height=4><TD></TD></TR>
	  </TABLE>
      <TABLE id=child3331 style="DISPLAY: none" cellSpacing=0 cellPadding=0 width=150 border=0> 
		<TR height=20>
          <TD align=middle width=30><IMG height=9 src="<%=basePath %>admin/images/menu_icon.gif" width=9></TD>
          <TD><A class=menuChild href="<%=basePath %>admin/yzxj/index.jsp" target="MainFrame">助学金申请管理</A></TD>
		</TR>  
		<TR height=20>
          <TD align=middle width=30><IMG height=9 src="<%=basePath %>admin/images/menu_icon.gif" width=9></TD>
          <TD><A class=menuChild href="<%=basePath %>admin/yzxj/s.jsp" target="MainFrame">助学金申请查询</A></TD>
		</TR>  
        <TR height=4>
          <TD colSpan=2></TD>
		</TR>
	  </TABLE>
	  
	  <TABLE cellSpacing=0 cellPadding=0 width=150 border=0>
        <TR height=22>
          <TD style="PADDING-LEFT: 30px" background=<%=basePath %>admin/images/menu_bt.jpg>
          <A class=menuParent onclick=expand(3332) href="javascript:void(0);">贷款申请管理</A></TD>
		</TR>
        <TR height=4><TD></TD></TR>
	  </TABLE>
      <TABLE id=child3332 style="DISPLAY: none" cellSpacing=0 cellPadding=0 width=150 border=0> 
		<TR height=20>
          <TD align=middle width=30><IMG height=9 src="<%=basePath %>admin/images/menu_icon.gif" width=9></TD>
          <TD><A class=menuChild href="<%=basePath %>admin/ydk/index.jsp" target="MainFrame">贷款申请管理</A></TD>
		</TR>  
		<TR height=20>
          <TD align=middle width=30><IMG height=9 src="<%=basePath %>admin/images/menu_icon.gif" width=9></TD>
          <TD><A class=menuChild href="<%=basePath %>admin/ydk/s.jsp" target="MainFrame">贷款申请查询</A></TD>
		</TR>  
        <TR height=4>
          <TD colSpan=2></TD>
		</TR>
	  </TABLE>
      <%} %>
	   
	   
	  
       </TD>
     </TR> 
</TABLE>
</body>
<%} %>
</HTML>
