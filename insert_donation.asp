<!-- #include file="database.asp" -->
<% 

dim Ctype,Amt,TCard,cardNo,CVVCode,ph,expiration
Ctype=request.form("DropDownList1")
Amt=request.form("Password")
TCard=request.form("dr_cardtype")
cardNo=request.form("Txt_cardno")
CVVCode=request.form("Txt_cvvcode")
ph=request.form("Txt_cardphno")

da=request.form("da")
mon=request.form("mon")
expiration=da & "/" & mon


con.execute "insert into donation(RId,CType,Amt,TCard,CardNo,CVVno,Ph,Expiration) values('" & Ctype &"','" & Amt &"','" & TCard &"','" & cardNo &"','" & CVVCode &"','" & ph &"','" & expiration &"')"
session("msg")="Donation Has Been Added  successfully"
response.Redirect("donation.asp")
%>