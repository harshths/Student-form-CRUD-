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
                margin-top: 20px;
            }



            .card {

                padding: 50px 70px;
                
                transition: all 0.3s ease;
            }

            .card:hover {
                transform: translateY(-5px);
                box-shadow: 0 5px 15px rgba(0, 0, 0, 0.2);
            }

            button{
                width: 100%;
            }

        </style>

    </head>

    <body class="bg-secondary-subtle">

        <div class="container text text-center mt-5">
            <div class="row">
                <div class="col-md-3"></div>
                <div class="card col-md-6 rounded">
                    <h2 class="text-primary fw-bold">Delete Records</h2>


                    <form method="post" action="">
                        <div class="mb-3">
                            <input type="number" name="id" placeholder="Enter Id" class="form-control"
                                   id="exampleInputEmail1" aria-describedby="emailHelp">
                        </div>
                       
                        <button type="submit" class="btn btn-primary fs-5">Delete</button>
                    </form>
                    <br>
                    <a href="show.jsp" class="text-primary fs-7">Back to Records-></a>
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