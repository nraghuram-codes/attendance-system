<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%@page import="java.sql.*" %>
<%@page import="com.Database.DBConnection" %>
<%@page import="java.sql.ResultSet" %>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>srinivasa college</title>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">    
    <title>srinivasa college</title>

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
    <a class="scrollToTop" href="#">
      <i class="fa fa-angle-up"></i>      
    </a>
  <!-- END SCROLL TOP BUTTON -->
<%
ResultSet rs=null;
String filename=null;
String collegename=null;

%>
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
          <a class="navbar-brand" href="#"><i class="fa fa-university"></i><span>faculty</span></a>
          <!-- IMG BASED LOGO  -->
          <!-- <a class="navbar-brand" href="index.html"><img src="assets/img/logo.png" alt="logo"></a> -->
        </div>
        <div id="navbar" class="navbar-collapse collapse">
          <ul id="top-menu" class="nav navbar-nav navbar-right main-nav">
            <li><a href="index.html">Home</a></li>
            <li><a href="srinivasafacultidetails.jsp">FACULTY DETAILS</a></li>            
            <li class="dropdown active">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown">Course <span class="fa fa-angle-down"></span></a>
              <!-- <ul class="dropdown-menu" role="menu">
                <li><a href="course.html">Course Archive</a></li>                
                <li><a href="course-detail.html">Course Detail</a></li>                
              </ul> -->
            </li>           
        <!--     <li><a href="gallery.html">Gallery</a></li> -->
            <li><a href="#">Gallery</a></li>
            <li class="dropdown">
              <!-- <a href="#" class="dropdown-toggle" data-toggle="dropdown">Blog <span class="fa fa-angle-down"></span></a>
              <ul class="dropdown-menu" role="menu">
                <li><a href="blog-archive.html">Blog Archive</a></li>                
                <li><a href="blog-single.html">Blog Single</a></li>                
              </ul> -->
            </li>            
            <li><a href="contact.html">Contact</a></li>
           <!--  <li><a href="404.html">404 Page</a></li>  -->
            <li><a href="#">404 Page</a></li>               
            <li><a href="#" id="mu-search-icon"><i class="fa fa-search"></i></a></li>
          </ul>                    
        </div><!--/.nav-collapse -->        
      </div>     
    </nav>
  </section>
  <!-- End menu -->
  <!-- Start search box -->
  <div id="mu-search">
    <div class="mu-search-area">      
      <button class="mu-search-close"><span class="fa fa-close"></span></button>
      <div class="container">
        <div class="row">
          <div class="col-md-12">            
            <form class="mu-search-form">
              <input type="search" placeholder="Type Your Keyword(s) & Hit Enter">
            </form>
          </div>
        </div>
      </div>
    </div>
  </div>
  <!-- End search box -->
 <!-- Page breadcrumb -->
 <section id="mu-page-breadcrumb">
   <div class="container">
     <div class="row">
       <div class="col-md-12">
         <div class="mu-page-breadcrumb-area">
           <h2>College Details</h2>
           <ol class="breadcrumb">
            <li><a href="#">Home</a></li>            
            <li class="active">College Detail</li>
          </ol>
         </div>
       </div>
     </div>
   </div>
 </section>
 <!-- End breadcrumb -->
 <section id="mu-course-content">
   <div class="container">
     <div class="row">
       <div class="col-md-12">
         <div class="mu-course-content-area">
            <div class="row">
              <div class="col-md-9">
                <!-- start course content container -->
                <div class="mu-course-container mu-course-details">
                  <div class="row">
                    <div class="col-md-12">
                      <div class="mu-latest-course-single">
                        <figure class="mu-latest-course-img">
                                   
                              
           <%
           
           
           
           DBConnection db=new DBConnection();
           Connection connection=db.con();
           
           HttpSession b=request.getSession(false);
          String filename1=(String)b.getAttribute("filename");
           
           PreparedStatement ps1=connection.prepareStatement("select collegename,city,rank,university,state,country,filename from collegesystem.aupload where filename='"+filename1+"'");
          rs=ps1.executeQuery();
           
           
           
           %>
          <!--  <table cellpadding="2" cellspacing="2" border="2" bordercolor="red" align="center" >

           
           <tr><th>College Name</th><th>City</th><th>Rank</th><th>University</th><th>State</th><th>Country</th></tr> -->
         <%--     <a href="#"><img src="Uploadimage/<%=filename%>" alt="img"></a> --%>
             
         
           <%while(rs.next()){
        	   
        	   %>
        	                      	   <%filename=rs.getString(7); 
        	                      	 collegename=rs.getString(1);
System.out.println("Image name"+filename);
%> <% }%>  
<%--         	   <%String filename=rs.getString(7); 
System.out.println("Image name"+filename);
%> --%><a href="#"><img src="Uploadimage/<%=filename%>" alt="img"></a>
                        
                        
                          <figcaption class="mu-latest-course-imgcaption">
                          
                          
                          
                          
                          
                          
                          
                          
                          
                          
                          
                          
                          <form action="Srinivasacollegerating" method="post">
       <!-- End Grouped Product powered by www.fabiom7.com - Italy //--> 
                    <div class="write-review"> 
                    <div><b>Your Name:</b></div> 
                     
                    <div><div>
						
									<input  name="name" type="text" placeholder="your name"><br><br>
						 
 <input type="text" value=<%=collegename%> placeholder="college name"><br><br>
                <div><b>Your Review:</b></div> 
                <textarea name="review" cols="40" rows="8"></textarea> <br><br>           
              

 
 <h2 style="color:green;">Rate Here</h2>  
             
            <input id="space" type="radio" name="rating" value="1" class="star">
            <input id="space" type="radio" name="rating" value="2" class="star">
            <input id="space" type="radio" name="rating" value="3" class="star">
            <input id="space" type="radio" name="rating" value="4" class="star">
            <input id="space" type="radio" name="rating" value="5" class="star">
 
 
 
                    <span></span> 
