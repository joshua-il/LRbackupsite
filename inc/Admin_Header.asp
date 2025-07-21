<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">

<%explicit="false"%>
<html>
<head>
<title>Lofty opticals</title>
</head>

<script language="JavaScript">
function MM_showHideLayers() { //v6.0
  var i,p,v,obj,args=MM_showHideLayers.arguments;
  for (i=0; i<(args.length-2); i+=3) if ((obj=MM_findObj(args[i]))!=null) { v=args[i+2];
    if (obj.style) { obj=obj.style; v=(v=='show')?'visible':(v=='hide')?'hidden':v; }
    obj.visibility=v; }
}
function MM_findObj(n, d) { //v4.01
  var p,i,x;  if(!d) d=document; if((p=n.indexOf("?"))>0&&parent.frames.length) {
    d=parent.frames[n.substring(p+1)].document; n=n.substring(0,p);}
  if(!(x=d[n])&&d.all) x=d.all[n]; for (i=0;!x&&i<d.forms.length;i++) x=d.forms[i][n];
  for(i=0;!x&&d.layers&&i<d.layers.length;i++) x=MM_findObj(n,d.layers[i].document);
  if(!x && d.getElementById) x=d.getElementById(n); return x;
}
</script>
<LINK href="main.css" type=text/css rel=STYLESHEET>
<body bottommargin="0" leftmargin="0" rightmargin="0" topmargin="0" marginheight="0" marginwidth="0">

<table width="100%" height="10%" bgcolor="#FFFFFF" border="0" cellpadding="0" cellspacing="0">
 	<tr>
    	<td height="71"><img src="../images/adminhead.gif" alt=""></td>
		<td style="color: #9C6012; font-family: tahoma, verdana, arial, sans-serif; font-size: 20pt; font-weight:bold;">Control Panel</td>
	</tr>
</table>
<!---------------------------------------------------------------------------->
<table width="100%" height="5" border="0" cellpadding="0" cellspacing="0">
	<tr valign="top" bgcolor="#E2CFB6">
		<td height="5"></td>
	</tr>
</table>
<!---------------------------------------------------------------------------->
<table width="100%" height="24" border="0" cellpadding="0" cellspacing="0" bgcolor="#9C6012" >
	<tr valign="top">
		<td width="100%" height="24" > 
   	     	<TABLE width="400" border=0 cellPadding=0 cellSpacing=0 bgcolor="" >
        		<TR>
			  		<TD width=10 height=20></TD>
          			<TD height=20 noWrap class=TDmenu width="10" ><A class=primaryNavLink href="Admin_Main.asp" onmouseover="MM_showHideLayers('one','','hide','two','','hide','three','','hide','four','','hide','five','','hide','six','','hide','seven','','hide','eight','','hide','nine','','hide')">Home</A></TD>
          			<TD width="35" height=20 noWrap class=TDmenu><A class=primaryNavLink href="#" onmouseover="MM_showHideLayers('one','','hide','two','','hide','three','','hide','four','','hide','six','','hide','seven','','hide','eight','','hide','nine','','show')">Admin</A></TD>
          			<TD width="80" height=20 noWrap class=TDmenu>
		   				<% if(session("userkey")="1") then %>
		  						<A class=primaryNavLink href="#" onmouseover="MM_showHideLayers('one','','show','two','','hide','three','','hide','four','','hide','six','','hide','seven','','hide','eight','','hide','nine','','hide')">My Customers</A>
    					<% else %>
							<A class=primaryNavLink href="permision.asp" onmouseover="MM_showHideLayers('one','','hide','two','','hide','three','','hide','four','','hide','six','','hide','seven','','hide','eight','','hide','nine','','hide')">My Customers</A>
						<% end if %>
		  			</TD>
          			<TD width="70" height=20 noWrap class=TDmenu>
		  				<% if(session("userkey")="1") then %>
		  					<A class="primaryNavLink" href="#"  onmouseover="MM_showHideLayers('one','','hide','two','','show','three','','hide','four','','hide','six','','hide','seven','','hide','eight','','hide','nine','','hide')">My Products</A>
		  				<% else %>
		  		  			<A class=primaryNavLink href="permision.asp"  onmouseover="MM_showHideLayers('one','','hide','two','','hide','three','','hide','four','','hide','six','','hide','seven','','hide','eight','','hide','nine','','hide')">My Products</A>
		  				<% end if %>
		  			</TD>
          			<TD width="58" height=20 noWrap class=TDmenu><A class=primaryNavLink href="#" onmouseover="MM_showHideLayers('one','','hide','two','','hide','three','','show','four','','hide','five','','hide','six','','hide','seven','','hide','eight','','hide','nine','','hide')">My Orders</A></TD>
		  			<TD width="55" height=20 noWrap class=TDmenu><A class=primaryNavLink href="Logout.asp" onmouseover="MM_showHideLayers('one','','hide','two','','hide','three','','hide','four','','hide','five','','hide','six','','hide','seven','','hide','eight','','hide','nine','','hide')">Sign Out</A></TD>
				</TR>
			</TABLE>
		</td>
  	</tr>
</table>
 <!---------------------------------------------------------------------------->
<table width="100%" height="8" border="0" cellpadding="0" cellspacing="0" bgcolor="#000000">
	<tr bgcolor="#000000"><td height="1"></td></tr>
	<tr bgcolor="#D3B694"><td height="7"></td></tr>
</table>
