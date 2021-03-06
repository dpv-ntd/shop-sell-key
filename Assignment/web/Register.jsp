<%-- 
    Document   : Login
    Created on : Mar 16, 2022, 11:38:35 AM
    Author     : MyPC
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Register | DSoftware</title>
        <!-- Favicon-->
        <link rel="icon" type="image/x-icon" href="assets/icon-36x36.png" />
        <!-- Bootstrap icons-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="css/styles.css" rel="stylesheet" />
    </head>
    <body>
        <div class="container p-5">
            <div class="d-flex justify-content-center">
                <div class="text-center">
                    <div ${error == null ? "hidden":""} class="alert alert-danger text-center px-5 w-100" role="alert" >
                        ${error}
                    </div>
                    <div ${success == null ? "hidden":""} class="alert alert-success text-center px-5 w-100" role="alert" >
                        ${success}
                    </div>
                </div>
            </div>
            <div class="d-flex justify-content-center">
                <form action="register" method="post" class="bg-light" style="border: 1px solid #ccc; border-radius: 5px; padding: 3rem">
                    <h1 class="h3 mb-3 font-weight-normal text-center">Create account</h1>

                    <h5 class="sr-only">Username</h5>
                    <input type="text" class="form-control mb-2" placeholder="Enter Username" required name="username">
                    <h5 class="sr-only">Password</h5>
                    <input type="password" class="form-control mb-2" placeholder="Enter Password" required name="password">
                    <h5 class="sr-only">Repeat Password</h5>
                    <input type="password" class="form-control mb-3" placeholder="Repeat Password" required name="repassword">
                    <div class="col-md-12 text-center">
                        <button class="btn btn-primary btn-block px-5 w-100" type="submit">Register</button>
                    </div>
                    <div class="text-center pt-2 px-5">
                        Do have account? <a href="login">Login now</a>
                    </div>
                    <div class="text-center pt-2">
                        <a href="home">Back to shop</a>
                    </div>
                </form>
            </div>
        </div>
    </div>

</body>
</html>

