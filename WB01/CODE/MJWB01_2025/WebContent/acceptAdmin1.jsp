
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
        String sno=request.getQueryString();
        System.out.println("uid="+sno);
        Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/collegesystem","root","root");
        PreparedStatement ps=con.prepareStatement("update collegesystem.studentpaymnet set accept='accepted' where sno='"+sno+"'");
        ps.executeUpdate();
        response.sendRedirect("paymentaccepted.jsp");

%>
    </body>
</html>
