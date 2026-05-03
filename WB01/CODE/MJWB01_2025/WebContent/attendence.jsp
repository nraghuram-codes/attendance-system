<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Attendance Page</title>
</head>
<body>

<%

String fname=request.getParameter("fname");
String lname=request.getParameter("lname");
String name=fname+lname;
String uid=request.getParameter("uid");
String branch=request.getParameter("branch");
String year=request.getParameter("year");
String smtr=request.getParameter("smtr");

%>


 <br><form action="SAttendense" method="post" >	
	<h1>  Admin  Add Attendance </h1>
           
          
            <style type="text/css">
           
        
              
           th{
           
           
           background-color: gold;
           width: 400px;
           height: 30px;
           
           }
           
           td{
           
            background-color: gold;
           width: 400px;
           height: 30px;
           
           
           }
           
           select{
            background-color: white;
           width: 400px;
           height: 30px;
        
           }
           
           input{
           
            background-color: white;
           width: 400px;
           height: 30px;
           
           
           border-radious:5px;
           }
           </style>
           
          
           
           <table cellpadding="2" cellspacing="2" border="2" bordercolor="green" width="800" height="300">
           
           <tr><th>STUDENT NAME</th><td><input type="text" name="sname" placeholder="STUDENT NAME" value="<%=name%>"></td></tr>
           
            <tr><th>BRANCH</th><td><input type="text" name="branch" placeholder="BRACH" value="<%=branch%>"></td></tr>
           
            <tr><th>  YEAR</th><td> <input type="text" name="year" placeholder="YEAR" value="<%=year%>"></td></tr>
            <tr><th> SEMISTER</th><td> <input type="text" name="sem" placeholder=" SEMISTER" value="<%=smtr%>"></td></tr>
              <tr><th>USER ID</th><td><input type="text" name="userid" placeholder="USER ID" value="<%=uid%>"></td></tr>
            
             <tr><th>MONTH</th><td><select name="month">
             <option value="JANUARY">JANUARY</option>
             <option value="FEBRAURY">FEBRAURY</option>
             <option value="MARCH">MARCH</option>
             <option value="APRIL">APRIL</option>
             <option value="MAY">MAY</option>
             <option value="JUNE">JUNE</option>
             <option value="JULY">JULY</option>
             <option value="AUGUST">AUGUST</option>
             <option value="SEPTEMBER">SEPTEMBER</option>
             <option value="OCTOBER">OCTOBER</option>
             <option value="NOVEMBER">NOVEMBER</option>
             <option value="DECEMBER">DECEMBER</option>
             
             
             </select></td></tr>
              <tr><th>NO OF PRESENTS</th><td><input type="text" name="present" placeholder="NO OF PRESENTS"></td></tr>
                 <tr><th>NO OF WORKING DAYS</th><td><input type="text" name="workdays" placeholder="NO OF WORKING DAYS"></td></tr>
                   </table>
           
           
      <BR><BR>
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  <input type="submit" value="SEND ATTENDENCE DETAILS" style="color: green; size: 50px;">
           
           </form>
           
           
           
           
           
           
 
           
           
           
            <br>
           <br>
            <br>
           <br>
</body>
</html>