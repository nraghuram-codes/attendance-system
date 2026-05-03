<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>DEPARTMENT</title>
<script type="text/javascript">
function fn1()
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
<body>
<br/>

<%String dept=request.getQueryString(); 
String value=dept.toUpperCase();
%>
<br/><center>
<h3>Welcome To <%=value%> Department</h3>

<form action="cse.jsp?year="+year+"&semi="+semi+"" name="s" method="post" onSubmit="return fn1()">
<table><tr><td>
  Year: <select name="year">
		          <option value="choose">choose</option>
		        <option value="FIRST">FIRST</option>
		        <option value="SECOND">SECOND</option>
		        <option value="THIRD">THIRD</option>
		        <option value="FOURTH">FOURTH</option>
		       
		        </select>
		        </td></tr>
		        <br>
		        <br/>
		        <br/>
		        <tr><td>
		        Sem: <select name="semi">
		        <option value="choose">choose</option>
		        <option value="1">1</option>
		        <option value="2">2</option>
		       
		        </select>
		        </td></tr>
		        <tr><td><input type="submit" value="submit"/></td></tr>
		        
		  </table>   </form>  
</center>
<%
String yr=request.getParameter("year");
String sem=request.getParameter("semi");


%>
</body>
</html>