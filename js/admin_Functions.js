// JavaScript Document

/***************************************
	descriptin	: Java script function for validation
	Author		: C.R.Rajesh
	created on      : 06-06-2004	
***************************************/
function checkEntry(strObj,nameObj)
{
        
	var str=strObj.value;
               
		if(str.length!=0)
		if(checkString(strObj,nameObj)==false)
			return false;
	if(strObj.value.length==0)
	{
		alert("The field '"+ nameObj +"' must have a value");
		strObj.value="";
		strObj.focus();
		return false;
	}
		return true;
}

/************************************************************
     
     Function Name:checkString
     description  :To check the string

********************************************************************/

function checkString(strObj,strName)
{
	var str=strObj.value;
		str=trimString(str);
	if(str.length!=0)
		for(i=0;i<str.length;i++){
			if(str.charAt(i)=="\""||str.charAt(i)=="'"){
				alert("Invalid charecter in '"+strName+"'"); 
				strObj.focus();
				return false;
			}
		}
	else
		strObj.value="";
	return true;
}

/*****************************************************************
Script to trim the leading and traling spaces from the entered value
	Function Name	: trimString
	Arguments       : Form object's value
	Return Value	: Trimed value 
******************************************************************/

function trimString (str) 
{
	while (str.charAt(0) == ' ')
		str = str.substring(1);
  	while (str.charAt(str.length - 1) == ' ')
		str = str.substring(0, str.length - 1);
	return str;
}

/***************************************************************
	Script for checking the validity of E-Mail
	Function Name	: emailValid
	Arguments	: Name of the form object
		
/******************************************************************/
function emailValid(strObj)
	{
		email=strObj.value; //for getting the emailid
		iIndexAt = email.indexOf('@');  //getting the position of '@'
		iIndexDot = email.indexOf('.');  //getting the position of '.'
		afterDot =''; //for getting the char after '.'
		afterAt = ''; //for getting the char after '@'
		if(iIndexAt==-1)
		{	alert("Invalid Email Address");
			strObj.focus();
			return false;
		}

		if(email.charAt(0)=='@')
		{	alert("Invalid Email Address");
			strObj.focus();
			return false;
		}
		if(iIndexDot==-1)
		{	alert("Invalid Email Address");
			strObj.focus();
			return false;
		}
		
		if(iIndexAt>iIndexDot)
		{	alert("Invalid Email Address");
			strObj.focus();
			return false;
		}
		afterDot = email.charAt(iIndexDot+1)
		if((afterDot=="")||(afterDot==" "))
		{
			alert(" Invalid Email Address ");
			strObj.focus();
			return false;
		}
		afterAt = email.charAt(iIndexAt+1)
		if((afterAt==".")||(afterAt==" "))
		{
			alert(" Invalid Email Address ");
			strObj.focus();
			return false;
		}
		for(i=iIndexAt+1;i<email.length;i++)
		{
			if(email.charAt(i)=='@'){
				alert("The charecter '@' must not repeat")
				strObj.focus();
				return false
			}
		}
		i=iIndexDot+1
		if(email.charAt(i)=='.'){
			alert("The charecter '.' must not repeat")
			strObj.focus();
			return false
		}
		
		return true;
    } 
	
	/***************************************************************
	Script for checking the validity of E-Mail
	Function Name	: Phone no and Fax validation
	Arguments	: Name of the form object and the field name
		
/******************************************************************/
function phfaxValid(strObj,strName)
{
	var len=strObj.value.length;
	numVal="0123456 ()-789";
	for(i=0;i<len;i++)
	{	if(numVal.indexOf(strObj.value.charAt(i))==-1)
		{
			alert("the charecter '"+strObj.value.charAt(i)+"' is not alowed in the "+strName+" field");
			strObj.focus();
			return false;
		}
	}
	return true;
}

	/***************************************************************
	Script for checking the validity of Amount
	Function Name	: Amount validation
	Arguments	: Name of the form object and the field name
		
/******************************************************************/

function AmountValid(strObj,nameObj)
{
	
	var len=strObj.value.length;
	if(len!=0)
	{
		numVal="0123456789.";
		for(i=0;i<len;i++)
		{	if(numVal.indexOf(strObj.value.charAt(i))==-1)
			{
				alert(nameObj+" must be amount");
				strObj.value="";
				strObj.focus();
				return false;
			}
		}
		firstDot=strObj.value.indexOf(".");
		if(firstDot!=-1){
			if((firstDot+3)<len){
				alert("Only two digits after decimal"); 
				strObj.focus();
				return false;
			}
		}		
		dot=".";
		for(i=firstDot+1;i<len;i++)
		{	
			if(dot.indexOf(strObj.value.charAt(i))!=-1)
			{
				alert("The character '.' must not repeat");
				strObj.focus();
				return false;
			}
		}
	}
	return true;
}

	/***************************************************************
	Script for checking the validity of Numbers with out decimals
	Function Name	: Size validation
	Arguments	: Name of the form object and the field name
		
/******************************************************************/

function numberValid(strObj,nameObj)
{
	var len=strObj.value.length;
	if(len!=0)
	{
		numVal="0123456789";
		for(i=0;i<len;i++)
		{	if(numVal.indexOf(strObj.value.charAt(i))==-1)
			{
			alert(strObj);
				alert(nameObj+" must be numbers only");
				strObj.value="";
				strObj.focus();
				return false;
			}
		}
	}
	return true;
}