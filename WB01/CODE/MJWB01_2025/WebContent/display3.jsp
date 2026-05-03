<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
       <%@page import="java.sql.*" %>
<%@page import="com.Database.DBConnection" %>


<%@page import="java.sql.ResultSet" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>External Score</title>
</head>
<body style="background-image:url('images/cld5.jpg')">
<style>

th{


background-color:#FFF59D;
color:#9C27B0;
font-size:19px;
text:italic;

}

td{
background-color:pink;
color:#E91E63;
font-size:19px;
text:italic;

}




</style>
<br/>
<h3 style="font-style:italic;font-size:26px;color:black;margin-left:46px;">External Score:</h3>

<center>


<%
String rslt2=request.getParameter("usrid2");

try{
	

DBConnection db=new DBConnection();
Connection connection=db.con();

PreparedStatement ps1=connection.prepareStatement("select * from collegesystem.external where userid='"+rslt2+"'");
ResultSet rs=ps1.executeQuery();

while(rs.next())
{
	
	String name=rs.getString(1);
	String userid=rs.getString(2);
	String branch=rs.getString(3);
	String year=rs.getString(4);
	String sem=rs.getString(5);
	String eng=rs.getString(6);
	String r1=rs.getString(7);
	String m1=rs.getString(8);
	String r2=rs.getString(9);
	String m2=rs.getString(10);
	String r3=rs.getString(11);
	String phy=rs.getString(12);
	String r4=rs.getString(13);
	String chem=rs.getString(14);
	String r5=rs.getString(15);
	String cmptr=rs.getString(16);
	String r6=rs.getString(17);
	String total=rs.getString(18);
	String prcnt=rs.getString(19);
	String perform=rs.getString(20);
	
	%>

	
	      <table width="79%" border="1">
	      
	      
          <tr><th>StudentName</th><th>User-ID<th>Branch</th><th>Year</th>
         <th>Semister</th><th>English</th><th>Result</th><th>Maths-1</th><th>Result</th><th>Maths-2</th></tr>
	
	     <tr><td><%=name %></td><td><%=userid %></td><td><%=branch %></td><td><%=year %></td>
	     <td><%=sem %></td><td><%=eng %></td><td><%=r1 %></td><td><%=m1 %></td><td><%=r2 %></td><td><%=m2 %></td></tr>
	
        <tr><th>Result</th><th>Physics</th><th>Result</th>
        <th>Chemistery</th><th>Result</th><th>Computers</th><th>Result</th><th>Total</th><th>Percentage</th><th>Performance</th></tr>
	
	
	   <tr><td><%=r3 %></td><td><%=phy %></td><td><%=r4 %></td>
	   <td><%=chem %></td><td><%=r5 %></td><td><%=cmptr %></td><td><%=r6 %></td><td><%=total %></td><td><%=prcnt %></td><td><%=perform %></td></tr>
		
       </table>
	<br/>
<%
}}catch(Exception e)
{
	e.printStackTrace();
}


%>


</center>



</body>
</html>