<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>DEPARTMENT PAGE</title>
<script type="text/javascript">
function onFn()
{
	
	if(document.s.year.value=="choose")
	{
	alert("Fill Year Field");
	document.s.year.focus();
	return false;
	}

	if(document.s.semi.value=="choose")
	{
	alert("Fill Sem Field");
	document.s.semi.focus();
	return false;
	}
	else{
		return true;
	}

	}</script>
</head>
<body style="background-color:#e1c8d3;">
<br/>

<%String dept=request.getQueryString(); 
String value=dept.toUpperCase();

HttpSession deptsession=request.getSession(false);
deptsession.setAttribute("value", value);
%>
<br/><center>
<h2 style="font-style:italic;color:#3d79e0;">Welcome To <%=value%> Department</h2>
<br/><br/>
<form action="cse.jsp" name="s" method="post" onSubmit="return onFn()">
<table border="0"><tr><td>
  <h3>Year: <select name="year">
		          <option value="choose">choose</option>
		        <option value="FIRST">FIRST</option>
		        <option value="SECOND">SECOND</option>
		        <option value="THIRD">THIRD</option>
		        <option value="FOURTH">FOURTH</option>
		       
		        </select></h3>
		        </td></tr>
		        <tr></tr><tr></tr>
		        <tr></tr><tr></tr>
		         <tr></tr><tr></tr> 
		        <tr><td>
		       <h3>Sem: <select name="semi">
		        <option value="choose">choose</option>
		        <option value="1">1</option>
		        <option value="2">2</option>
		       
		        </select></h3>
		        </td></tr>
		         <tr></tr><tr></tr>
		        <tr></tr><tr></tr>
		        <tr></tr><tr></tr>
		        <tr></tr><tr></tr>
		        <tr></tr><tr></tr>
		        
		       
		        <tr><td><input type="submit" value="submit"/></td></tr>
		        
		  </table> 
		  </form>    
</center>

</body>
</html>