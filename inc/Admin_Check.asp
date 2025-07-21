<SCRIPT language="JavaScript" SRC="../JS/cookie_fns.js">
</SCRIPT>
<script language="JavaScript">
/***Checking adminuser value for only authorised users********/
if(getCookie("adminuser") == null)
{
document.location.href = "default.asp"
}
</script>
<%
	if session("admin") = "" then 
	session.contents.removeall()
	Response.Cookies("UName") = ""
	Response.Cookies("UName").Expires = DateAdd("d", 0, Date)
	session("loginmsg") = "Session Expired or You are Unauthorised"
	response.Redirect("default.asp")
	end if
%>