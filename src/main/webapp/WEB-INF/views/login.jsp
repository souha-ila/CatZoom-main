<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Cat Adoption</title>
    
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
          integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <style>
        body {
            background-color: #f8f9fa;
        }

        .card {
            margin-top: 20px;
        }
.btn-brown {
            background-color: #8B4513; 
            color: white;
        }

      
        .btn-french-brown {
            background-color: #965026; 
            color: white;
        }
        
    </style>
</head>
<body>

<section>
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-6">
                <div class="card">
                   
                    <div class="card-body">
                        <div class="card-header text-center fs-4">Login Page</div>
                        <% if (request.getParameter("error") != null) { %>
                            <p class="text-center text-danger fs-5"><%= request.getAttribute("SPRING_SECURITY_LAST_EXCEPTION.message") %></p>
                        <% } %>
                        <% if (request.getParameter("logout") != null) { %>
                            <p class="text-center text-success fs-5">Logout Successfully</p>
                        <% } %>
                        <form action="userLogin" method="post">
                            <div class="mb-3">
                                <label for="username">Enter Email</label>
                                <input type="text" name="username" class="form-control">
                            </div>
                            <div class="mb-3">
                                <label for="password">Enter Password</label>
                                <input type="password" name="password" class="form-control">
                            </div>
                            <button class="btn btn-brown col-md-12">Login</button>
                        </form>

                        <hr>

                        <div class="text-center">
                            <p>Don't have an account yet? Register now!</p>
                            <a href="register" class="btn btn-french-brown ">Register</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>




<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
        integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
        crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
        integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
        crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
        integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
        crossorigin="anonymous"></script>
</body>
</html>
