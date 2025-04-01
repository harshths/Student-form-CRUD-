<%-- 
    Document   : jsp01
    Created on : 26 Mar 2025, 22:04:05
    Author     : harsh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>User Information Form</title>


        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
              integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">

        <style>
            input {
                height: 60px;
            }

            form {
                margin-top: 50px;
                height: 300px;
            }



            .card {

                padding: 50px;
                transition: all 0.3s ease;
            }

            .card:hover {
                transform: translateY(-5px);
                box-shadow: 0 5px 15px rgba(0, 0, 0, 0.2);
            }

        </style>

    </head>

    <body class="bg-secondary-subtle">

        <div class="container text text-center mt-5">
            <div class="row">
                <div class="col-md-3"></div>
                <div class="card col-md-6 rounded>">
                    <h1 class="text-primary fw-bold">User Information</h1>


                    <form method="post" action="">
                        <div class="mb-3">
                            <input type="text" name="name" placeholder="Enter Name" class="form-control"
                                   id="exampleInputEmail1" aria-describedby="emailHelp">
                        </div>
                        <div class="mb-3">
                            <input type="number" name="age" placeholder="Enter Age" class="form-control"
                                   id="exampleInputPassword1">
                        </div>
                        <div class="mb-3">
                            <input input type="text" name="address" placeholder="Enter Address" class="form-control"
                                   id="exampleInputPassword1">
                        </div>
                        <button type="submit" class="btn btn-primary mt-4 fs-5">Submit</button>
                    </form>
                    <br>
                    <a href="show.jsp" class="text-primary fs-7">All Records-></a>
                </div>
                <div class="col-md-3"></div>
            </div>
        </div>



        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js"
                integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r"
        crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.min.js"
                integrity="sha384-0pUGZvbkm6XF6gxjEnlmuGrJXVbNuzT9qBBavbLwCsOGabYfZo0T0to5eqruptLy"
        crossorigin="anonymous"></script>
    </body>

</html>