<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<!-- saved from url=(0044)http://www.nationsreach.org/lr/new_donor.asp -->
<HTML>
	<HEAD>
		<TITLE>Little Roses Welcomes you</TITLE>
		<META http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
		<LINK href="Registration_files/style.css" type="text/css" rel="stylesheet">
			<LINK href="Registration_files/main.css" type="text/css" rel="stylesheet">
				<LINK href="style/form_style.css" type="text/css" rel="stylesheet">
					
<script language="JavaScript">
<!--

function SymError()
{
  return true;
}

window.onerror = SymError;

//-->
</script>

<SCRIPT language="JavaScript" src=""></SCRIPT>
					<SCRIPT type="text/javascript">
<!--

function newImage(arg) {
	if (document.images) {
		rslt = new Image();
		rslt.src = arg;
		return rslt;
	}
}

function changeImages() {
	if (document.images && (preloadFlag == true)) {
		for (var i=0; i<changeImages.arguments.length; i+=2) {
			document[changeImages.arguments[i]].src = changeImages.arguments[i+1];
		}
	}
}

var preloadFlag = false;
function preloadImages() {
	if (document.images) {
		Menu_over = newImage("images/Menu-over.gif");
		LR_07_over = newImage("images/LR_07-over.gif");
		LR_08_over = newImage("images/LR_08-over.gif");
		LR_09_over = newImage("images/LR_09-over.gif");
		LR_10_over = newImage("images/LR_10-over.gif");
		LR_11_over = newImage("images/LR_11-over.gif");
		LR_12_over = newImage("images/LR_12-over.gif");
		LR_13_over = newImage("images/LR_13-over.gif");
		preloadFlag = true;
	}
}

// -->
					</SCRIPT>
					<SCRIPT language="JavaScript" src=""></SCRIPT>
					<SCRIPT language="JavaScript">
function autofill()
{
formObj = document.customerfrm;
if(formObj.fillfield.checked)
	{
	formObj.txtsaddress1.value = formObj.txtaddress1.value;
	formObj.txtsaddress2.value = formObj.txtaddress2.value;
	formObj.cbosstate.value = formObj.cbostate.value;
	formObj.cboscountry.value = formObj.cbocountry.value;
	formObj.txtszipcode.value  = formObj.txtzipcode.value;
	}
else
	{
	formObj.txtsaddress1.value = "";
	formObj.txtsaddress2.value = "";
	formObj.cbosstate.value = "-";
	formObj.cboscountry.value = "-";
	formObj.txtszipcode.value  = "";
	}
}

function inifocus()
{
var st;
var co;
document.customerfrm.txtcustid.focus();
if(getCookie("state") !=null)
{
//the variable st,co,sst,sco contains the index values of the respective drop down listbox
// The suffix 's' stands for Shipping
st=getCookie("state");
co=getCookie("country");
sst=getCookie("sstate");
sco=getCookie("scountry");
document.customerfrm.cbostate.options[st].selected=true;
document.customerfrm.cbocountry.options[co].selected=true;
document.customerfrm.cbosstate.options[sst].selected=true;
document.customerfrm.cboscountry.options[sco].selected=true;
}

}

