<%-- 
    Document   : jsp01
    Created on : 26 Mar 2025, 22:04:05
    Author     : harsh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@page import="java.sql.*" %>


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>

    </head>
    <body>
    <center>

        <%

            String idd = request.getParameter("id");
            int id = Integer.parseInt(idd);

            try {

                // load the driver...
                Class.forName("com.mysql.cj.jdbc.Driver");

                // build the connection...
                String url = "jdbc:mysql://localhost:3306/jsp_db";
                String user = "root";
                String pass = "Heyitsnone05@";

                Connection con = DriverManager.getConnection(url, user, pass);

                PreparedStatement pstm = con.prepareStatement("DELETE FROM students WHERE id = ?");
                pstm.setInt(1, id);

                pstm.executeUpdate();
        
                pstm.close();
                con.close();
                
                response.sendRedirect("show.jsp");

            } catch (Exception e) {

                e.printStackTrace();
            }

        %>
        >


    </center>
</body>
</html>
