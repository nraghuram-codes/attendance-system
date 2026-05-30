<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<!DOCTYPE html>
<html lang="en">
  <head>
  <%@page import="java.sql.PreparedStatement"%>
<%@page import="com.Database.DBConnection"%>
<%@ page import="java.sql.*" %>
<%@page import="java.sql.ResultSet" %>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">    
    <title></title>
<!-- <link href='http://fonts.googleapis.com/css?family=Oxygen:400,300,700' rel='stylesheet' type='text/css'>
<link href="css/style.css" rel='stylesheet' type='text/css' />
    Favicon -->
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
          <a class="navbar-brand" href="counselorhome.jsp"><i class="fa fa-university"></i><span></span></a>
          <!-- IMG BASED LOGO  -->
          <!-- <a class="navbar-brand" href="index.html"><img src="assets/img/logo.png" alt="logo"></a> -->
        </div>
        <div id="navbar" class="navbar-collapse collapse">
          <ul id="top-menu" class="nav navbar-nav navbar-right main-nav">
             </section>
  <!-- End menu -->      
                  </form>
                </div>
              </div>
              <div class="col-md-6">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>VIEW</title>
<link href="styles.css" rel="stylesheet" type="text/css" />
<style>
body{
background-image:url('images/back10.jpg');
bacground-size:1260px 90000px;
background-attachment:fixed;
}
</style>

    
    
    
    
    
    
    
    
    
    
   
<style>
body { margin:0; padding:0; width:100%; color:#fff; font:normal 12px/1.8em Arial, Helvetica, sans-serif;
background-image:url('images/back10.jpg');
bacground-size:1260px 90000px;
background-attachment:fixed;
color:blue;
}
}

