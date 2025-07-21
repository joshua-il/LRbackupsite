<!-- #include file="database.asp" -->
<%
dim uId,pwd,emailid,UName,street,city,state,country,zipcode,ph,fax
dim sq,r

uId=trim(replace(request.Form("txtcustid"),"'","''"))
pwd=trim(replace(request.Form("txtpassword"),"'","''"))
emailid=trim(replace(request.Form("txtemail"),"'","''"))
UName=trim(replace(request.Form("txtusername"),"'","''"))
street=trim(replace(request.Form("txtadress1"),"'","''"))
city=trim(replace(request.Form("txtaddress2"),"'","''"))
state=trim(replace(request.Form("cbostate"),"'","''"))
country=replace(request.Form("cbocountry"))
zipcode=trim(replace(request.Form("txtzipcode"),"'","''"))
ph=trim(replace(request.Form("txtphone"),"'","''"))
fax=trim(replace(request.Form("txtfax"),"'","''"))

con.execute "insert into registration (uId,pwd,emailId,UName,Street,City,State,Country,zipcode,ph,fax) values('" session("UId") &"','" & uId &"','" & pwd &"','" & emailid &"','" & UName &"','" & street &"','" & city &"','" & state &"','" & country &"','" & zipcode &"','" & ph &"','" & fax &"')"

session("msg")="Your Registration Has Been Successfully Created"
bo=generatebody(uId,pwd,emailid,UName,street,city,State,country,zipcode,ph,fax)
sendemail email,bo
response.Redirect("Registration.asp")
%>

<% function sendemail(taddress,body )
 SET myMail = Server.CreateObject("CDONTS.Newmail")
             myMail.From ="info@gospeltelevision.org"
             myMail.To = emailid
			 myMail.Subject = "Account Creation"
             myMail.Body = body
			 myMail.BodyFormat = 0 
			 myMail.MailFormat = 0 
             myMail.Send
        SET myMail = Nothing
 end function %>
<%
function generatebody(uId,pwd,emailid,UName,street,city,state,country,zipcode,ph,fax)
bo="<HTML>"
bo=bo&"<link href=style.css rel=stylesheet type=text/css>"
bo=bo&"<style type=text/css>"
bo=bo&".border{ border-right: #0066cc 1px solid;border-top: #0066cc 1px solid;border-left: #0066cc 1px solid;border-bottom: #0066cc 1px solid;background-color : #DAE2E7; font-family: Arial, Helvetica, sans-serif; font-size: 12px; color: #000000;}"
bo=bo&".border1{ border-right: #0066cc 0px solid;border-top: #0066cc 0px solid;border-left: #0066cc 0px solid;border-bottom: #0066cc 1px solid;background-color : #DAE2E7; font-family: Arial, Helvetica, sans-serif; font-size: 12px;}"
bo=bo&".but{color: blue;background-color:#D5F6DD;text-transform:capitalize;font-weight:bold;padding-left:5;padding-right:5;}"
bo=bo&"</style>"
bo=bo&"<BODY BGCOLOR=#DAE2E7 LEFTMARGIN=0 TOPMARGIN=0 MARGINWIDTH=0 MARGINHEIGHT=0 >"

bo=bo&" <table  BGCOLOR=#DAE2E7 align=center  width=60% class=border cellspacing=1 cellpading=0 >"
               bo= bo& " <tr>"
bo=bo & " <td  colspan=3 align=center class=border1> <span class=texttitle>Your Account Has been Created at Nationas Reach " 
bo=bo&"</span><br>"
		bo=bo&"</td></tr>"
        bo=bo&"<tr height=10% ><td align=right width=25% ><font color=#0B0909 face=Arial size=2> <b> User Name </font></td><td width=5% ></td><td width=70% >"& uId &"</td></tr>"
        bo=bo&"<tr height=10% ><td align=right ><font color=#0B0909 face=Arial size=2><b>Password</b></font></td><td width=5% ></td><td>"&pwd&"</td></tr>"
		bo=bo&"</tr>"
		bo=bo&"  </table> "
bo=bo&"</BODY>"
bo=bo&"</HTML>"
generatebody=bo
end function
%>