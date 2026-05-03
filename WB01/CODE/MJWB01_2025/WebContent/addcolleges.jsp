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

  
  
          </ul>                   
        </div><!--/.nav-collapse -->        
      </div>     
    </nav>
  </section>
  <!-- End menu -->      
                  </form>
                </div>
              </div>
              <div class="col-md-6">
                <div class="mu-contact-right">
           <!--      <img src="images/1.jpg"> -->
           
           
           
              <style type="text/css">
           
        
              
           th{
           
           
              background-color: rgba(165, 247, 6, 0.46);
           width: 400px;
           height: 30px;
              padding: 10px;
           
           }
           
           td{
           
            background-color: rgba(0, 196, 255, 0.25);
            width: 600px;
           height: 30px; 
           padding: 10px;
           
           }
           
           input{
           
            background-color: white;
            width: 400px;
           height: 30px; 
               border-bottom-right-radius: 50px;
    border-top-left-radius: 30px;
           
           border-radious:5px;
           }
           
           table{
           /* width:1000px; */
           padding: 100px;
          /*  margin: 300px; */
           margin-left: 500px;
           margin-right: 200px;
           margin-bottom: 200px;
           margin-top: 10px;
           
          
           
           }
           </style>
           
           
           
           
           
           
         
           <br><br><br><br><form action="AdminUploadClg" method="post" enctype="multipart/form-data">	
	<h><marquee style="color: green; width: 1000px; font-size: 50px;">  Admin  uploads jntu-Anantapur colleges details </marquee></h>
           
         
           <table cellpadding="2" cellspacing="2" border="2" align="center">
           
    <tr>   <td> COLLEGE NAME: &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  <input type="text" name="collegename" placeholder="COLLEGE NAME"><br> <br></td></tr>
            <br>
       
      <tr>  <td>     CITY:  :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;    <input type="text" name="city" placeholder="CITY"><br> <br></td></tr>
            <br>
           
        <tr>   <td>  RANK:  :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;     <input type="text" name="rank" placeholder="RANK"><br> <br></td></tr>
            <br>
           
       <tr>   <td>  UNIVERSITY :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;     <input type="text" name="university" placeholder="UNIVERSITY"><br> <br></td></tr>
            <br>
           
      <tr>   <td>    STATE  :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;   <input type="text" name="state" placeholder="STATE"><br> <br></td></tr>
            <br>
      <tr>   <td>       COUNTRY  :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;   <input type="text" name="country" placeholder="COUNTRY"><br> <br></td></tr>
            
               <tr>   <td>  <input type="file" name="name"><br><br><br></td></tr>
    <tr>   <td>  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  <input type="submit" value="ADD COLLEGES" style="color: green; size: 50px;"></td></tr>
           
           </form>
           
           
           
           
           
           
 </table>
           
           
           
            <br>
           <br>
            <br>
           <br>
            <br>
           <br> <br>
           <br>
            <br>
           <br>
            <br>
           <br> <br>
           <br>
            <br>
           <br>
            <br>
           <br> <br>
           <br>
            <br>
          
           
           
                </div>
              </div>
            </div>
          </div>
          <!-- end contact content -->
         </div>
       </div>
     </div>
   </div>
 </section>
 <!-- End contact  -->
  <br>
           <br>
            <br>
           <br>
            <br>
           <br> <br>
           <br>
            <br>
           <br>
            <br>
           <br>

  <!-- Start footer -->
  <footer id="mu-footer">
    <!-- start footer top -->
    <div class="mu-footer-top">
      <div class="container">
        <div class="mu-footer-top-area">
          <div class="row">
            <div class="col-lg-3 col-md-3 col-sm-3">
              <div class="mu-footer-widget">
                <h4>Information</h4>
                <ul>
                  <li><a href="#">About Us</a></li>
                  <li><a href="">Features</a></li>
                  <li><a href="">Course</a></li>
                  <li><a href="">Event</a></li>
                  <li><a href="">Sitemap</a></li>
                  <li><a href="">Term Of Use</a></li>
                </ul>
              </div>
            </div>
            <div class="col-lg-3 col-md-3 col-sm-3">
              <div class="mu-footer-widget">
                <h4>Student Help</h4>
                <ul>
                  <li><a href="">Get Started</a></li>
                  <li><a href="#">My Questions</a></li>
                  <li><a href="">Download Files</a></li>
                  <li><a href="">Latest Course</a></li>
                  <li><a href="">Academic News</a></li>                  
                </ul>
              </div>
            </div>
            <div class="col-lg-3 col-md-3 col-sm-3">
              <div class="mu-footer-widget">
                <h4>News letter</h4>
                <p>Get latest update, news & academic offers</p>
                <form class="mu-subscribe-form">
                  <input type="email" placeholder="Type your Email">
                  <button class="mu-subscribe-btn" type="submit">Subscribe!</button>
                </form>               
              </div>
            </div>
            <div class="col-lg-3 col-md-3 col-sm-3">
              <div class="mu-footer-widget">
                <h4>Contact</h4>
                <address>
                  <p>P.O. Box 320, Ross, California 9495, USA</p>
                  <p>Phone: (415) 453-1568 </p>
                  <p>Email:vertilinktech@gmail.com</p>
                
                </address>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!-- end footer top -->
    <!-- start footer bottom -->
    <div class="mu-footer-bottom">
      <div class="container">
        <div class="mu-footer-bottom-area">
          <p>&copy; All Right Reserved. Designed by <a href="http://www.markups.io/" rel="nofollow">MarkUps.io</a></p>
        </div>
      </div>
    </div>
    <!-- end footer bottom -->
  </footer>
  <!-- End footer -->





  
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