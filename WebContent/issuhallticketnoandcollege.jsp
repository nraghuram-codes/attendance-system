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
    

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->

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
                    <span>info@markups.io</span>
                  </div>
                  <div class="mu-top-phone">
                    <i class="fa fa-phone"></i>
                    <span>(568) 986 652</span>
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
            <li><a href="Adminhome.jsp">Home</a></li> 
            
                       
            <li class="dropdown">
            
              <a href="#" class="dropdown-toggle" data-toggle="dropdown">View Students <span class="fa fa-angle-down"></span></a>
              <ul class="dropdown-menu" role="menu">
                <li><a href="allregisteredstudents.jsp">Registered Students</a></li>                
                <li><a href="allselectedstudents.jsp">Selected Students</a></li>   
            <!--      <li><a href="course-detail.html">Rejected Students</a></li>   -->
                         <li><a href="  studentapplicationdetailsview.jsp">Student Application Details</a></li>
                           
              </ul>
               </li>  
               
               
               
               
               
                
             <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown">Universities <span class="fa fa-angle-down"></span></a>
              <ul class="dropdown-menu" role="menu">
              <!--   <li><a href="addcolleges.jsp">Add College</a>  -->  
                
                   <li><a href="addcolleges.jsp">Add JNTU-Anantapur</a>  </li> 
                    <li><a href="svuaddcolleges.jsp">Add SVU</a>  </li> 
                
                    <li><a href="osmaniaaddcolleges.jsp">Add Osmania</a>  </li> 
                
                
                
               
                 </li> 
                 
                 
                 
                 
                               
                <li><a href="view-jntu-clgs.jsp">View Colleges</a></li>   
             <!--     <li><a href="course-detail.html">Delete College</a></li>    -->  
                              
              </ul>
            </li>     
            
            
            
             <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown">Courses <span class="fa fa-angle-down"></span></a>
              <ul class="dropdown-menu" role="menu">
                <li><a href="addcoursedatailsadmin.jsp">Add Course details</a></li>                
               <!--  <li><a href="course-detail.html">Processing Details</a></li>   --> 
                 <li><a href="issuhallticketnoandcollege.jsp">Issue Halltickets</a></li>
                 
                 
                 
                 
                 
             </ul>
             </li> 
            
            
            
            
            
            
            
            
                   
             
             <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown">Payment <span class="fa fa-angle-down"></span></a>
              <ul class="dropdown-menu" role="menu">
                <li><a href="payment.jsp">Payment Request List</a></li>   
                <li><a href="paymentaccepted.jsp">Payment Accepted List</a></li>    
              
             <!--    <li><a href="viewseatsadmin.jsp">View Seats</a></li>                
                <li><a href="course-detail.html">View All courses</a></li>    -->
            <!--      <li><a href="course-detail.html">Exam schedule</a></li>   -->            
              </ul>
            </li>     
                    
             
             <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown">Placements <span class="fa fa-angle-down"></span></a>
              <ul class="dropdown-menu" role="menu">
                <li><a href="placementdetailsadmin.jsp">Add Placement Details</a></li>                
                <li><a href="viewplacementdetailsadmin.jsp">View Placement Details</a></li>   
                  <li><a href="faculty.jsp">Add Faculty</a>
                  <li><a href="sitsfacultidetails.jsp">All Colleges faculty details</a></li> 
              <!--    <li><a href="course-detail.html">Exam schedule</a></li>  -->             
              </ul>
            </li>     
            
            
                 <li><a href="Adminhome.jsp">Logout</a></li> 
            
                
          </ul>                   
        </div><!--/.nav-collapse -->        
      </div>     
    </nav>
  </section>
  <!-- End menu --> 

  </head>
  <body>
    <a class="scrollToTop" href="#">
      <i class="fa fa-angle-up"></i>      
    </a>
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

 
          <!-- Start our teacher -->
  <section id="mu-our-teacher">
    <div class="container">
      <div class="row">
        <div class="col-md-12">
          <div class="mu-our-teacher-area">
            <!-- begain title -->
            <div class="mu-title">
              <h2>Hallticket no DETAILS</h2>
 
<br><br><br><br>



<form action="StudentHallticketsissue" name="myForm" method="post" >	




<style type="text/css">

input{
background-color: rgb(41, 107, 77);
width: 500px;
height: 50px;
    border-radius: 11px;


}

select{
background-color: rgb(41, 107, 77);
width: 500px;
height: 50px;

}

</style>

<table cellpadding="1" cellspacing=""  align="center">

<th>Issue Hall Ticket No</th>
						
					<tr><th><td><input placeholder=" NAME" name="stuname" type="text"></td></th></tr>
					<tr><th><td><input placeholder="BRANCH" name="branch" type="text"></td></th></tr>
							
					<tr><th><td><input placeholder="COLLEGE NAME"  name="clgname" type="text"></td></th></tr>
			   
 		<tr><th><td><input placeholder="UNIVERSITY NAME"  name="universityname" type="text"></td></th></tr>
 		
 			<tr><th><td><input placeholder="HALLTICKET NO"  name="hallticketno" type="text"></td></th></tr>
 		
 		
 	
 

<tr><th><td><input type="submit" value="SUBMIT" size="100"  ></td></th></tr>
							
									
					</table>				
									
								<div class="sign-up">
									</form>
							


    
    
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
		
    
    
</div>
<!-- end #container -->
</body>
</html>
