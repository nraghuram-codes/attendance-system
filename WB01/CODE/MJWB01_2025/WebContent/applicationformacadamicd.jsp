
 
 
 
 <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<!--
Design by Free CSS Templates
http://www.freecsstemplates.org
Released for free under a Creative Commons Attribution 2.5 License
-->
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>Natural Beauties by Free Css Templates</title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<link href="default.css" rel="stylesheet" type="text/css" />
<style type="text/css">
<!--
.style15 {
	color: #000000;
	font-weight: bold;
}
.style16 {color: #CCCCCC}
.style17 {color: #000000}
-->
</style>
 <script language="JavaScript" src="scripts/general.js"></script>
</head>
<body>
<form action="ApplicationServlet" method="post" name="acadamicreg" id="acadamic">

<center>
<h1>&nbsp;</h1>

<div id="content">
		<div id="sidebar">
		<div id="archives" class="boxed">
		  <p></p>
		  <div class="content">
				<ul>
				  <li>
				 
				    Application Form
				   <%if(request.getParameter("status")!=null)
    {%>
    <%=request.getParameter("status")%>
    <%} %>
				  

				  <input type="text"  name="studentname" placeholder="Studentname"></input> 
               <input type="hidden"   name="loginname" value="<%=(String)session.getAttribute("user")%>"/><center>
      <table width="1000" border="2" align="center" bordercolor="#000000"  id="posts">
            <tr>
              <td height="24" bgcolor="orange">SUBJECT</td>
              <td ><label>
                <select name="subject">
				<option value="Maths">Maths</option>
				<option value="Science">Science</option>
                </select>
              </label></td>
            </tr>
            <tr>
                <td width="135"height="30" bgcolor="green" ><div align="center"><span class="style38 style36 style16"><strong>SSC</strong></span></div></td>
              <td width="189" >&nbsp;</td>
        </tr>
              <tr>
                <td bgcolor="#D1D566" ><div align="center" class="style15">RegNo</div></td>
                <td ><input name="regno" type="text" id="regno" /></td>
              </tr>
              <tr>
                <td height="24" valign="top" bgcolor="#D1D566" class="style36"><span class="style15">Year of Passed Out</span></td>
                <td valign="top" ><span class="style16">
                  <select name="yearofpass1">
                    <%
									     for(int year=1980;year<=2005;year++)
										 {
									  %>
                    <option><%=year%></option>
                    <%}%>
                  </select>
                </span></td>
              </tr>
              <tr>
                <td valign="top" bgcolor="#D1D566" class="style36"><span class="style17"><strong>Percentage</strong></span></td>
                <td valign="top"><span class="style16">
                  <label>
                  <input type="text" name="percentage1" id="textfield"/>
                  </label>
                </span></td>
              </tr>
              <tr>
             <center>    <td height="24" bgcolor="green"><span class="style38 style36 style16"><strong>Under Graduation</strong></span></td></center> 
                <td ><span class="style16"></span></td>
              </tr>
              <tr>
                <td bgcolor="#D1D566" ><span class="style15"> <center>RegNo </center></span></td>
                <td><input name="ugreg" type="text" id="textfield2"/></td>
              </tr>
              <tr>
                <td height="25" valign="top" bgcolor="#D1D566"><span class="style36 style17"><strong>Year of Passed Out </strong></span></td>
                <td valign="top"><label>
                  <select name="yearofpass2">
                    <%
									     for(int year=1980;year<=2050;year++)
										 {
									  %>
                    <option><%=year%></option>
                    <%}%>
                  </select>
                </label></td>
              </tr>
              <tr>
                <td valign="top" bgcolor="#D1D566" class="style36"><span class="style17"><strong>Percentage</strong></span></td>
                <td valign="top"><label>
                  <input type="text" name="percentage2" id="textfield"/>
                </label></td>
              </tr>
              <tr>
            <center>    <td height="24" bgcolor="green"><span class="style38 style36 style16"><strong></center>
                  <input type="checkbox" name="ch" id="checkbox" onClick="graduatecheck(document.acadamicreg)"/>
&nbsp;
                  Graduation</strong></span></td>
                <td >&nbsp;</td>
              </tr>
              <tr>
                <td bgcolor="#D1D566" ><span class="style17"><strong><center>RegNo </center></strong></span></td>
                <td><input type="text" name="greg" id="textfield2" disabled="disabled" /></td>
              </tr>
              <tr>
                <td height="24" bgcolor="#D1D566"><span class="style36 style17"><strong>Year of Passed Out </strong></span></td>
                <td><label>
                  <select name="yearofpass3" disabled>
                    <%
									     for(int year=1980;year<=2050;year++)
										 {
									  %>
                    <option><%=year%></option>
                    <%}%>
                  </select>
                </label></td>
              </tr>
              <tr>
                <td bgcolor="#D1D566" class="style36"><span class="style17"><strong>Percentage</strong></span></td>
                <td><label>
                  <input type="text" name="percentage3" disabled="disabled"/>
                </label></td>
              </tr>
              <tr>
                <td height="12" class="style36 style17"></td>
                <td></td>
              </tr>

              <tr bgcolor="#660033">
                <td bgcolor="#D1D566"><span class="style37 style17"><strong>Course</strong></span></td>
                <td bgcolor="#FFFFFF" >
                  <select name="course" id="course" onChange="getdiscipline(document.acadamic)">
                  
                  <option name="ece" value="ece">ece </option>
                   <option name="cse" value="cse">cse </option>
                    <option name="eee " value="eee ">eee </option>
                     <option name="civil" value="civil">civil </option>
                      <option name="mech " value="mech ">mech </option>
                 
                  </select>                                </td>
              </tr>
        

              <tr>
                <td colspan="2"><div align="center">
                        <input type="submit" name="Submit" value="Register"/>
                </div></td>
              </tr>
          </table>
               </center>
     
				 </form>
		
<div id="footer"></div></li></ul></div></div></div></div></center>
</body>
</html>
 