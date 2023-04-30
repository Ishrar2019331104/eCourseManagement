<%-- 
    Document   : error_page
    Created on : Apr 29, 2023, 8:25:29 PM
    Author     : ishra
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page isErrorPage="true"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sorry! Something went wrong.</title>
        <!-- css -->

        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link href="css/mystyle.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

    </head>
    <body>
        <!--        <div class="container text-center pt-4">
                    
                </div>-->
        <div class="container">
            <div class="row justify-content-center align-items-center" style="height: 80vh;">
                <div class="col-md-6 text-center">
                    <img class="img-fluid" src="img/error.png" alt="" height="200px" width="200px"/>
                    <h1 class="display-4">Uh oh!</h1>
                    <p>Something went wrong. Please try again.</p>
                    <%= exception %>
                    <a href="index.jsp" class="btn-dark btn-lg mt-3">Home</a>
                </div>
            </div>
        </div>
    </body>
</html>
