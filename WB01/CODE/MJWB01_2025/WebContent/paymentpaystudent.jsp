<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">    
    <title>Student Home</title>

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
          <a class="navbar-brand" href="index.html"><i class="fa fa-university"></i><span>Student </span></a>
          <!-- IMG BASED LOGO  -->
        
        </div>
        <div id="navbar" class="navbar-collapse collapse">
          <ul id="top-menu" class="nav navbar-nav navbar-right main-nav">
            <li><a href="user.jsp">Home</a></li> 
            
                       
            <li class="dropdown">
            
              <a href="#" class="dropdown-toggle" data-toggle="dropdown">View Strudents <span class="fa fa-angle-down"></span></a>
              <ul class="dropdown-menu" role="menu">
                <li><a href="applicationformacadamicd.jsp">Registered Students Applicationform</a></li>                
                   <li><a href="paymentpaystudent.jsp">Payment</a></li>         
              </ul>
               </li>  
               
               
               
               
               
               
               
                
             <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown">Universities <span class="fa fa-angle-down"></span></a>
              <ul class="dropdown-menu" role="menu">
                          
                <li><a href="view-jntu-clgscounselor.jsp">View Jntu Colleges</a></li>   
                 <li><a href="">view svu Colleges</a></li>     
                   <li><a href="">view osmania universityn colleges </a></li>           
              </ul>
            </li>  
            
                 <li><a href="adminuser.jsp">Logout</a></li> 
            
                
          </ul>                   
         
      </div>     
    </nav>
  </section>
  <!-- End menu -->      
                  </form>
                </div>
              </div>
              <div class="col-md-6">
           
            </div>
          </div>
          <!-- end contact content -->
         </div>
       </div>
     </div>
   </div>
 </section>
 <!-- End contact  -->
<br><br><br><br>






<br><br><br><br><br><br>
<form action="StudentPayment" name="myForm" method="post" >	




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

<th>PAY PAMENT HERE</th>
						
					<tr><th><td><input placeholder=" NAME" name="stname" type="text"></td></th></tr>
							
					<tr><th><td><input placeholder="MOBILE NUMBER"  name="mobileno" type="text"></td></th></tr>
			
												<tr><th><td><select name="bank" style="color: red;">  
<!-- <option value="">--</option>  -->
<option value="SBI">SBI</option> 
<option value="HDFC">HDFC</option> 
<option value="AXIS">AXIS</option> 
<option value="SBT">SBT</option> 
<option value="ICICI">ICICI</option>
<option value="BHARATH">BHARATH</option> 
<option value="CHITFUND">CHITFUND</option> 
<option value="SWIS BANK">SWIS BANK</option> 
<option value="INDIAN OVERSIS">INDIAN OVERSIS</option> 
</select> </td></th></tr>
 
								
								

						
					<tr>	<th><td>	<input placeholder=" ACCOUNT NUMBER" name="accno" type="text"></td></th></tr>
							
					
						
					<tr><th><td>	<input  name="amount"  placeholder="Amount" type="text"></td></th></tr>
			
							
						<tr>			
						<th><td>	<input placeholder="PINCODE"  name="pincode" type="text"></td></th></tr><br><br><br><br>
									
						<tr><th><td>	<input placeholder="Address"  name="address" type="text"></td></th></tr>
									
							<tr><th><td><input placeholder="TOWN/CITY"  name="city" type="text"></td></th></tr>
							<tr><th><td><input placeholder="STATE"  name="state" type="text"></td></th><tr>
									
									
							
									
									
									
						<tr>			
						<th><td>	<select name="country" >  
