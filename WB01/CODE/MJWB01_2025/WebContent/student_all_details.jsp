<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
a{
    text-transform: uppercase;
    color: #00b6ff;
    font-weight: 100;
}


</style>

</head>

<body style="background-color:#eae6e0;"><center>

<%

String fname=request.getParameter("fname");
String lname=request.getParameter("lname");
String uid=request.getParameter("uid");
String branch=request.getParameter("branch");
String year=request.getParameter("year");
String smtr=request.getParameter("smtr");

%>

<br>
<br>
<table border="1">
<tr><td colspan="2"><marquee style="margin-left:24px;margin-right:14px;color:purple;width:340px;font-size:24px;">Select Category </marquee></td></tr>
<tr><td rowspan="3"><img src="images/std1.jpg" width="289px"></td><td>
<a href="attendence.jsp?fname=<%=fname %>&lname=<%=lname %>&uid=<%=uid %>&branch=<%=branch %>&year=<%=year %>&smtr=<%=smtr %>">Attendance</a></td></tr><br><br>


<tr><td><a href="internal.jsp?fname=<%=fname %>&lname=<%=lname %>&uid=<%=uid %>&branch=<%=branch %>&year=<%=year %>&smtr=<%=smtr %>">Internal</a></td></tr><br><br>

<tr><td><a href="externalpage.jsp?fname=<%=fname %>&lname=<%=lname %>&uid=<%=uid %>&branch=<%=branch %>&year=<%=year %>&smtr=<%=smtr %>">External</a></td></tr><br><br>

</table>
</center>
</body>
</html>