<!-- Dynamic title for coustomer -->
<% 
           if session("custid")<>"" then
%>
           <TD width=5 height=20><IMG height=20 alt="" 
            src="images/spacer.gif" width=5 border=0></TD>
          <TD noWrap height=20><A class=primaryNavLink 
            href="customer_view.asp">My profile
            </A></TD>
          <TD width=5 height=20><IMG height=20 alt="" 
            src="images/spacer.gif" width=5 border=0></TD>
          <TD vAlign=bottom width=1 height=20><IMG height=20 alt="" 
            src="images/topnav_vertical_line.gif" width=1 border=0></TD>
          <TD width=5 height=20><IMG height=20 alt="" 
            src="images/spacer.gif" width=5 border=0></TD>
          <TD noWrap height=20><A class=primaryNavLink 
            href="userlogout.asp">Logout</A></TD>
          <TD width=5 height=20><IMG height=20 alt="" 
            src="images/spacer.gif" width=5 border=0></TD>
          <TD vAlign=bottom width=1 height=20><IMG height=20 alt="" 
            src="images/topnav_vertical_line.gif" width=1 
        border=0></TD>
<% end if %>
