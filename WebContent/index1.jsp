
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<link href="css/style.css" rel='stylesheet' type='text/css' />
<meta name="viewport" content="width=device-width, initial-scale=1">
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!--webfonts-->
<link href='http://fonts.googleapis.com/css?family=Oxygen:400,300,700' rel='stylesheet' type='text/css'>
<!--//webfonts-->

<script type="text/javascript">
function myFunction1()
{
	
	if(document.form1.fname.value=="First Name")
		{
		alert("Fill Fname Field");
		document.form1.fname.focus();
		return false;
		}
	
	if(document.form1.password.value==" ")
	{
	alert("Fill Password Field");
	document.form1.password.focus();
	return false;
	}

	if(document.form1.slct.value=="select")
	{
	alert("Fill Branch Field");
	document.form1.slct.focus();
	return false;
	}

	if(document.form1.year.value=="choose")
	{
	alert("Fill Year Field");
	document.form1.year.focus();
	return false;
	}

	if(document.form1.semi.value=="choose")
	{
	alert("Fill Sem Field");
	document.form1.semi.focus();
	return false;
	}

	if(document.form1.userid.value==" ")
	{
	alert("Fill User-ID Field");
	document.form1.userid.focus();
	return false;
	}

	if(!document.form1.password.value==document.form1.conformpassword.value)
	{
	alert("Password and ConfirmPassword Mismatch");
	document.form1.password.focus();
	return false;
	}

	else{
		return true;
	}
	
	
	}

</script>

</head>
<body>
<div class="main">
	<div class="social-icons">
		 <div class="col_1_of_f span_1_of_f"><a href="#">
		    <ul class='facebook'>
		    	<i class="fb"> </i>
		    	<li>Connect with Facebook</li>
		    	<div class='clear'> </div>
		    </ul>
		    </a>
		 </div>	
		 <div class="col_1_of_f span_1_of_f"><a href="#">
		    <ul class='twitter'>
		      <i class="tw"> </i>
		      <li>Connect with Twitter</li>
		      <div class='clear'> </div>
		    </ul>
		    </a>
		</div>
		<div class="clear"> </div>	
      </div>
      <h2>Or Signup with</h2>
		<form action="Register" method="post" name="form1" onSubmit="return myFunction1()">
		   <div class="lable">
		        <div class="col_1_of_2 span_1_of_2">	<input type="text" class="text" value="First Name" name="fname" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'First Name';}" id="active"></div>
                <div class="col_1_of_2 span_1_of_2"><input type="text" class="text" value="Last Name" name="lname" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Last Name';}"></div>
                <div class="clear"> </div>
		   </div>
		   <div class="lable-2">
		        <input type="text" class="text" value="your@email.com " name="mailid"  onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'your@email.com ';}">
		        <input type="password" class="text" value="Password " name="password" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Password ';}">
		        
		       Branch: <select name="slct">
		       <option value="select">select</option>
		        <option value="CSE">CSE</option>
		        <option value="CSE">ECE</option>
		        <option value="CSE">EEE</option>
		        <option value="CSE">IT</option>
		        <option value="CSE">CIVIL</option>
		        <option value="CSE">MECHANICAL</option>
		        </select>
		        
		        
		        
		        Year: <select name="year">
		          <option value="choose">choose</option>
		        <option value="FIRST">FIRST</option>
		        <option value="SECOND">SECOND</option>
		        <option value="THIRD">THIRD</option>
		        <option value="FOURTH">FOURTH</option>
		       
		        </select>
		        
		        
		        Sem: <select name="semi">
		        <option value="choose">choose</option>
		        <option value="1">1</option>
		        <option value="2">2</option>
		       
		        </select>
		        
		         
		        
		            <input type="text" class="text"  value="conform password" name="conformpassword"  onfocus="this.value = '';" onblur="if (this.value == '') {this.value = ' ';}">
		         <table> <td><p>D.O.B</p></td><td>:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td><td>
  <select name="days" id="days">
  <%for(int i=1;i<=31;i++){ %>
  
  <option value="<%=i%>"><%=i %></option>
  <%} %>
  </select>
 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <select name="months">
  <%for(int i=1;i<=12;i++){ %>
  <option <%=i %>><%=i %></option>
  <%} %>
  </select>
  
 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <select name="years">
  <%for(int i=1970;i<=2020;i++){ %>
  <option value="<%=i%>"><%=i%></option>
  <%} %>
  </select>  
  </td>
 </table>
  <table><br>
 
 
<Tr>
								<Td>Gender</Td>&nbsp;&nbsp;&nbsp;&nbsp;
								<td>&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio" name="Gender" value="male" required="required">Male</input>
									&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio" name="Gender" value="female">FeMale</input></td>
							</Tr></table>
 
		         <input type="text" class="text" name="phoneno" value="phone number" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = ' ';}">
		         <input type="text" class="text" name="address" value="address"  onfocus="this.value = '';" onblur="if (this.value == '') {this.value = ' ';}">
		          <input type="text" class="text" name="userid" value="userid" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = ' ';}">
		   </div>
		   <h3>By creating an account, you agree to our <span class="term"><a href="#">Terms & Conditions</a></span></h3>
		   <div class="submit">
			  <input type="submit"  value="Create account" > 
			
		   </div>
		 <div id="ram">
			<center>  <a href="login.jsp">Login Here</a></center>
			  </div>
		   <div class="clear"> </div>
		</form>
		<!-----//end-main---->
		</div>
		 <!-----start-copyright---->
   		<div class="copy-right">
			<p>Template by <a href="">sivam</a></p> 
		</div>
				<!-----//end-copyright---->
</body>
</html>