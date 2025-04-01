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
            String name = request.getParameter("name");
            String ag = request.getParameter("age");
            int age = Integer.parseInt(ag);
            String address = request.getParameter("address");

            if (name.equals(null) || ag.equals(null) || address.equals(null)) {
        %>
        <h1 style="color: red">Please fill the form....</h1>
        <%
        } 

else {

            try {
                // load the driver...
                Class.forName("com.mysql.cj.jdbc.Driver");

                // build the connection...
                String url = "jdbc:mysql://localhost:3306/jsp_db";
                String user = "root";
                String pass = "Heyitsnone05@";

                Connection con = DriverManager.getConnection(url, user, pass);

                String querry = "INSERT INTO students(name, age, address) VALUES (?, ?, ?)";
                PreparedStatement pstm = con.prepareStatement(querry);

                pstm.setString(1, name);
                pstm.setInt(2, age);
                pstm.setString(3, address);

                pstm.executeUpdate();

                pstm.close();
                con.close();

                response.sendRedirect("show.jsp");

            } catch (Exception e) {

                e.printStackTrace();
            }

        }%>


    </center>
</body>
</html>