function formvalidation()
{
var st;
var co;

formObj = document.customerfrm;

	if(checkEntry(formObj.txtcustid,"Username")==false) 
		return false;
	var username = trimString(formObj.txtcustid.value);
	var UserLength = username.length;
	
	if(UserLength < 5 ) 
	{
	alert("Username must be atleast of 5 characters");
	formObj.txtcustid.focus();
	return false;
	}
	
	if(checkEntry(formObj.txtpassword,"Password")==false)
		return false;
	if(!(confirmPwd(document.customerfrm)))
		return false;
	if(checkEntry(formObj.txtemail,"E-Mail")==false)
		return false;
	if(emailValid(formObj.txtemail)==false)
	    return false;
	if(checkEntry(formObj.txtpassword,"Password")==false)
		return false;
	if(checkEntry(formObj.txtusername,"Contact Name")==false)
		return false;
	if(checkEntry(formObj.txtaddress1,"Mail Street")==false)
		return false;
	if(checkEntry(formObj.txtaddress2,"Mail City")==false) 
		return false;
	if(formObj.cbostate.value == "-")
		{
		alert("Select mailing state")
		formObj.cbostate.focus();
		return false;
		}
	if(formObj.cbocountry.value == "-")
		{
		alert("Select mailing country")
		formObj.cbocountry.focus();
		return false;
		}
	if(checkEntry(formObj.txtzipcode,"Mail Zipcode")==false) 
		return false;
	if(checkEntry(formObj.txtsaddress1,"Ship Street")==false) 
		return false;
	if(checkEntry(formObj.txtsaddress2,"Ship City")==false) 
		return false;
		
	if(formObj.cbosstate.value == "-")
		{
		alert("Select shipping state")
		formObj.cbosstate.focus();
		return false;
		}
	if(formObj.cboscountry.value == "-")
		{
		alert("Select shipping country")
		formObj.cboscountry.focus();
		return false;
		}
	if(checkEntry(formObj.txtszipcode,"Shipping Zipcode")==false) 
		return false;
return true;
/*		
	else
	    
		document.cookie="state=" + document.customerfrm.cbostate.selectedIndex;
		document.cookie="country=" + document.customerfrm.cbocountry.selectedIndex;
		document.cookie="sstate=" + document.customerfrm.cbosstate.selectedIndex;
		document.cookie="scountry=" + document.customerfrm.cboscountry.selectedIndex;
		document.customerfrm.submit();
*/
}
					</SCRIPT>
					<SCRIPT language="JavaScript">
// JavaScript Document
function checkmailstate()
{

formObj = document.customerfrm;
	var len = formObj.cbostate.length;
	len = len - 1

	if (formObj.cbostate.options[0].selected == false)
	formObj.cbocountry.options[1].selected=true;
	if (formObj.cbostate.options[len].selected == true)
	formObj.cbocountry.options[0].selected=true;
	if (formObj.cbostate.options[0].selected == true)
	formObj.cbocountry.options[0].selected=true;
}

function checkshipstate()
{

formObj = document.customerfrm;
	var len = formObj.cbosstate.length;
	len = len - 1

	if (formObj.cbosstate.options[0].selected == false)
	formObj.cboscountry.options[1].selected=true;
	if (formObj.cbosstate.options[len].selected == true)
	formObj.cboscountry.options[0].selected=true;
	if (formObj.cbosstate.options[0].selected == true)
	formObj.cboscountry.options[0].selected=true;
}

function checkmailcountry()
{
formObj = document.customerfrm;

	var len = formObj.cbostate.length;
	len = len - 1

if(formObj.cbocountry.selectedIndex == 1)
	{
	if(formObj.cbostate.options[len].selected==true)
	 {
	  formObj.cbostate.options[0].selected=true;
	 }
	}
	
if(formObj.cbocountry.selectedIndex != 1)
	{
	formObj.cbostate.options[len].selected=true;
	}

}

function checkshipcountry()
{
formObj = document.customerfrm;

	var len = formObj.cbosstate.length;
	len = len - 1

if(formObj.cboscountry.selectedIndex == 1)
	{
	if(formObj.cbosstate.options[len].selected==true)
	 {
	  formObj.cbosstate.options[0].selected=true;
	 }
	}
	
if(formObj.cboscountry.selectedIndex != 1)
	{
	formObj.cbosstate.options[len].selected=true;
	}

}

