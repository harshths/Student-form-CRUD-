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
            //lets take our name and email from the form....
            String idd = request.getParameter("id");
            int id = Integer.parseInt(idd);
            
            String name = request.getParameter("name");
            String ag = request.getParameter("age");
            int age = Integer.parseInt(ag);
            String address = request.getParameter("address");

            try {
                // load the driver...
                Class.forName("com.mysql.cj.jdbc.Driver");

                // build the connection...
                String url = "jdbc:mysql://localhost:3306/jsp_db";
                String user = "root";
                String pass = "Heyitsnone05@";

                Connection con = DriverManager.getConnection(url, user, pass);

                String querry = "UPDATE students SET name = ?, age = ?, address = ? WHERE id = ?;";
                PreparedStatement pstm = con.prepareStatement(querry);

                pstm.setString(1, name);
                pstm.setInt(2, age);
                pstm.setString(3, address);
                pstm.setInt(4, id);

                pstm.executeUpdate();

           
                pstm.close();
                con.close();
                
                
                
                response.sendRedirect("show.jsp");
            
            } catch (Exception e) {
            
            e.printStackTrace();
    }

        %>
        
       
    </center>
    </body>
</html>
