<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Reference Page</title>
</head>
<body style="background-image:url('images/cld5.jpg');">
<%

String reply=request.getQueryString();
System.out.print("select condition:"+reply);

%>

<br>
<br/>

<center>
<% 

if(reply.equals("attendence"))
{%>
<br/>
<marquee style="margin-left:200px;margin-right: 200px;"><h3 style="font-style:italic;font-size:22px;color:#f20b23; ">Enter Valid User-ID</h3> </marquee>
<br/>
<br/><br/>
<form action="Attendencedisplay" method="post">
<table border="0">
<tr><td colspan="2"><img src="images/std1.jpg" height="187px" width="100%"/></td></tr>
<tr></tr><tr></tr><tr></tr><tr></tr>
<tr></tr><tr></tr><tr></tr><tr></tr>
<tr></tr><tr></tr><tr></tr><tr></tr>
<tr><td style="font-style:italic;font-size:22px;">Enter Your User-id :</td>
<td><input type="text" name="id1"/></td></tr>
<tr></tr><tr></tr><tr></tr><tr></tr>
<tr></tr><tr></tr><tr></tr><tr></tr>
<tr></tr><tr></tr><tr></tr><tr></tr>
<tr></tr><tr></tr><tr></tr><tr></tr>
<tr></tr>

<tr><td></td><td><input type="submit" value="submit"/></td></tr>
</table>
</form>
<%}%>

<%
if(reply.equals("internal"))
{
	 %>
	 <br/>
<marquee style="margin-left:200px;margin-right: 200px;"><h3 style="font-style:italic;font-size:22px;color:#f20b23; ">Enter Valid User-ID</h3> </marquee>
<br/>
<br/><br/>
	 
<form action="Internaldisplay" method="post">
<table border="0">
<tr><td colspan="2"><img src="images/std1.jpg" height="187px" width="100%"/></td></tr>
<tr></tr><tr></tr><tr></tr><tr></tr>
<tr></tr><tr></tr><tr></tr><tr></tr>
<tr></tr><tr></tr><tr></tr><tr></tr>
<tr><td style="font-style:italic;font-size:22px;">Enter Your User-id :</td>
<td><input type="text" name="id2"/></td></tr>
<tr></tr><tr></tr><tr></tr><tr></tr>
<tr></tr><tr></tr><tr></tr><tr></tr>
<tr></tr><tr></tr><tr></tr><tr></tr>
<tr></tr><tr></tr><tr></tr><tr></tr>
<tr></tr>

<tr><td></td><td><input type="submit" value="submit"/></td></tr>
</table>
</form>
<%}%>
<% 
if(reply.equals("external"))
{%>
<br/>
<marquee style="margin-left:200px;margin-right: 200px;"><h3 style="font-style:italic;font-size:22px;color:#f20b23; ">Enter Valid User-ID</h3> </marquee>
<br/>
<br/><br/>
<form action="Externaldisplay" method="post">
<table border="0">
<tr><td colspan="2"><img src="images/std1.jpg" height="187px" width="100%"/></td></tr>
<tr></tr><tr></tr><tr></tr><tr></tr>
<tr></tr><tr></tr><tr></tr><tr></tr>
<tr></tr><tr></tr><tr></tr><tr></tr>
<tr><td style="font-style:italic;font-size:22px;">Enter Your User-id :</td>
<td><input type="text" name="id3"/></td></tr>
<tr></tr><tr></tr><tr></tr><tr></tr>
<tr></tr><tr></tr><tr></tr><tr></tr>
<tr></tr><tr></tr><tr></tr><tr></tr>
<tr></tr><tr></tr><tr></tr><tr></tr>
<tr></tr>

<tr><td></td><td><input type="submit" value="submit"/></td></tr>
</table>
</form>
<%}%>

</center>
</body>
</html>