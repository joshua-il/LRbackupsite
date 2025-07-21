// JavaScript Document
//Author: M.Satheesh Kumar
function Trim(s) 
{
  // Remove leading spaces and carriage returns
  
  while ((s.substring(0,1) == ' ') || (s.substring(0,1) == '\n') || (s.substring(0,1) == '\r'))
  {
    s = s.substring(1,s.length);
  }

  // Remove trailing spaces and carriage returns

  while ((s.substring(s.length-1,s.length) == ' ') || (s.substring(s.length-1,s.length) == '\n') || (s.substring(s.length-1,s.length) == '\r'))
  {
    s = s.substring(0,s.length-1);
  }
  return s;
}

function checkexists(obj,va)
{
alert(va)
var eform;
var i;
var co;
var s;
var flag;
flag=0;
co=obj.length-1;
for(i=0;i<=co;i++)
	{
	
	s=obj.options[i].text;
	va=va.toLowerCase();
	s=s.toLowerCase()
	if(s == Trim(va))
	{
		flag=1;
	break;
	}
}
return(flag);
}
function addtolistfun(obj,va)
{
	if 
  		le=obj.length;
		obj.options[le] = new Option(va);
		obj(le).text=va;
		if(le<=10) obj.size=le+1;
	
}	//fun addtolist ends here
function fundelete(obj,ind)
{
obj.options.remove(ind);
}
function funmakeselect(obj)
{
for(i=1;i<obj.length;i++)
obj.options(i).selected=true;
}