
<%

dim rs
set rs=server.CreateObject("adodb.recordset")
sql="select Companyname,mail_add_1,mail_add_2,mail_state,mail_country,mail_zip from r_customer_info"
rs.open sql,con
do until rs.eof
addre=rs("mail_add_1")&chr(13)&rs("mail_add_2")&chr(13)&rs("mail_state")&chr(13)&rs("mail_country")&chr(13)&rs("mail_zip")
 %>
<option value="<%=addre%>"> <%=rs("companyname")%></option>
<%
rs.movenext
loop



%>