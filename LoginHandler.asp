<!-- #include file="database/dbase.asp" -->

<script language="JavaScript">
<!--

function SymError()
{
  return true;
}

window.onerror = SymError;

//-->
</script>

<SCRIPT language="JavaScript" SRC="../JS/cookie_fns.js">
</SCRIPT>
<%
		 UserName  = request.Form("UserName")
		 Pwd  = request.Form("Password")
		 set rs=server.createobject("adodb.recordset")
		 rs.open "SELECT RId,UName,pwd FROM registration where UName='" & UserName &"' and Pwd='"& Pwd &"' and status='Y'",Con
		 if rs.eof  then
		 session("loginmsg") = "Invalid UserName"
		 
		 response.Redirect("default.asp")
		 end if
		 session("UName") = " & rs("UName") &"
		 session("UId") = " & rs("RId") &"
		 rs.close
		 con.close
		  response.Redirect("donation.asp")
		 %>
		 