html, .main { padding:0; margin:0; background:black;

}
.clr { clear:both; padding:0; margin:0; width:100%; font-size:0px; line-height:0px;}
h1 { margin:0; padding:0; color:white; font:normal 40px/1.2em Arial, Helvetica, sans-serif; text-transform:uppercase; text-align:center;}
h1 a, h1 a:hover { color:white; text-decoration:none;}
h1 span { color:#007236;}
h1 small { font:normal 13px/1.2em Arial, Helvetica, sans-serif;}
h2 { font:normal 24px Arial, Helvetica, sans-serif; color:white; padding:8px 0; margin:8px 0;}
p { margin:8px 0; padding:0 0 8px 0; font:normal 12px/1.8em Arial, Helvetica, sans-serif;}
a { color:#CC0000; text-decoration:underline;}

.header, .content, .menu_nav, .fbg, .footer, form, ol, ol li, ul, .content .mainbar, .content .sidebar { margin:0; padding:0;}
.content_resize, .fbg_resize, .footer_resize { margin:0 auto; padding:0 40px; width:890px;}

/* header */
.header { 

background:url(mythlogo3.gif);

background-repeat:no-repeat;

background-position:center top;
}
.header_resize { 

margin:0 auto; padding:0; width:970px; height:337px;

}
.header .logo { 

padding:100px 0 0;

}

/* menu */
.menu_nav { 

padding-left:20px; float:left; width:auto;

}
.menu_nav ul { 

list-style:none;

}
.menu_nav ul li { 

margin:0 4px; float:left;

}
.menu_nav ul li a { 

display:block; margin:0; padding:23px 24px; color:#fff; text-decoration:none;

font-weight:bold;
}
.menu_nav ul li.active a, .menu_nav ul li a:hover { 

background:url(hoverimage.gif);
background-repeat:no-repeat;

}

/* search */
.searchform { float:right; width:auto;}
#formsearch { margin:0; padding:12px 20px 0 0;}
#formsearch span { display:block; margin:6px 0; padding:0 8px 0 11px !important; padding:0 4px 0 6px; float:right; width:183px; background:#fff url(search.gif) no-repeat top left;}
#formsearch input.editbox_search { margin:0; padding:5px 0; float:left; width:180px; height:20px; border:none; background:none; font:normal 13px/20px Arial, Helvetica, sans-serif; color:#a8acb2;}
#formsearch input.button_search { margin:6px 0 0 0; padding:0; border:none; float:right;}

/* content */
.content_resize { padding-right:0; padding-top:16px; width:930px; }
.content .mainbar { float:left; width:630px;}
.content .mainbar img { margin-bottom:24px; padding:4px; border:1px solid #b7b7b7; background-color:#fff;}
.content .mainbar img.fl { float:left; margin-right:12px;}
.content .mainbar .article, .content .sidebar .gadget { margin:0; padding:0 0 16px 0;}
.content .sidebar { float:right; width:276px;}
ul.sb_menu, ul.ex_menu { margin:0; padding:0; list-style:none; color:#959595;}
ul.sb_menu li, ul.ex_menu li { margin:0; background:url(li.gif) no-repeat 0 12px;}
ul.sb_menu li { padding:4px 0; border-bottom:1px solid #e3e3e3; width:220px;}
ul.ex_menu li { padding:4px 0 8px;}
ul.sb_menu li a, ul.ex_menu li a { color:#5f5f5f; text-decoration:none; margin-left:-16px; padding-left:16px;}
ul.sb_menu li a:hover, ul.ex_menu li a:hover { color:#CC0000; font-weight:bold; no-repeat left center;}
ul.sb_menu li a:hover { text-decoration:underline;}
ul.ex_menu li a:hover { text-decoration:none;}

/* subpages */
.content .mainbar .comment { margin:0; padding:16px 0 0 0;}
.content .mainbar .comment img.userpic { border:1px solid #dedede; margin:10px 16px 0 0; padding:0; float:left;}

/* fbg */
.fbg_resize { background-color:#000; padding:24px 40px;}
.fbg img { border:1px solid #d6d6d6;}
.fbg .col { margin:0; float:left;}
.fbg .c1 { padding:0 16px 0 0; width:296px;}
.fbg .c2 { padding:0 16px; width:240px;}
.fbg .c3 { padding:0 0 0 16px; width:290px;}
.fbg .c1 img { margin:8px 16px 4px 0; float:left;}

/* footer */
.footer { 

background-image: url(shoot.jpg);
background-repeat:no-repeat;
padding:50px 0 0 0;
background-position:center bottom;

}
.footer p.lf { margin:0; padding:4px 0; float:right; width:auto; line-height:1.5em;}
ul.fmenu { margin:0; padding:2px 0; list-style:none; float:left; width:auto;}
ul.fmenu li { margin:0; padding:0 4px; float:left;}
ul.fmenu li a { color:#5f5f5f; text-decoration:none; padding:2px 6px;}
ul.fmenu li a:hover, ul.fmenu li.active a { color:#CC0000;
font-weight:bold;
}
ul.fmenu li a:hover { text-decoration:underline;}

/* form */
ol { list-style:none;}
ol li { display:block; clear:both;}
ol li label { display:block; margin:0; padding:16px 0 0 0;}
ol li input.text { width:480px; border:1px solid #c0c0c0; margin:2px 0; padding:5px 2px; height:16px; background:#fff;}
ol li textarea { width:480px; border:1px solid #c0c0c0; margin:2px 0; padding:2px; background:#fff;}
ol li .send { margin:16px 0 0 0;}
    



</style>

</head>
<body>
<div class="main">

<div class="header">
<div class="header_resize">
<div class="menu_nav">
<div class="clr"></div>
</div>
<div class="searchform">
<form id="formsearch" name="formsearch" method="post" action="">

<span><div class="sidebar">
<div class="gadget">
<h2 class="star" style="color:red">UNIVERSITIES</h2>
<ul class="sb_menu">
<li><a href="view-jntu-clgs.jsp">JNTU-ANATAPUR</a></li>
<li><a href="mobileview.jsp">SVU</a></li>
<li><a href="cameraview.jsp">OSMANIA</a></li>


</ul>
</div>

</form>

<style>

siva{
	color:orange;
	
	
	
	width:50px;
	height:500px;
	
font-size:20px;
    margin: 31px;

}

button{
background-color:limegreen;
width:200px;
height:50px;
font-size:30px;

}



siva1{


color:orange;
	
	
	
	width:50px;
	height:500px;
	
font-size:20px;
margin: -27px;


}

</style>
<center>   <marquee direction="left" width="1500" bgcolor="gold" ><h1>View college Details</h1></marquee></center>


<div class="clr"></div>
</div>
</div>
<div class="footer">
<div class="footer_resize">

<ul class="fmenu">

<div class="clr"></div>
</div>
</div>
</div>

    <!-- end #header -->
   
    	
    	
    	
    	
    	
    	 
<% 
ResultSet rs; 
 String filename=request.getParameter("filename");

/* HttpSession ss=request.getSession();
ss.setAttribute("filename", filename);
String imgname=(String)ss.getAttribute(filename);
ss.setAttribute("imgname", imgname);
 */
try 
{ 
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/collegesystem","root","root");
String sql = "SELECT * FROM collegesystem.aupload ";
PreparedStatement ps=(PreparedStatement)con.prepareStatement(sql);
rs=ps.executeQuery(sql); 
//collegename,city,rank,university,state,country,path,filename,sno
while(rs.next()) 
{%>

<li>
         

<table><tr>
<b><% String imgname=rs.getString(8); 
System.out.println("Image name"+imgname);
%><%String modell=rs.getString(2); %>
<siva1>COLLEGE NAME:&nbsp;&nbsp;&nbsp;<%String collegename=rs.getString(1); %><%=collegename %></siva1><br><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	<img style="width:250px;height:250px" src="Uploadimage/<%=imgname%>" alt="" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	<a href="showratingofsist.jsp?imgname=<%=imgname%>&&collegename=<%=collegename %>">	<button>More Details</button></a><br> <siva>LOCATION &nbsp;&nbsp;&nbsp;:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<%=modell %></siva><br><br>
<siva>	RANK &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<%String size=rs.getString(3); %><%=size %></siva><br><br>
	</tr>
	
	
	
	

 

	<siva>UNIVERSITY &nbsp;:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<%String validity=rs.getString(4); %><%=validity %></siva><br><br>
	<siva>STATE &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<%String price=rs.getString(5); %><%=price%></siva><br><br>
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<%String rank=rs.getString(6); %><br><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	
	
	<% 
	//showratingofsist.jsp
	HttpSession img=request.getSession();
	img.setAttribute("collegename", collegename);
	
	img.setAttribute("imgname", imgname);
	
	
	%>
</li>
</div></div>
</table></siva>



<% 
} 
} 
catch(Exception e) 
{ 

} 
%> 
       

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