<strong class="msg">
<% if session("msg")<>"" then
   response.Write(session("msg"))
   session("msg")=""
   end if
   %></font>
   </strong>