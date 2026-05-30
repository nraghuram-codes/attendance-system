<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@page import="java.sql.*" %>
<%@page import="com.Database.DBConnection" %>


<%@page import="java.sql.ResultSet" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Attendance Report</title>
</head>
<body style="background-image:url('images/cld5.jpg')">
<style>

th{


background-color:yellow;
color:#8973B4;
font-size:16px;
text:italic;

}

td{
background-color:#f2bad3;
color:#D82041;
font-size:19px;
text:italic;

}




</style>

<br/>
<%String rslt=request.getParameter("usrid");
%>

<h3 style="font-style:italic;font-size:26px;color:black;margin-left:114px;">Attendence Details:</h3>

<center>

<table width="79%" border="1">
<tr><th>StudentName</th><th>Branch</th><th>Year</th><th>Semister</th><th>Month</th>
<th>No. Of Presents</th><th>Total WorkingDays</th><th>Percentage</th><th>Performance</th></tr>

<%


try{
	

DBConnection db=new DBConnection();
Connection connection=db.con();

PreparedStatement ps1=connection.prepareStatement("select * from collegesystem.attendence where userid='"+rslt+"'");
ResultSet rs=ps1.executeQuery();

while(rs.next())
{
	String name=rs.getString(1);
	String branch=rs.getString(2);
	String year=rs.getString(3);
	String sem=rs.getString(4);
	String month=rs.getString(6);
	String present=rs.getString(7);
	String workingdays=rs.getString(8);
	String percentage=rs.getString(9);
	String performance=rs.getString(10);
	%>
	
	<tr><td><%=name %></td><td><%=branch %></td><td><%=year %></td><td><%=sem %></td>
	<td><%=month %></td><td><%=present %></td><td><%=workingdays %></td><td><%=percentage %></td><td><%=performance %></td></tr>
	
	
<%
}}catch(Exception e)
{
	e.printStackTrace();
}


%>

</table>
</center>





</body>
</html>