<!-- <option value="">--</option>  -->
<option value="AF">Afghanistan</option> 
<option value="AX">Aland Islands</option> 
<option value="AL">Albania</option> 
<option value="DZ">Algeria</option> 
<option value="AS">American Samoa</option> 
<option value="AD">Andorra</option> 
<option value="AO">Angola</option> 
<option value="AI">Anguilla</option> 
<option value="AQ">Antarctica</option> 
<option value="AG">Antigua and Barbuda</option> 
<option value="AR">Argentina</option> 
<option value="AM">Armenia</option> 
<option value="AW">Aruba</option> 
<option value="AU">Australia</option> 
<option value="AT">Austria</option> 
<option value="AZ">Azerbaijan</option> 
<option value="BS">Bahamas, The</option> 
<option value="BH">Bahrain</option> 
<option value="BD">Bangladesh</option> 
<option value="BB">Barbados</option> 
<option value="BY">Belarus</option> 
<option value="BE">Belgium</option> 
<option value="BZ">Belize</option> 
<option value="BJ">Benin</option> 
<option value="BM">Bermuda</option> 
<option value="BT">Bhutan</option> 
<option value="BO">Bolivia</option> 
<option value="BQ">Bonaire, Saint Eustatius and Saba</option> 
<option value="BA">Bosnia and Herzegovina</option> 
<option value="BW">Botswana</option> 
<option value="BV">Bouvet Island</option> 
<option value="BR">Brazil</option> 
<option value="IO">British Indian Ocean Territory</option> 
<option value="BN">Brunei Darussalam</option> 
<option value="BG">Bulgaria</option> 
<option value="BF">Burkina Faso</option> 
<option value="BI">Burundi</option> 
<option value="KH">Cambodia</option> 
<option value="CM">Cameroon</option> 
<option value="CA">Canada</option> 
<option value="CV">Cape Verde</option> 
<option value="KY">Cayman Islands</option> 
<option value="CF">Central African Republic</option> 
<option value="TD">Chad</option> 
<option value="CL">Chile</option> 
<option value="CN">China</option> 
<option value="CX">Christmas Island</option> 
<option value="CC">Cocos (Keeling) Islands</option> 
<option value="CO">Colombia</option> 
<option value="KM">Comoros</option> 
<option value="CG">Congo</option> 
<option value="CD">Congo, Democratic Republic of</option> 
<option value="CK">Cook Islands</option> 
<option value="CR">Costa Rica</option> 
<option value="HR">Croatia</option> 
<option value="CW">Curaçao</option> 
<option value="CY">Cyprus</option> 
<option value="CZ">Czech Republic</option> 
<option value="DK">Denmark</option> 
<option value="DJ">Djibouti</option> 
<option value="DM">Dominica, Commonwealth of</option> 
<option value="DO">Dominican Republic</option> 
<option value="TL">East Timor</option> 
<option value="EC">Ecuador</option> 
<option value="EG">Egypt</option> 
<option value="SV">El Salvador</option> 
<option value="GQ">Equatorial Guinea</option> 
<option value="ER">Eritrea</option> 
<option value="EE">Estonia</option> 
<option value="ET">Ethiopia</option> 
<option value="FK">Falkland Islands</option> 
<option value="FO">Faroe Islands</option> 
<option value="FJ">Fiji</option> 
<option value="FI">Finland</option> 
<option value="FR">France</option> 
<option value="GF">French Guiana</option> 
<option value="PF">French Polynesia</option> 
<option value="TF">French Southern Territories</option> 
<option value="GA">Gabon</option> 
<option value="GM">Gambia, The</option> 
<option value="GE">Georgia</option> 
<option value="DE">Germany</option> 
<option value="GH">Ghana</option> 
<option value="GI">Gibraltar</option> 
<option value="GR">Greece</option> 
<option value="GL">Greenland</option> 
<option value="GD">Grenada</option> 
<option value="GP">Guadeloupe</option> 
<option value="GU">Guam</option> 
<option value="GT">Guatemala</option> 
<option value="GG">Guernsey</option> 
<option value="GN">Guinea</option> 
<option value="GW">Guinea-Bissau</option> 
<option value="GY">Guyana</option> 
<option value="HT">Haiti</option> 
<option value="HM">Heard Island and the McDonald Islands</option> 
<option value="VA">Holy See</option> 
<option value="HN">Honduras</option> 
<option value="HK">Hong Kong</option> 
<option value="HU">Hungary</option> 
<option value="IS">Iceland</option> 
<option value="IN" SELECTED >India</option> 
<option value="ID">Indonesia</option> 
<option value="IQ">Iraq</option> 
<option value="IE">Ireland, Republic of</option> 
<option value="IM">Isle of Man</option> 
<option value="IL">Israel</option> 
<option value="IT">Italy</option> 
<option value="CI">Ivory Coast (Côte D'ivoire)</option> 
<option value="JM">Jamaica</option> 
<option value="JP">Japan</option> 
<option value="JE">Jersey</option> 
<option value="JO">Jordan</option> 
<option value="KZ">Kazakhstan</option> 
<option value="KE">Kenya</option> 
<option value="KI">Kiribati</option> 
<option value="KR">Korea, Republic of</option> 
<option value="XK">Kosovo</option> 
<option value="KW">Kuwait</option> 
<option value="KG">Kyrgyzstan</option> 
<option value="LA">Lao, People's Democratic Republic</option> 
<option value="LV">Latvia</option> 
<option value="LB">Lebanon</option> 
<option value="LS">Lesotho</option> 
<option value="LR">Liberia</option> 
<option value="LY">Libya</option> 
<option value="LI">Liechtenstein</option> 
<option value="LT">Lithuania</option> 
<option value="LU">Luxembourg</option> 
<option value="MO">Macao</option> 
<option value="MK">Macedonia, The Former Yugoslav Republic of</option> 
<option value="MG">Madagascar</option> 
<option value="MW">Malawi</option> 
<option value="MY">Malaysia</option> 
<option value="MV">Maldives</option> 
<option value="ML">Mali</option> 
<option value="MT">Malta</option> 
<option value="MH">Marshall Islands</option> 
<option value="MQ">Martinique</option> 
<option value="MR">Mauritania</option> 
<option value="MU">Mauritius</option> 
<option value="YT">Mayotte</option> 
<option value="MX">Mexico</option> 
<option value="FM">Micronesia, Federated States of</option> 
<option value="MD">Moldova, Republic of</option> 
<option value="MC">Monaco</option> 
<option value="MN">Mongolia</option> 
<option value="ME">Montenegro</option> 
<option value="MS">Montserrat</option> 
<option value="MA">Morocco</option> 
<option value="MZ">Mozambique</option> 
<option value="MM">Myanmar</option> 
<option value="NA">Namibia</option> 
<option value="NR">Nauru</option> 
<option value="NP">Nepal</option> 
<option value="NL">Netherlands</option> 
<option value="AN">Netherlands Antilles</option> 
<option value="NC">New Caledonia</option> 
<option value="NZ">New Zealand</option> 
<option value="NI">Nicaragua</option> 
<option value="NE">Niger</option> 
<option value="NG">Nigeria</option> 
<option value="NU">Niue</option> 
<option value="NF">Norfolk Island</option> 
<option value="MP">Northern Mariana Islands</option> 
<option value="NO">Norway</option> 
<option value="OM">Oman</option> 
<option value="PK">Pakistan</option> 
<option value="PW">Palau</option> 
<option value="PS">Palestinian Territories</option> 
<option value="PA">Panama</option> 
<option value="PG">Papua New Guinea</option> 
<option value="PY">Paraguay</option> 
<option value="PE">Peru</option> 
<option value="PH">Philippines</option> 
<option value="PN">Pitcairn</option> 
<option value="PL">Poland</option> 
<option value="PT">Portugal</option> 
<option value="PR">Puerto Rico</option> 
<option value="QA">Qatar</option> 
<option value="RE">Reunion</option> 
<option value="RO">Romania</option> 
<option value="RU">Russian Federation</option> 
<option value="RW">Rwanda</option> 
<option value="BL">Saint Barthelemy</option> 
<option value="SH">Saint Helena, Ascension and Tristan da Cunha</option> 
<option value="KN">Saint Kitts and Nevis</option> 
<option value="LC">Saint Lucia</option> 
<option value="MF">Saint Martin</option> 
<option value="PM">Saint Pierre and Miquelon</option> 
<option value="VC">Saint Vincent and the Grenadines</option> 
<option value="WS">Samoa</option> 
<option value="SM">San Marino</option> 
<option value="ST">Sao Tome and Principe</option> 
<option value="SA">Saudi Arabia</option> 
<option value="SN">Senegal</option> 
<option value="RS">Serbia</option> 
<option value="SC">Seychelles</option> 
<option value="SL">Sierra Leone</option> 
<option value="SG">Singapore</option> 
<option value="SX">Sint Maarten</option> 
<option value="SK">Slovakia</option> 
<option value="SI">Slovenia</option> 
<option value="SB">Solomon Islands</option> 
<option value="SO">Somalia</option> 
<option value="ZA">South Africa</option> 
<option value="GS">South Georgia and the South Sandwich Islands</option> 
<option value="ES">Spain</option> 
<option value="LK">Sri Lanka</option> 
<option value="SR">Suriname</option> 
<option value="SJ">Svalbard and Jan Mayen</option> 
<option value="SZ">Swaziland</option> 
<option value="SE">Sweden</option> 
<option value="CH">Switzerland</option> 
<option value="TW">Taiwan</option> 
<option value="TJ">Tajikistan</option> 
<option value="TZ">Tanzania, United Republic of</option> 
<option value="TH">Thailand</option> 
<option value="TG">Togo</option> 
<option value="TK">Tokelau</option> 
<option value="TO">Tonga</option> 
<option value="TT">Trinidad and Tobago</option> 
<option value="TN">Tunisia</option> 
<option value="TR">Turkey</option> 
<option value="TM">Turkmenistan</option> 
<option value="TC">Turks and Caicos Islands</option> 
<option value="TV">Tuvalu</option> 
<option value="UG">Uganda</option> 
<option value="UA">Ukraine</option> 
<option value="AE">United Arab Emirates</option> 
<option value="GB">United Kingdom</option> 
<option value="US">United States</option> 
<option value="UM">United States Minor Outlying Islands</option> 
<option value="UY">Uruguay</option> 
<option value="UZ">Uzbekistan</option> 
<option value="VU">Vanuatu</option> 
<option value="VE">Venezuela</option> 
<option value="VN">Vietnam</option> 
<option value="VG">Virgin Islands, British</option> 
<option value="VI">Virgin Islands, US</option> 
<option value="WF">Wallis and Futuna</option> 
<option value="EH">Western Sahara</option> 
<option value="YE">Yemen</option> 
<option value="ZM">Zambia</option> 
<option value="ZW">Zimbabwe</option> 
</select> </td></th></tr>
 
 
<tr><th><td> <input type="text" name="selectcollegesnames" placeholder="SELECTED COLLEGES NAMES"></td></th></tr>
<tr><th><td> <input type="text" name="branch" placeholder="BRANCH NAME"></td></th></tr>
<tr><th><td><input type="submit" value="PAY" size="100"  ></td></th></tr>
							
									
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
