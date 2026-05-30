<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<!DOCTYPE html>
<html lang="en">
  <head>
  
<%@page import="java.sql.*" %>
<%@page import="com.Database.DBConnection" %>


<%@page import="java.sql.ResultSet" %>

  
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">    
    <title>Admin home</title>

    <!-- Favicon -->
    <link rel="shortcut icon" href="assets/img/favicon.ico" type="image/x-icon">

    <!-- Font awesome -->
    <link href="assets/css/font-awesome.css" rel="stylesheet">
    <!-- Bootstrap -->
    <link href="assets/css/bootstrap.css" rel="stylesheet">   
    <!-- Slick slider -->
    <link rel="stylesheet" type="text/css" href="assets/css/slick.css">          
    <!-- Fancybox slider -->
    <link rel="stylesheet" href="assets/css/jquery.fancybox.css" type="text/css" media="screen" /> 
    <!-- Theme color -->
    <link id="switcher" href="assets/css/theme-color/default-theme.css" rel="stylesheet">    

    <!-- Main style sheet -->
    <link href="assets/css/style.css" rel="stylesheet">    

   
    <!-- Google Fonts -->
    <link href='https://fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Roboto:400,400italic,300,300italic,500,700' rel='stylesheet' type='text/css'>
    

    
  </head>
  <body>
  
  <!--START SCROLL TOP BUTTON -->
    <a class="scrollToTop" href="#">
      <i class="fa fa-angle-up"></i>      
    </a>
  <!-- END SCROLL TOP BUTTON -->

  <!-- Start header  -->
  <header id="mu-header">
    <div class="container">
      <div class="row">
        <div class="col-lg-12 col-md-12">
          <div class="mu-header-area">
            <div class="row">
              <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6">
                <div class="mu-header-top-left">
                  <div class="mu-top-email">
                    <i class="fa fa-envelope"></i>
                    <span>collegeinfo@gmail.com</span>
                  </div>
                  <div class="mu-top-phone">
                    <i class="fa fa-phone"></i>
                    <span>(468) 918 212</span>
                  </div>
                </div>
              </div>
              <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6">
                <div class="mu-header-top-right">
                  <nav>
                    <ul class="mu-top-social-nav">
                      <li><a href="#"><span class="fa fa-facebook"></span></a></li>
                      <li><a href="#"><span class="fa fa-twitter"></span></a></li>
                      <li><a href="#"><span class="fa fa-google-plus"></span></a></li>
                      <li><a href="#"><span class="fa fa-linkedin"></span></a></li>
                      <li><a href="#"><span class="fa fa-youtube"></span></a></li>
                    </ul>
                  </nav>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </header>
  <!-- End header  -->
  <!-- Start menu -->
  <section id="mu-menu">
    <nav class="navbar navbar-default" role="navigation">  
      <div class="container">
        <div class="navbar-header">
          <!-- FOR MOBILE VIEW COLLAPSED BUTTON -->
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <!-- LOGO -->              
          <!-- TEXT BASED LOGO -->
          <a class="navbar-brand" href="index.html"><i class="fa fa-university"></i><span>Admin</span></a>
          <!-- IMG BASED LOGO  -->
          <!-- <a class="navbar-brand" href="index.html"><img src="assets/img/logo.png" alt="logo"></a> -->
        </div>
        <div id="navbar" class="navbar-collapse collapse">
        <ul id="top-menu" class="nav navbar-nav navbar-right main-nav">
                
            
                 <li><a href="Adminhome.jsp">Logout</a></li> 
            
                
          </ul>                   
        </div><!--/.nav-collapse -->        
      </div>     
    </nav>
  </section>
  <!-- End menu --> 

  </head>
  <body style="background-image:url('images/img1.jpg');">
    <!-- <a class="scrollToTop" href="#">
      <i class="fa fa-angle-up"></i>      
    </a> -->
  <!-- END SCROLL TOP BUTTON -->

  
  <%
