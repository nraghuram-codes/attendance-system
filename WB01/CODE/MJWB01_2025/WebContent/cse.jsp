<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*" %>
<%@page import="com.Database.DBConnection" %>
<%@page import="java.sql.PreparedStatement" %>

<%@page import="java.sql.ResultSet" %>

    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>CSE Department</title>
</head>
<%
String sno=null;
String fname=null;
String lname=null;
String mail=null;
String pwd=null;
String cpwd=null;
String dob=null;
String gender=null;
String phn=null;
String address=null;
String uid=null;
String branch=null;
String year=null;
String smtr=null;
ResultSet rs=null,rs2=null;
%>
<body style="background-color:#eaece9;">
<br/>

 <style type="text/css">
           
        
              
           th{
           
           
              background-color: #e99479;
           width: 400px;
           height: 30px;
           
           }
           
           td{
           
            background-color: rgba(0, 196, 255, 0.25);
           width: 400px;
           height: 30px;
           
           
           }
           
           input{
           
            background-color: white;
           width: 400px;
           height: 30px;
               border-bottom-right-radius: 50px;
    border-top-left-radius: 30px;
           
           border-radious:5px;
           }
           </style>
     
<br/>
<center>
<h3 style="font-style:italic;">Welcome to Student Details</h3></center>
<br/><br/>
<table>
<tr><th>Fname</th><th>Lname</th><th>Year</th><th>Semister</th><th>Mail-ID</th><th>Password</th><th>ConfirmPwd</th><th>DOB</th>
<th>Gender</th><th>Phone-no</th><th>Address</th><th>User-id</th><th>Branch</th></tr>

<% 

try{
	
	String yr=request.getParameter("year").trim().toString().toUpperCase();
	String sem=request.getParameter("semi").trim().toString().toUpperCase();

	
	HttpSession deptsession=request.getSession(false);
	String dept=(String)deptsession.getAttribute("value");
	
	System.out.println("dept:"+dept);
	
	

	 String branchname=request.getQueryString();
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/collegesystem","root","root");
	
	System.out.println("connection of db");



PreparedStatement ps1=con.prepareStatement("select *  from collegesystem.register where branch='"+dept+"' and Year='"+yr+"' and semister='"+sem+"'");

PreparedStatement ps2=con.prepareStatement("SELECT COUNT(*) from collegesystem.register where branch='"+dept+"' and Year='"+yr+"' and semister='"+sem+"'");
rs2=ps2.executeQuery();
while(rs2.next()){

	sno=rs2.getString(1);
}

rs=ps1.executeQuery();
 while(rs.next()){
	 

 fname=rs.getString(1);
 lname=rs.getString(2);
 mail=rs.getString(3);
 pwd=rs.getString(4);
 cpwd=rs.getString(5);
 dob=rs.getString(6);
 gender=rs.getString(7);
 phn=rs.getString(8);
 address=rs.getString(9);
 uid=rs.getString(10);
 branch=rs.getString(11);
 year=rs.getString(12);
 smtr=rs.getString(13);
 
%>

<tr><td><a href="student_all_details.jsp?fname=<%=fname %>&lname=<%=lname %>&uid=<%=uid %>&branch=<%=branch %>&year=<%=year %>&smtr=<%=smtr %>"><%=fname %></a></td><td><%=lname %></td>
<td><%=year %></td><td><%=smtr %></td><td><%=mail %></td><td><%=pwd %></td>
<td><%=cpwd %></td><td><%=dob %></td>
<td><%=gender %></td><td><%=phn %></td><td><%=address %></td>
<td><%=uid %></td><td><%=branch %></td></tr>


 
<%}
 }catch(Exception e){
	e.printStackTrace();
} %>
</table>
<br/>
<h3 style="margin-left:75px;font-style:italic;color:#f021b3;">Total no. of students ::<%=sno%></h3>
</body>
</html>