function confirmPwd(strobj)
{
	var formObj = strobj;
	var pwd = formObj.txtpassword.value;
	var conPwd = formObj.txtcpassword.value;
	var iPassLength = pwd.length;
	if((iPassLength>=6)&&(iPassLength<12))
	{
		if(pwd==conPwd)
				return true;
		else		
		{
			alert("Password re-typed does not match");				
			formObj.txtcpassword.value="";
			formObj.txtpassword.focus();
			return false;
		}
	}
	else
		{
			alert("password must be atleast of 6 characters and not more than 12")
			formObj.txtcpassword.value="";
			formObj.txtpassword.value="";
			formObj.txtpassword.focus();
			return false;
		}
	return true;	
}

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
				alert("The character '@' must not repeat")
				strObj.focus();
				return false
			}
		}
		i=iIndexDot+1
		if(email.charAt(i)=='.'){
			alert("The character '.' must not repeat")
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
	Script for checking the validity of Amount
	Function Name	: Percentage validation
	Arguments	: Name of the form object and the field name
		
/******************************************************************/

function PercentValid(strObj,nameObj)
{
	var len=strObj.value.length;
	if(len!=0)
	{
		numVal="0123456789.";
		for(i=0;i<len;i++)
		{	if(numVal.indexOf(strObj.value.charAt(i))==-1)
			{
				alert(nameObj+" must be percentage");
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
		
		if(strObj.value > 99.99)
		{
				alert(nameObj +" is not a valid Percentage");
				strObj.value="";
				strObj.focus();
				return false;
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
				alert(nameObj+" must be numbers only");
				strObj.value="";
				strObj.focus();
				return false;
			}
		}
	}
	return true;
}


					</SCRIPT>
					<META content="MSHTML 6.00.2900.2180" name="GENERATOR"></HEAD>
	<BODY leftMargin="0" topMargin="0" onload="preloadImages();" marginwidth="0" marginheight="0">
		<TABLE cellSpacing="0" cellPadding="0" width="780" align="center" border="0">
			<TBODY>
				<TR>
					<TD vAlign="top">
						<TABLE cellSpacing="0" cellPadding="0" width="780" align="center" border="0">
							<TBODY>
								<TR>
									<TD vAlign="top" background="Registration_files/bg-length.gif" colSpan="8"><TABLE cellSpacing="0" cellPadding="0" width="780" align="center" border="0">
											<TBODY>
												<TR>
													<TD vAlign="top" width="1" bgColor="#ebcfbf"></TD>
													<TD class="body_text" vAlign="top" width="779" background="Registration_files/bg-length.gif"><BR>
														<BR>
														<TABLE cellSpacing="0" cellPadding="0" width="779" align="center" border="0">
															<TBODY>
																<TR>
																	<TD vAlign="top" width="32" background="Registration_files/bg-length.gif">&nbsp;</TD>
																	<TD class="body_text" vAlign="top" width="730">
																		
																		
																		
																		
																		<FORM name="customerfrm" action="insert_registration.asp" method="post">
																			<TABLE cellSpacing="0" cellPadding="3" width="510" align="center" bgColor="#f2f9ff">
																				<TBODY>
																					<tr>
																						<td valign="top"><a href="donation.asp">Registered members Click Here</a></td>
																					</tr>
																					<TR>
																						<TD bgColor="#333333" colSpan="3" height="1"></TD>
																					</TR>
																					<TR>
																						<TD align="middle" bgColor="#0094d6" colSpan="3" height="30">&nbsp;<FONT color="#ffffff" size="2"><B>New 
																									Member Registration</B></FONT></TD>
																					</TR>
																					<TR>
																						<TD bgColor="#333333" colSpan="3" height="1"></TD>
																					</TR>
																					<TR>
																						<TD class="box1_text" align="left" colSpan="3" height="18">Please fill the below 
																							registration form to register as a new customer
																						</TD>
																					</TR>
																					<TR>
																						<TD vAlign="top" align="middle" colSpan="3">
																							<TABLE align="center" border="0">
																								<TBODY>
																									<TR>
																										<TD bgColor="#7d7d7d" colSpan="2" height="0.25"></TD>
																									</TR>
																									<TR>
																										<TD class="body_text" colSpan="2" height="21"><B>Account Details :</B></TD>
																									</TR>
																									<TR>
																										<TD class="feedback_field" align="right" width="194" height="27">User Name :
																										</TD>
																										<TD><INPUT class="form_textbox" maxLength="15" size="18" name="txtcustid">
																										</TD>
																									</TR>
																									<TR>
																										<TD class="feedback_field" align="right" width="194" height="27">Password :</TD>
																										<TD><INPUT class="form_textbox" type="password" maxLength="12" size="15" name="txtpassword"></TD>
																									</TR>
																									<TR>
																										<TD class="feedback_field" align="right" width="194" height="27">Confirm Password :</TD>
																										<TD><INPUT class="form_textbox" type="password" maxLength="12" size="15" name="txtcpassword">
																										</TD>
																									</TR>
																									<TR>
																										<TD class="feedback_field" align="right" width="194" height="28">Email ID :</TD>
																										<TD width="285"><INPUT class="form_textbox" maxLength="75" size="35" name="txtemail"></TD>
																									</TR>
																									<TR>
																										<TD class="feedback_field" align="right" width="194" height="27">Contact Name :</TD>
																										<TD><INPUT class="form_textbox" maxLength="40" name="txtusername">
																										</TD>
																									</TR>
																									<TR>
																										<TD colSpan="2" height="5"></TD>
																									</TR>
																									<TR>
																										<TD bgColor="#7d7d7d" colSpan="2" height="1"></TD>
																									</TR>
																									<TR>
																										<TD colSpan="2" height="5"></TD>
																									</TR>
																									<TR>
																										<TD class="regsubtitle" colSpan="2" height="22"><FONT class="body_text"><B>Mailing Details 
																													:</B></FONT></TD>
																									</TR>
																									<TR>
																										<TD class="feedback_field" align="right" width="194" height="27">Street :</TD>
																										<TD width="285"><INPUT class="form_textbox" maxLength="30" size="30" name="txtaddress1">
																										</TD>
																									</TR>
																									<TR>
																										<TD class="feedback_field" align="right" width="194" height="26">City :</TD>
																										<TD width="285"><INPUT class="form_textbox" maxLength="30" size="30" name="txtaddress2"></TD>
																									</TR>
																									<TR>
																										<TD class="feedback_field" align="right" width="194" height="27">State :</TD>
																										<TD width="285"><INPUT class="form_textbox" maxLength="20" size="30" name="cbostate"></TD>
																									</TR>
																									<TR>
																										<TD class="feedback_field" align="right" width="194" height="27">Country :</TD>
																										<TD width="285"><SELECT onchange="checkmailcountry()" name="cbocountry">
																												<OPTION value="-" selected>--select country--</OPTION>
																												<OPTION value="United States">United States</OPTION>
																												<OPTION value="Albania">Albania</OPTION>
																												<OPTION value="Algeria">Algeria</OPTION>
																												<OPTION value="American Samoa">American Samoa</OPTION>
																												<OPTION value="Andorra">Andorra</OPTION>
																												<OPTION value="Angola">Angola</OPTION>
																												<OPTION value="Anguilla">Anguilla</OPTION>
																												<OPTION value="Antarctica">Antarctica</OPTION>
																												<OPTION value="Antigua And Barbuda">Antigua And Barbuda</OPTION>
																												<OPTION value="Argentina">Argentina</OPTION>
																												<OPTION value="Armenia">Armenia</OPTION>
																												<OPTION value="Aruba">Aruba</OPTION>
																												<OPTION value="Australia">Australia</OPTION>
																												<OPTION value="Austria">Austria</OPTION>
																												<OPTION value="Azerbaijan">Azerbaijan</OPTION>
																												<OPTION value="Bahamas">Bahamas</OPTION>
																												<OPTION value="Bahrain">Bahrain</OPTION>
																												<OPTION value="Bangladesh">Bangladesh</OPTION>
																												<OPTION value="Barbados">Barbados</OPTION>
																												<OPTION value="Belarus">Belarus</OPTION>
																												<OPTION value="Belgium">Belgium</OPTION>
																												<OPTION value="Belize">Belize</OPTION>
																												<OPTION value="Benin">Benin</OPTION>
																												<OPTION value="Bermuda">Bermuda</OPTION>
																												<OPTION value="Bhutan">Bhutan</OPTION>
																												<OPTION value="Bolivia">Bolivia</OPTION>
																												<OPTION value="Bosnia">Bosnia and Herzegovina</OPTION>
																												<OPTION value="Botswana">Botswana</OPTION>
																												<OPTION value="Bouvet Island">Bouvet Island</OPTION>
																												<OPTION value="Brazil">Brazil</OPTION>
																												<OPTION value="British Indian Ocean Territory">British Indian Ocean Territory</OPTION>
																												<OPTION value="Brunei">Brunei</OPTION>
																												<OPTION value="Bulgaria">Bulgaria</OPTION>
																												<OPTION value="Burkina Faso">Burkina Faso</OPTION>
																												<OPTION value="Burundi">Burundi</OPTION>
																												<OPTION value="Cambodia">Cambodia</OPTION>
																												<OPTION value="Cameroon">Cameroon</OPTION>
																												<OPTION value="Canada">Canada</OPTION>
																												<OPTION value="Cape Verde">Cape Verde</OPTION>
																												<OPTION value="Cayman Islands">Cayman Islands</OPTION>
																												<OPTION value="Central African Republic">Central African Republic</OPTION>
																												<OPTION value="Chad">Chad</OPTION>
																												<OPTION value="Chile">Chile</OPTION>
																												<OPTION value="China">China</OPTION>
																												<OPTION value="Christmas Island">Christmas Island</OPTION>
																												<OPTION value="Cocos (Keeling) Islands">Cocos (Keeling) Islands</OPTION>
																												<OPTION value="Colombia">Colombia</OPTION>
																												<OPTION value="Comoros">Comoros</OPTION>
																												<OPTION value="Congo">Congo</OPTION>
																												<OPTION value="Congo, Democractic Republic">Congo, Democractic Republic</OPTION>
																												<OPTION value="Cook Islands">Cook Islands</OPTION>
																												<OPTION value="Costa Rica">Costa Rica</OPTION>
																												<OPTION value="Cote D'Ivoire (Ivory Coast)">Cote D'Ivoire (Ivory Coast)</OPTION>
																												<OPTION value="Croatia (Hrvatska)">Croatia (Hrvatska)</OPTION>
																												<OPTION value="Cuba">Cuba</OPTION>
																												<OPTION value="Cyprus">Cyprus</OPTION>
																												<OPTION value="Czech Republic">Czech Republic</OPTION>
																												<OPTION value="Denmark">Denmark</OPTION>
																												<OPTION value="Djibouti">Djibouti</OPTION>
																												<OPTION value="Dominica">Dominica</OPTION>
																												<OPTION value="Dominican Republic">Dominican Republic</OPTION>
																												<OPTION value="East Timor">East Timor</OPTION>
																												<OPTION value="Ecuador">Ecuador</OPTION>
																												<OPTION value="Egypt">Egypt</OPTION>
																												<OPTION value="El Salvador">El Salvador</OPTION>
																												<OPTION value="Equatorial Guinea">Equatorial Guinea</OPTION>
																												<OPTION value="Eritrea">Eritrea</OPTION>
																												<OPTION value="Estonia">Estonia</OPTION>
																												<OPTION value="Ethiopia">Ethiopia</OPTION>
																												<OPTION value="Falkland Islands (Islas Malvinas)">Falkland Islands (Islas Malvinas)</OPTION>
																												<OPTION value="Faroe Islands">Faroe Islands</OPTION>
																												<OPTION value="Fiji Islands">Fiji Islands</OPTION>
																												<OPTION value="Finland">Finland</OPTION>
																												<OPTION value="France">France</OPTION>
																												<OPTION value="French Guiana">French Guiana</OPTION>
																												<OPTION value="French Polynesia">French Polynesia</OPTION>
																												<OPTION value="French Southern Territories">French Southern Territories</OPTION>
																												<OPTION value="Gabon">Gabon</OPTION>
																												<OPTION value="Gambia">Gambia</OPTION>
																												<OPTION value="Georgia">Georgia</OPTION>
																												<OPTION value="Germany">Germany</OPTION>
																												<OPTION value="Ghana">Ghana</OPTION>
																												<OPTION value="Gibraltar">Gibraltar</OPTION>
																												<OPTION value="Greece">Greece</OPTION>
																												<OPTION value="Greenland">Greenland</OPTION>
																												<OPTION value="Grenada">Grenada</OPTION>
																												<OPTION value="Guadeloupe">Guadeloupe</OPTION>
																												<OPTION value="Guam">Guam</OPTION>
																												<OPTION value="Guatemala">Guatemala</OPTION>
																												<OPTION value="Guinea">Guinea</OPTION>
																												<OPTION value="Guinea-Bissau">Guinea-Bissau</OPTION>
																												<OPTION value="Guyana">Guyana</OPTION>
																												<OPTION value="Haiti">Haiti</OPTION>
																												<OPTION value="Heard and McDonald Islands">Heard and McDonald Islands</OPTION>
																												<OPTION value="Honduras">Honduras</OPTION>
																												<OPTION value="Hong Kong S.A.R.">Hong Kong S.A.R.</OPTION>
																												<OPTION value="Hungary">Hungary</OPTION>
																												<OPTION value="Iceland">Iceland</OPTION>
																												<OPTION value="India">India</OPTION>
																												<OPTION value="Indonesia">Indonesia</OPTION>
																												<OPTION value="Iran">Iran</OPTION>
																												<OPTION value="Iraq">Iraq</OPTION>
																												<OPTION value="Ireland">Ireland</OPTION>
																												<OPTION value="Israel">Israel</OPTION>
																												<OPTION value="Italy">Italy</OPTION>
																												<OPTION value="Jamaica">Jamaica</OPTION>
																												<OPTION value="Japan">Japan</OPTION>
																												<OPTION value="Jordan">Jordan</OPTION>
																												<OPTION value="Kazakhstan">Kazakhstan</OPTION>
																												<OPTION value="Kenya">Kenya</OPTION>
																												<OPTION value="Kiribati">Kiribati</OPTION>
																												<OPTION value="Korea">Korea</OPTION>
																												<OPTION value="Korea, North">Korea, North</OPTION>
																												<OPTION value="Kuwait">Kuwait</OPTION>
																												<OPTION value="Kyrgyzstan">Kyrgyzstan</OPTION>
																												<OPTION value="Laos">Laos</OPTION>
																												<OPTION value="Latvia">Latvia</OPTION>
																												<OPTION value="Lebanon">Lebanon</OPTION>
																												<OPTION value="Lesotho">Lesotho</OPTION>
																												<OPTION value="Liberia">Liberia</OPTION>
																												<OPTION value="Libya">Libya</OPTION>
																												<OPTION value="Liechtenstein">Liechtenstein</OPTION>
																												<OPTION value="Lithuania">Lithuania</OPTION>
																												<OPTION value="Luxembourg">Luxembourg</OPTION>
																												<OPTION value="Macau S.A.R.">Macau S.A.R.</OPTION>
																												<OPTION value="Macedonia, Former Yugoslav">Macedonia, Former Yugoslav</OPTION>
																												<OPTION value="Madagascar">Madagascar</OPTION>
																												<OPTION value="Malawi">Malawi</OPTION>
																												<OPTION value="Malaysia">Malaysia</OPTION>
																												<OPTION value="Maldives">Maldives</OPTION>
																												<OPTION value="Mali">Mali</OPTION>
																												<OPTION value="Malta">Malta</OPTION>
																												<OPTION value="Marshall Islands">Marshall Islands</OPTION>
																												<OPTION value="Martinique">Martinique</OPTION>
																												<OPTION value="Mauritania">Mauritania</OPTION>
																												<OPTION value="Mauritius">Mauritius</OPTION>
																												<OPTION value="Mayotte">Mayotte</OPTION>
																												<OPTION value="Mexico">Mexico</OPTION>
																												<OPTION value="Micronesia">Micronesia</OPTION>
																												<OPTION value="Moldova">Moldova</OPTION>
																												<OPTION value="Monaco">Monaco</OPTION>
																												<OPTION value="Mongolia">Mongolia</OPTION>
																												<OPTION value="Montserrat">Montserrat</OPTION>
																												<OPTION value="Morocco">Morocco</OPTION>
																												<OPTION value="Mozambique">Mozambique</OPTION>
																												<OPTION value="Myanmar">Myanmar</OPTION>
																												<OPTION value="Namibia">Namibia</OPTION>
																												<OPTION value="Nauru">Nauru</OPTION>
																												<OPTION value="Nepal">Nepal</OPTION>
																												<OPTION value="Netherlands Antilles">Netherlands Antilles</OPTION>
																												<OPTION value="Netherlands">Netherlands</OPTION>
																												<OPTION value="New Caledonia">New Caledonia</OPTION>
																												<OPTION value="New Zealand">New Zealand</OPTION>
																												<OPTION value="Nicaragua">Nicaragua</OPTION>
																												<OPTION value="Niger">Niger</OPTION>
																												<OPTION value="Nigeria">Nigeria</OPTION>
																												<OPTION value="Niue">Niue</OPTION>
																												<OPTION value="Norfolk Island">Norfolk Island</OPTION>
																												<OPTION value="Northern Mariana Islands">Northern Mariana Islands</OPTION>
																												<OPTION value="Norway">Norway</OPTION>
																												<OPTION value="Oman">Oman</OPTION>
																												<OPTION value="Pakistan">Pakistan</OPTION>
																												<OPTION value="Palau">Palau</OPTION>
																												<OPTION value="Panama">Panama</OPTION>
																												<OPTION value="Papua new Guinea">Papua new Guinea</OPTION>
																												<OPTION value="Paraguay">Paraguay</OPTION>
																												<OPTION value="Peru">Peru</OPTION>
																												<OPTION value="Philippines">Philippines</OPTION>
																												<OPTION value="Pitcairn Island">Pitcairn Island</OPTION>
																												<OPTION value="Poland">Poland</OPTION>
																												<OPTION value="Portugal">Portugal</OPTION>
																												<OPTION value="Puerto Rico">Puerto Rico</OPTION>
																												<OPTION value="Qatar">Qatar</OPTION>
																												<OPTION value="Reunion">Reunion</OPTION>
																												<OPTION value="Romania">Romania</OPTION>
																												<OPTION value="Russia">Russia</OPTION>
																												<OPTION value="Rwanda">Rwanda</OPTION>
																												<OPTION value="Saint Helena">Saint Helena</OPTION>
																												<OPTION value="Saint Kitts And Nevis">Saint Kitts And Nevis</OPTION>
																												<OPTION value="Saint Lucia">Saint Lucia</OPTION>
																												<OPTION value="Saint Pierre and Miquelon">Saint Pierre and Miquelon</OPTION>
																												<OPTION value="Saint Vincent And The Grenadines">Saint Vincent And The Grenadines</OPTION>
																												<OPTION value="Samoa">Samoa</OPTION>
																												<OPTION value="San Marino">San Marino</OPTION>
																												<OPTION value="Sao Tome and Principe">Sao Tome and Principe</OPTION>
																												<OPTION value="Saudi Arabia">Saudi Arabia</OPTION>
																												<OPTION value="Senegal">Senegal</OPTION>
																												<OPTION value="Seychelles">Seychelles</OPTION>
																												<OPTION value="Sierra Leone">Sierra Leone</OPTION>
																												<OPTION value="Singapore">Singapore</OPTION>
																												<OPTION value="Slovakia">Slovakia</OPTION>
																												<OPTION value="Slovenia">Slovenia</OPTION>
																												<OPTION value="Solomon Islands">Solomon Islands</OPTION>
																												<OPTION value="Somalia">Somalia</OPTION>
																												<OPTION value="South Africa">South Africa</OPTION>
																												<OPTION value="South Georgia">South Georgia</OPTION>
																												<OPTION value="Spain">Spain</OPTION>
																												<OPTION value="Sri Lanka">Sri Lanka</OPTION>
																												<OPTION value="Sudan">Sudan</OPTION>
																												<OPTION value="Suriname">Suriname</OPTION>
																												<OPTION value="Svalbard And Jan Mayen Islands">Svalbard And Jan Mayen Islands</OPTION>
																												<OPTION value="Swaziland">Swaziland</OPTION>
																												<OPTION value="Sweden">Sweden</OPTION>
																												<OPTION value="Switzerland">Switzerland</OPTION>
																												<OPTION value="Syria">Syria</OPTION>
																												<OPTION value="Taiwan">Taiwan</OPTION>
																												<OPTION value="Tajikistan">Tajikistan</OPTION>
																												<OPTION value="Tanzania">Tanzania</OPTION>
																												<OPTION value="Thailand">Thailand</OPTION>
																												<OPTION value="Togo">Togo</OPTION>
																												<OPTION value="Tokelau">Tokelau</OPTION>
																												<OPTION value="Tonga">Tonga</OPTION>
																												<OPTION value="Trinidad And Tobago">Trinidad And Tobago</OPTION>
																												<OPTION value="Tunisia">Tunisia</OPTION>
																												<OPTION value="Turkey">Turkey</OPTION>
																												<OPTION value="Turkmenistan">Turkmenistan</OPTION>
																												<OPTION value="Turks And Caicos Islands">Turks And Caicos Islands</OPTION>
																												<OPTION value="Tuvalu">Tuvalu</OPTION>
																												<OPTION value="Uganda">Uganda</OPTION>
																												<OPTION value="Ukraine">Ukraine</OPTION>
																												<OPTION value="United Arab Emirates">United Arab Emirates</OPTION>
																												<OPTION value="United Kingdom">United Kingdom</OPTION>
																												<OPTION value="United States Minor Outlying Islands">United States Minor Outlying 
																													Islands</OPTION>
																												<OPTION value="Uruguay">Uruguay</OPTION>
																												<OPTION value="Uzbekistan">Uzbekistan</OPTION>
																												<OPTION value="Vanuatu">Vanuatu</OPTION>
																												<OPTION value="Vatican City State (Holy See)">Vatican City State (Holy See)</OPTION>
																												<OPTION value="Venezuela">Venezuela</OPTION>
																												<OPTION value="Vietnam">Vietnam</OPTION>
																												<OPTION value="Virgin Islands (British)">Virgin Islands (British)</OPTION>
																												<OPTION value="Virgin Islands (US)">Virgin Islands (US)</OPTION>
																												<OPTION value="Wallis And Futuna Islands">Wallis And Futuna Islands</OPTION>
																												<OPTION value="Yemen">Yemen</OPTION>
																												<OPTION value="Yugoslavia">Yugoslavia</OPTION>
																												<OPTION value="Zambia">Zambia</OPTION>
																												<OPTION value="Zimbabwe">Zimbabwe</OPTION>
																											</SELECT>
																										</TD>
																									</TR>
																									<TR>
																										<TD class="feedback_field" align="right" width="194" height="26">Zip Code :</TD>
																										<TD width="285"><INPUT class="form_textbox" maxLength="15" size="15" name="txtzipcode"></TD>
																									</TR>
																									<TR>
																										<TD colSpan="2" height="5"></TD>
																									</TR>
																									<TR>
																										<TD bgColor="#7d7d7d" colSpan="2" height="0.25"></TD>
																									</TR>
																									<TR>
																										<TD class="regsubtitle" colSpan="4" height="25"><FONT class="body_text"><B>Other 
																													Informations :</B></FONT></TD>
																									</TR>
																									<TR>
																										<TD class="feedback_field" align="right" width="194" height="28">Phone :</TD>
																										<TD width="285"><INPUT class="form_textbox" maxLength="30" size="25" name="txtphone">
																										</TD>
																									</TR>
																									<TR>
																										<TD class="feedback_field" align="right" width="194" height="27">Fax :</TD>
																										<TD width="285"><INPUT class="form_textbox" maxLength="30" size="25" name="txtfax">
																										</TD>
																									</TR>
																									<TR>
																										<TD colSpan="2" height="26">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
																											&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
																											&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<INPUT class="pagebutton" onclick="javascript:return formvalidation()" type="submit" value="Submit"
																												name="button">&nbsp;&nbsp; <INPUT class="pagebutton" type="reset" value="Reset" name="button">
																										</TD>
																									</TR>
																									<TR>
																										<TD colSpan="2" height="5"></TD>
																									</TR>
																									<TR>
																										<TD bgColor="#3399ff" colSpan="2" height="5"></TD>
																									</TR>
																								</TBODY></TABLE>
																						</TD>
																					</TR>
																				</TBODY></TABLE>
																		</FORM>
																		<BR>
																		<BR>
																	</TD>
																	<TD width="32">&nbsp;</TD>
																	<TD width="1" bgColor="#ebcfbf"></TD>
																</TR>
															</TBODY></TABLE>
													</TD>
													<TD width="1" bgColor="#ebcfbf"></TD>
												</TR>
											</TBODY></TABLE>
									</TD>
								</TR>
							</TBODY></TABLE>
					</TD>
				</TR>
			</TBODY></TABLE>
	</BODY>
</HTML>