int count=0;
String stname=null;
ResultSet rs=null;
ResultSet rs1=null;
 //String stname,mobileno,bank,accno,amount,pincode,address,city,state,country,sno;
 String mobileno=null;
 String bank=null;
 String accno=null;
 String amount=null;
 String pincode=null;
 String address=null;
 String city=null;
 String state=null;
 String country=null;
 String sno=null;
  
 

String filename=null;
String collegenae=null;
int noofassociateprofessor1=0;
String branch=null;
int noofprofessors=0;

//slno,nameoffaculty,educationalqualification,designation
String slno=null;
String nameoffaculty=null;
String educationalqualification=null;
String designation=null;
String universityname=null;

String accept=null;
String selectcollegesnames=null;
%>

  <section id="mu-our-teacher">
    <div class="container">
      <div class="row">
        <div class="col-md-12">
          <div class="mu-our-teacher-area">
            <!-- begain title -->
            <div class="mu-title">
              <h3 style="font-family:;">REGISTERED STUDENTS DETAILS</h3>
 
<br>

 <style type="text/css">
           
        
              
           th{
           
           
              background-color: rgba(165, 247, 6, 0.46);
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
           
          /*  p{
           
            background-color: rgba(0, 196, 255, 0.25);
           width: 400px;
           height: 30px;
           margin-left: 50px;
           margin-right: 50px;
           margin-top: 50px;
           margin-bottom: 50px;
           
           
           } */
           </style>
              
              
              <table>          


  
  <tr><th>STUDENT NAME</th><th>USER-ID</th><th>BRANCH</th><th>YEAR</th>
<th>SEMISTER</th></tr>
  
              
              <%
DBConnection db=new DBConnection();
Connection connection=db.con();



//String stname,mobileno,bank,accno,amount,pincode,address,city,state,country,sno;

PreparedStatement ps1=connection.prepareStatement("select fname,lname,userid,branch,Year,semister from collegesystem.register");
rs=ps1.executeQuery();



%>

 
<%while(rs.next()){
	

	// sno=rs.getString(1);
		stname=rs.getString(1);
	 mobileno=rs.getString(2);
	 selectcollegesnames=rs.getString(3);
	  bank=rs.getString(4);
	  accno=rs.getString(5);
	 amount=rs.getString(6);
 	 

	
%>

<tr><td><%=stname %><%=mobileno %></td><td><%=selectcollegesnames %></td><td><%=bank %></td><td><%=accno %></td><td><%=amount %></td></tr>




 <% }%>  
 
 </table>
  <%




 
 //collegename=request.getParameter("collegename"); 

DBConnection db1=new DBConnection();
Connection connection1=db1.con();

PreparedStatement ps2=connection1.prepareStatement("SELECT COUNT(*) from collegesystem.register");
rs1=ps2.executeQuery();


%>



<%while(rs1.next()){

	sno=rs1.getString(1);
	
%>
          <%} %>         
 
 
  <p style="  background-color: rgba(0, 210, 255, 0.3);
           width: 420px;
           height: 30px;
           margin-left: 01px;
          /*  margin-right: 50px; */
           margin-top: 50px;
           margin-bottom: 50px;color:red;"> Total no of students  : <%=sno %></p> 

      
            </section>
                           
  <!-- jQuery library -->
  <script src="assets/js/jquery.min.js"></script>  
  <!-- Include all compiled plugins (below), or include individual files as needed -->
  <script src="assets/js/bootstrap.js"></script>   
  <!-- Slick slider -->
  <script type="text/javascript" src="assets/js/slick.js"></script>
  <!-- Counter -->
  <script type="text/javascript" src="assets/js/waypoints.js"></script>
  <script type="text/javascript" src="assets/js/jquery.counterup.js"></script>  
  <!-- Mixit slider -->
  <script type="text/javascript" src="assets/js/jquery.mixitup.js"></script>
  <!-- Add fancyBox -->        
  <script type="text/javascript" src="assets/js/jquery.fancybox.pack.js"></script>

  <!-- Custom js -->
  <script src="assets/js/custom.js"></script> 

  </body>
</html>