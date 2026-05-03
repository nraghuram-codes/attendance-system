<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*" %>
<%@page import="com.Database.DBConnection" %>


<%@page import="java.sql.ResultSet" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>External</title>
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
        
        
 <section id="mu-gallery">
   <div class="container">
     <div class="row">
       <div class="col-md-12">
         <div class="mu-gallery-area">
          <!-- start title -->
          <div class="mu-title">
          <!-- Start our teacher -->
  <section id="mu-our-teacher">
    <div class="container">
      <div class="row">
        <div class="col-md-12">
          <div class="mu-our-teacher-area">
            <!-- begain title -->
            <div class="mu-title">
            <br/><br><br>
            <center>
              <h2> STUDENT EXTERNAL SCORE</h2>
 </center>
<br>

 <style type="text/css">
              
           th{
           
           
              background-color: rgba(165, 247, 6, 0.46);
           width: 100px;
           height: 30px;
           
           }
           
           td{
           
            background-color: rgba(0, 196, 255, 0.25);
           width: 100px;
           height: 30px;
           
           
           }
           
           input{
           
            background-color: white;
            
           width: 100px;
           height: 30px;
               border-bottom-right-radius: 50px;
    border-top-left-radius: 30px;
           
           border-radious:5px;
           }
           </style>
           
           
           <center>
           
           
              
        <form name="f2" method="post" action="Externals">   
              <table>   
                     
      <tr><td colspan="2">STUDENT NAME :</td><td><input type="text" name="sname2" value="<%=name%>"></td></tr>
      <tr><td colspan="2">USER-ID :</td><td><input type="text" name="hno2" value="<%=uid%>"></td></tr>
      <tr><td colspan="2">BRANCH:</td><td><input type="text" name="brnch2" value="<%=branch%>"></td>
      
      <%-- <td><select name="brnch2" value="<%=%>">
		       <option value="select">select</option>
		        <option value="CSE">CSE</option>
		        <option value="CSE">ECE</option>
		        <option value="CSE">EEE</option>
		        <option value="CSE">IT</option>
		        <option value="CSE">CIVIL</option>
		        <option value="CSE">MECHANICAL</option>
		        </select></td> --%></tr>
      <tr><td colspan="2">YEAR :</td><td><input type="text" name="year2" value="<%=year%>"></td>
      
      <%-- <td><select name="year2" value="<%=%>">
		          <option value="choose">choose</option>
		        <option value="FIRST">FIRST</option>
		        <option value="SECOND">SECOND</option>
		        <option value="THIRD">THIRD</option>
		        <option value="FOURTH">FOURTH</option>
		       
		        </select>
		       </td> --%></tr>
      <tr><td colspan="2">SEMISTER :</td><td><input type="text" name="semi2" value="<%=smtr%>"></td>
      
      <%-- <td><select name="semi2" value="<%=%>">
		        <option value="choose">choose</option>
		        <option value="1">1</option>
		        <option value="2">2</option>
		       
		        </select>
		       </td> --%></tr>
     <!--  <tr><td colspan="2">INTERNAL :</td><td><select name="inter">
		        <option value="choose">choose</option>
		        <option value="1">1</option>
		        <option value="2">2</option>
		       
		        </select>
		       </td></tr> -->