<!--                 </div>  -->
                    <div class="buttons"> 
                        <div class=""> 
                            
      
        <input type="submit" value="S U B M I T"  />
      </form>
	
                           <!--  <a id="button-cancel" class="button btn-ripple"><a href="laptopmoredetails.jsp"></>Cancel</a>  -->
                    </div> 


                          
                          
                          
                          
                          
                          
                          
                          
                          
                          
                          
                          
                          
                            <a href="#">Drawing</a>
                            <span><i class="fa fa-clock-o"></i>90Days</span>
                          </figcaption>
                        </figure>
                        <div class="mu-latest-course-single-content">
                          <h2><a href="#">Lorem ipsum dolor sit amet.</a></h2>
                          <h4>Course Information</h4>
                          <ul>
                            <li> <span>Course Price</span> <span>$250</span></li>
                            <li> <span>Place</span> <span>California,USA</span></li>
                            <li> <span>Total Students</span> <span>800+</span></li>
                            <li> <span>Course Duration</span> <span>4 Weeks</span></li>
                            <li> <span>Course Start</span> <span>July 25, 2016</span></li>
                          </ul>
                          <h4>Description</h4>
                          <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Amet quod nisi quisquam modi dolore, dicta obcaecati architecto quidem ullam quia.</p>
                          <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quo est itaque vero porro quasi illo ex consequuntur ad animi commodi, ipsam provident voluptas vel adipisci. Minima repellendus vel est, sequi labore quo ipsa voluptatem officiis ex fuga nemo quas. Eligendi inventore ducimus omnis, maxime, alias accusantium similique minus! Labore facilis qui, sunt, ipsam consectetur minus sapiente saepe numquam magnam quidem.</p>
                          <blockquote>
                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Deleniti, placeat, ipsa. Modi sed quibusdam vel autem fugit, eaque, iste. Excepturi fugit dignissimos suscipit dolor perferendis debitis magni sed, quia ab.</p>
                          </blockquote>
                          <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Blanditiis ea consequatur doloremque deleniti error ullam, accusamus vel est alias, sit. Similique voluptas aliquid, excepturi accusamus, sequi ducimus incidunt mollitia non.</p>
                          <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nisi saepe possimus doloribus quod quibusdam officia suscipit qui illum nemo itaque, porro ipsam tempore enim error eius quia, culpa. Reprehenderit consequuntur voluptatem dolorum magni natus inventore molestias veritatis eos aspernatur repudiandae.</p>
                          <h4>Course Outline</h4>
                          <div class="table-responsive">
                            <table class="table">
                            <thead>
                              <tr>
                                <th> Title </th>
                                <th> Course Time </th>
                                <th> Spent Time </th>
                                <th> Status </th>
                              </tr>
                            </thead>
                            <tbody>
                              <tr>
                                <td> 1. Topic 1 </td>
                                <td> 15:30 </td>
                                <td> 13:80 </td>
                                <td> Successful </td>
                              </tr>
                              <tr>
                                <td> 2. Topic 2 </td>
                                <td> 15:30 </td>
                                <td> 13:80 </td>
                                <td> Successful </td>
                              </tr>
                              <tr>
                                <td> 3. Topic 3 </td>
                                <td> 15:30 </td>
                                <td> - </td>
                                <td> Successful </td>
                              </tr>
                              <tr>
                                <td> 4. Topic 4 </td>
                                <td> 15:30 </td>
                                <td> 13:80 </td>
                                <td> Successful </td>
                              </tr>
                              <tr>
                                <td> 5. Topic 5 </td>
                                <td> 15:30 </td>
                                <td> - </td>
                                <td> Waiting </td>
                              </tr>
                              <tr>
                                <td> 6. Topic 6 </td>
                                <td> 15:30 </td>
                                <td> 13:80 </td>
                                <td> - </td>
                              </tr>
                            </tbody>
                          </table>
                          </div>
                        </div>
                      </div> 
                    </div>                                   
                  </div>
                </div>
                <!-- end course content container -->
                <!-- start related course item -->
                <div class="row">
                  <div class="col-md-12">
                    <div class="mu-related-item">
                  <h3>Related Courses</h3>
                  <div class="mu-related-item-area">
                    <div id="mu-related-item-slide">
                      <div class="col-md-6">
                        <div class="mu-latest-course-single">
                          <figure class="mu-latest-course-img">
                            <a href="#"><img alt="img" src="assets/img/courses/1.jpg"></a>
                            <figcaption class="mu-latest-course-imgcaption">
                              <a href="#">Drawing</a>
                              <span><i class="fa fa-clock-o"></i>90Days</span>
                            </figcaption>
                          </figure>
                          <div class="mu-latest-course-single-content">
                            <h4><a href="#">Lorem ipsum dolor sit amet.</a></h4>
                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Amet quod nisi quisquam modi dolore, dicta obcaecati architecto quidem ullam quia.</p>
                            <div class="mu-latest-course-single-contbottom">
                              <a href="#" class="mu-course-details">Details</a>
                              <span href="#" class="mu-course-price">$165.00</span>
                            </div>
                          </div>
                        </div>
                      </div>
                      <div class="col-md-6">
                        <div class="mu-latest-course-single">
                          <figure class="mu-latest-course-img">
                            <a href="#"><img alt="img" src="assets/img/courses/2.jpg"></a>
                            <figcaption class="mu-latest-course-imgcaption">
                              <a href="#">Drawing</a>
                              <span><i class="fa fa-clock-o"></i>90Days</span>
                            </figcaption>
                          </figure>
                          <div class="mu-latest-course-single-content">
                            <h4><a href="#">Lorem ipsum dolor sit amet.</a></h4>
                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Amet quod nisi quisquam modi dolore, dicta obcaecati architecto quidem ullam quia.</p>
                            <div class="mu-latest-course-single-contbottom">
                              <a href="#" class="mu-course-details">Details</a>
                              <span href="#" class="mu-course-price">$165.00</span>
                            </div>
                          </div>
                        </div>
                      </div>
                      <div class="col-md-6">
                        <div class="mu-latest-course-single">
                          <figure class="mu-latest-course-img">
                            <a href="#"><img alt="img" src="assets/img/courses/3.jpg"></a>
                            <figcaption class="mu-latest-course-imgcaption">
                              <a href="#">Drawing</a>
                              <span><i class="fa fa-clock-o"></i>90Days</span>
                            </figcaption>
                          </figure>
                          <div class="mu-latest-course-single-content">
                            <h4><a href="#">Lorem ipsum dolor sit amet.</a></h4>
                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Amet quod nisi quisquam modi dolore, dicta obcaecati architecto quidem ullam quia.</p>
                            <div class="mu-latest-course-single-contbottom">
                              <a href="#" class="mu-course-details">Details</a>
                              <span href="#" class="mu-course-price">$165.00</span>
                            </div>
                          </div>
                        </div>
                      </div>
                      <div class="col-md-6">
                        <div class="mu-latest-course-single">
                          <figure class="mu-latest-course-img">
                            <a href="#"><img alt="img" src="assets/img/courses/1.jpg"></a>
                            <figcaption class="mu-latest-course-imgcaption">
                              <a href="#">Drawing</a>
                              <span><i class="fa fa-clock-o"></i>90Days</span>
                            </figcaption>
                          </figure>
                          <div class="mu-latest-course-single-content">
                            <h4><a href="#">Lorem ipsum dolor sit amet.</a></h4>
                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Amet quod nisi quisquam modi dolore, dicta obcaecati architecto quidem ullam quia.</p>
                            <div class="mu-latest-course-single-contbottom">
                              <a href="#" class="mu-course-details">Details</a>
                              <span href="#" class="mu-course-price">$165.00</span>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
                  </div>
                </div>
                <!-- end start related course item -->
              </div>
              <div class="col-md-3">
                <!-- start sidebar -->
                <aside class="mu-sidebar">
                  <!-- start single sidebar -->
                  <div class="mu-single-sidebar">
                    <h3>COLLEGE NAME</h3>
                    <ul class="mu-sidebar-catg">
                      <li><a href="srinivasacollege.jsp"><%=collegename %></a></li>    
                    </ul>
                  </div>
                  <!-- end single sidebar -->
                  <!-- start single sidebar -->
                  <div class="mu-single-sidebar">
                        <h3>Popular Course</h3>
                    <div class="mu-sidebar-popular-courses">
                      <div class="media">
                        <div class="media-left">
                          <a href="#">
                            <img class="media-object" src="assets/img/courses/class3.jpg" alt="img">
                          </a>
                        </div>
                        <div class="media-body">
                          <h4 class="media-heading"><a href="#">ECE</a></h4>                      
                          <span class="popular-course-price">RS300000.00</span>
                        </div>
                      </div>
                      <div class="media">
                        <div class="media-left">
                          <a href="#">
                            <img class="media-object" src="assets/img/courses/classroom.jpg" alt="img">
                          </a>
                        </div>
                        <div class="media-body">
                          <h4 class="media-heading"><a href="#">EEE</a></h4>                      
                          <span class="popular-course-price">RS300000.00</span>
                        </div>
                      </div>
                      <div class="media">
                        <div class="media-left">
                          <a href="#">
                            <img class="media-object" src="assets/img/courses/classRoom2.jpg" alt="img">
                          </a>
                        </div>
                        <div class="media-body">
                          <h4 class="media-heading"><a href="#">MECH</a></h4>                      
                          <span class="popular-course-price">RS350000.00</span>
                        </div>
                      </div>
                        <div class="media">
                        <div class="media-left">
                          <a href="#">
                            <img class="media-object" src="assets/img/courses/images (1).jpg" alt="img">
                          </a>
                        </div>
                        <div class="media-body">
                          <h4 class="media-heading"><a href="#">CIVIL</a></h4>                      
                          <span class="popular-course-price">RS400000.00</span>
                        </div>
                      </div>
                      
                      <div class="media">
                        <div class="media-left">
                          <a href="#">
                            <img class="media-object" src="assets/img/courses/E-Class-Room1.jpg" alt="img">
                          </a>
                        </div>
                        <div class="media-body">
                          <h4 class="media-heading"><a href="#">CSE</a></h4>                      
                          <span class="popular-course-price">RS250000.00</span>
                        </div>
                      </div>
                    </div>
                  </div>           <!-- end single sidebar -->
                  <!-- start single sidebar -->
                  <div class="mu-single-sidebar">
                    <h3>Archives</h3>
                    <ul class="mu-sidebar-catg mu-sidebar-archives">
                      <li><a href="#">May <span>(25)</span></a></li>
                      <li><a href="">June <span>(35)</span></a></li>
                      <li><a href="">July <span>(20)</span></a></li>
                      <li><a href="">August <span>(125)</span></a></li>
                      <li><a href="">September <span>(45)</span></a></li>
                      <li><a href="">October <span>(85)</span></a></li>
                    </ul>
                  </div>
                  <!-- end single sidebar -->
                  <!-- start single sidebar -->
                  <div class="mu-single-sidebar">
                    <h3>Tags Cloud</h3>
                    <div class="tag-cloud">
                      <a href="#">Health</a>
                      <a href="#">Science</a>
                      <a href="#">Sports</a>
                      <a href="#">Mathematics</a>
                      <a href="#">Web Design</a>
                      <a href="#">Admission</a>
                      <a href="#">History</a>
                      <a href="#">Environment</a>
                    </div>
                  </div>
                  <!-- end single sidebar -->
                </aside>
                <!-- / end sidebar -->
             </div>
           </div>
         </div>
       </div>
     </div>
   </div>
 </section>

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
                  <p>Website: www.markups.io</p>
                  <p>Email: info@markups.io</p>
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