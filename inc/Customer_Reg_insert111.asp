

<!-- #include file="database.asp" -->

<SCRIPT language="JavaScript" SRC="../JS/cookie_fns.js">
</SCRIPT>
<%
dim r
dim sqlstr
set r=server.CreateObject("adodb.recordset")
custid=trim(replace(request.Form("txtcustid"),"'","''"))
password=replace(request.Form("txtpassword"),"'","''")
username=replace(request.Form("txtusername"),"'","''")
'Gettin Mail address
address1=replace(request.Form("txtaddress1"),"'","''")
address2=replace(request.Form("txtaddress2"),"'","''")
stat=replace(request.form("cbostate"),"'","''")
country=replace(request.Form("cbocountry"),"'","''")
zipcode=replace(request.Form("txtzipcode"),"'","''")
' getting ship address
saddress1=replace(request.Form("txtsaddress1"),"'","''")
saddress2=replace(request.Form("txtsaddress2"),"'","''")
sstat=replace(request.form("cbosstate"),"'","''")
scountry=replace(request.Form("cboscountry"),"'","''")
szipcode=replace(request.Form("txtszipcode"),"'","''")
'geting other information
phone=replace(request.Form("txtphone"),"'","''")
fax=replace(request.Form("txtfax"),"'","''")
email=replace(request.Form("txtemail"),"'","''")

sqlstr="select e_mail_1,cust_id from R_customer_info where ucase(cust_id)='"& ucase(custid) &"' or ucase(e_mail_1)='"& ucase(email) &"'"
r.open sqlstr,con
if r.eof  then

	  createdby=username
	  createddate=date
	  joindate=date
	  ipaddress=Request.ServerVariables("REMOTE_ADDR")
	  custtype="Customer"
	  statu="N"
      	  sqlstr="insert into R_customer_info(cust_id,cust_type,status,contact_name,password,mail_add_1,mail_add_2,mail_zip,mail_state,mail_country,ship_add_1,ship_add_2,ship_zip,ship_state,ship_country,phone_no,fax_no,e_mail_1,join_date,createdby,createddate,ip_address) values('"& custid &"','"& custtype &"','"& statu &"','"& username &"','"& password &"','"& address1 &"','"& address2 &"','"& zipcode &"','"& stat &"','"& country &"','"& saddress1 &"','"& saddress2 &"','"& szipcode &"','"& sstat &"','"& scountry &"','"& phone &"','"& fax &"','"& email &"','"& joindate &"','"& createdby &"','"& createddate &"','"& ipaddress &"')" 
	  con.execute(sqlstr)
	  r.close
	  con.close
	  'session("custid") = custid
	  'session("username") = username
	  session("msg")="Congratulations! Your have been registered as our customer.<br>Enjoy shopping with us"
	  mailbody="Congratulations! Your have been registered as our customer.<br>Enjoy shopping with us <br>But plsease wait go get approval process"
	  mailbody=mailbody&"<br>"&"User Name :"&cust_id
	  mailbody=mailbody&"<br>"&"Password  :"&password
	  mailbody=mailbody&"<br>" & "Click the following link  <a href=http://www.loftyindia.com>www.loftyindia.com</a>"
	  sendemail email,mailbody
	  %>
 
<form action="" name="frm">
		 <input type="hidden" name="user" value="<%=custid%>">
		 </form>
		 <script language="JavaScript">
		 setCookie("cust_id", document.frm.user.value, nextMonth);
		 </script>
	  <%
	  response.Redirect("Customer_View.asp")




   else
%>

<%
 if trim(ucase(r("cust_id")))=ucase(trim(custid)) then
	
	%>

	<br><br>
	<!--Display error if username already exist-->
	<table align="center" width="543"  cellpadding="0" cellspacing="0" bgcolor="#F2F1DD">
    <tr> 
      <td width="27" align="left" valign="top" background="images/sf_box.gif"><img src="images/curva_sup_sx.gif"></td>
      
    <td width="484" height="20" align="center" background="images/sf_box.gif" class="regtitle">New 
      Customer Registration</td>
      <td width="30" align="right" valign="top" background="images/sf_box.gif"><img src="images/curva_sup_dx.gif"></td>
    </tr>
   <tr>
       
    <td height="33" colspan="3" align="center"><strong>Sorry!! Username which 
      you entered already exists</strong></td>
   </tr>
     <tr>
       
    <td  colspan="3" align="center"><a href="javascript:history.back()">Go Back</a></td>
   </tr>
    <tr>
      <td height="12" align="left" valign="bottom"><img src="images/curva_dw_sx.gif"></td>
      <td align="center">&nbsp; </td>
      <td align="right" valign="bottom"><img src="images/curva_dw_dx.gif"></td>
    </tr>
</table>
	<%else%>
	<br><br>
	<!--Display error if email already exist-->
	<table align="center" width="543"  cellpadding="0" cellspacing="0" bgcolor="#F2F1DD">
    <tr> 
      <td width="27" align="left" valign="top" background="images/sf_box.gif"><img src="images/curva_sup_sx.gif"></td>
      
    <td width="484" height="20" align="center" background="images/sf_box.gif" class="regtitle">New 
      Customer Registration</td>
      <td width="30" align="right" valign="top" background="images/sf_box.gif"><img src="images/curva_sup_dx.gif"></td>
    </tr>
   <tr>
       
    <td height="33" colspan="3" align="center"><strong>Sorry!! Email which you 
      entered already exists</strong></td>
   </tr>
     <tr>
       
    <td  colspan="3" align="center"><a href="javascript:history.back()">Go Back</a></td>
   </tr>
    <tr>
      <td height="12" align="left" valign="bottom"><img src="images/curva_dw_sx.gif"></td>
      <td align="center">&nbsp; </td>
      <td align="right" valign="bottom"><img src="images/curva_dw_dx.gif"></td>
    </tr>
</table>
	<%
	end if

end if	
r.close
con.close	
%>
<% sub sendemail(taddress ,body )

 SET myMail = Server.CreateObject("CDONTS.Newmail")
             myMail.From = "lofty@loftyindia.com"
             myMail.To = taddress
			 myMail.Subject = "Your registration with lofty "
             myMail.Body = body
			 myMail.BodyFormat = 0 
			 myMail.MailFormat = 0 
             myMail.Send
        SET myMail = Nothing

end sub
%>