<tr><td style="display:none;"></td></tr>
<tr><td style="display:none;"></td></tr>
<tr><td style="display:none;"></td></tr>
<tr><td style="display:none;"></td></tr>
<tr><td style="display:none;"></td></tr>
<tr><td style="display:none;"></td></tr>
<tr><td style="display:none;"></td></tr>
<tr><td style="display:none;"></td></tr>
<tr><td style="display:none;"></td></tr>
<tr><td style="display:none;"></td></tr>

     <tr><th>SUBJECT</th><th>SCORED</th><th>MIN MARKS</th><th>MAX MARKS</th><th>RESULT</th></tr>
              
    <tr><td><input type="text" name="a1" value="ENGLISH" readonly="readonly"></td>
    <td><input type="text" name="eng2"></td>
    <td><input type="text" name="a3" value="35" readonly="readonly"></td>
    <td><input type="text" name="a4" value="70" readonly="readonly"></td>
     <td><select name="res12">
     <option>PASS</option>
     <option>FAIL</option>
     </select></td> </tr> 
    
    <tr><td><input type="text" name="b1" value="MATHS-1" readonly="readonly"></td>
    <td><input type="text" name="math12"></td>
    <td><input type="text" name="b3" value="35" readonly="readonly"></td>
    <td><input type="text" name="b4" value="70" readonly="readonly"></td>
    <td><select name="res22">
     <option>PASS</option>
     <option>FAIL</option>
     </select></td> </tr> 
    
    <tr><td><input type="text" name="c1" value="MATHS-2" readonly="readonly"></td>
    <td><input type="text" name="math22"></td>
    <td><input type="text" name="c3" value="35" readonly="readonly"></td>
    <td><input type="text" name="c4" value="70" readonly="readonly"></td>
    <td><select name="res32">
     <option>PASS</option>
     <option>FAIL</option>
     </select></td> </tr> 
    
    <tr><td><input type="text" name="d1" value="PHYSICS" readonly="readonly"></td>
    <td><input type="text" name="physics2"></td>
    <td><input type="text" name="d3" value="35" readonly="readonly"></td>
    <td><input type="text" name="d4" value="70" readonly="readonly"></td>
    <td><select name="res42">
     <option>PASS</option>
     <option>FAIL</option>
     </select></td> </tr> 
    
    <tr><td><input type="text" name="e1" value="CHEMISTERY" readonly="readonly"></td>
    <td><input type="text" name="chemistry2"></td>
    <td><input type="text" name="e3" value="35" readonly="readonly"></td>
    <td><input type="text" name="e4" value="70" readonly="readonly"></td>
    <td><select name="res52">
     <option>PASS</option>
     <option>FAIL</option>
     </select></td> </tr> 
    
    <tr><td><input type="text" name="f1" value="COMPUTERS" readonly="readonly"></td>
    <td><input type="text" name="comptr2"></td>
    <td><input type="text" name="f3" value="35" readonly="readonly"></td>
    <td><input type="text" name="f4" value="70" readonly="readonly">
    </td> <td><select name="res62">
     <option>PASS</option>
     <option>FAIL</option>
     </select></td> </tr> 
     <tr><td></td><td></td><td></td><td><input type="submit" value="submit"></td><td></td></tr>
     </table>   
     
     </form>   
     
     </center>
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
        
             <%--  <%
//String collegename=request.getParameter("collegename");
              
              
             /*  HttpSession s=request.getSession(false);
              String collegename=(String)s.getAttribute("collegename");

DBConnection db=new DBConnection();
Connection connection=db.con(); */



//String stname,mobileno,bank,accno,amount,pincode,address,city,state,country,sno;

 /* PreparedStatement ps1=connection.prepareStatement("select sno,stname,mobileno,selectcollegesnames,bank,accno,amount,pincode,address,city,state,country,accept from collegesystem.studentpaymnet where accept='accepted'");
rs=ps1.executeQuery(); */
 


%>



<%while(rs.next()){
	

	 sno=rs.getString(1);
		stname=rs.getString(2);
	 mobileno=rs.getString(3);
	 selectcollegesnames=rs.getString(4);
	  bank=rs.getString(5);
	  accno=rs.getString(6);
	 amount=rs.getString(7);
pincode=rs.getString(8);
	 address=rs.getString(9);
city=rs.getString(10);
	state=rs.getString(11);
country=rs.getString(12);
selected=rs.getString(13);

	selected="selected"; 


	
%>



<tr><td><%=sno %></td><td><%=stname %></td><td><%=mobileno %></td><td><%=selectcollegesnames %></td><td><%=bank %></td><td><%=accno %></td><td><%=amount %></td><td><%=pincode %></td><td><%=address %></td><td><%=city %></td><td><%=state %></td><td><%=country %></td><td><a href="acceptAdmin1.jsp?<%=sno%>"><%=selected%></a></td></tr>




 <% }%>  


</table>

       
              
            </section>
            
            
        
            
 --%>       

</body>
</html>