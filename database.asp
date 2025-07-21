<%
dbname="database/dbase.mdb"
set con=server.createobject("adodb.connection")
cnpath="DBQ=" & server.mappath(dbname)
con.Open "DRIVER={Microsoft Access Driver (*.mdb)}; " & cnpath
%>