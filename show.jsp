<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Student Records</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
        <style>

            .card {
                width: 900px;
                transition: all 0.3s ease;
            }

            .row {
                margin-top: 80px;
            }

            .records {
                margin-top: 50px;
            }

            .card-body {
                margin-top: 20px;
            }

            .data:hover {
                background-color: rgb(255, 243, 174);
            }


            .card:hover {
                transform: translateY(-5px);
                box-shadow: 0 5px 15px rgba(0, 0, 0, 0.2);
            }

        </style>
    </head>

    <body class="bg-secondary-subtle">
        <div class="row">
            <div class="col-md-2"></div>
            <div class="col-md-8 ">

                <div class="card text-center">
                    <div class="card-body rounded-4">
                        <h2 class="page-title text-primary fw-bold">Students Records</h2>

                        <div class="records">
                            <%
                                try {
                                    Class.forName("com.mysql.cj.jdbc.Driver");
                                    String url = "jdbc:mysql://localhost:3306/jsp_db";
                                    String user = "root";
                                    String pass = "Heyitsnone05@";

                                    Connection con = DriverManager.getConnection(url, user, pass);
                                    String querry = "SELECT * FROM students";
                                    Statement stm = con.createStatement();
                                    ResultSet rs = stm.executeQuery(querry);
                            %> 
                            <table class="table">
                                <thead class="table-light">
                                    <tr>
                                        <th class="bg-primary text-white">ID</th>
                                        <th class="bg-primary text-white">NAME</th>
                                        <th class="bg-primary text-white">AGE</th>
                                        <th class="bg-primary text-white">ADDRESS</th>
                                    </tr>
                                </thead>
                                <tbody>

                                    <%
                                        while (rs.next()) {
                                            int id = rs.getInt("id");
                                            String name = rs.getString("name");
                                            int age = rs.getInt("age");
                                            String address = rs.getString("address");
                                    %>
                                    <tr class="data">



                                        <td><%=id%></td>
                                        <td><%=name%></td>
                                        <td><%=age%></td>
                                        <td><%=address%></td>

                                    </tr>
                                    <%
                                            }
                                        } catch (Exception e) {
                                            e.printStackTrace();
                                        }
                                    %>

                                </tbody>
                            </table>

                        </div>


                        <div class="navigation-links pt-5 pb-3" >
                            <button type="button" class="btn btn-primary ms-2">
                                <a href="index.jsp" class="nav-link home-link">Home</a>
                            </button>
                            <button type="button" class="btn btn-primary ms-2">
                                <a href="update.jsp" class="nav-link action-link">Update</a>
                            </button>
                            <button type="button" class="btn btn-primary ms-2">
                                <a href="delete.jsp" class="nav-link action-link">Delete</a>
                            </button>


                        </div>
                    </div>
                </div>

            </div>
            <div class="col-md-2"></div>

        </div>


        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
    </body>

</html>