<%-- 
    Document   : index
    Created on : Apr 28, 2023, 12:59:19 PM
    Author     : ishra
--%>

<%@page import="com.ecourse.management.helper.ConnectionProvider"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page  import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>eCourseManagement</title>



        <!-- css -->

        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link href="css/mystyle.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

        <style>
            body {
                background-image: url("img/index.jpg");
                background-repeat: no-repeat;
                background-size: cover;
            }
            .navbar {
                background-color: transparent !important;
                border-color: transparent !important;
            }
            .btn-purple {
                color: #fff;
                background-color: #6f42c1;
                border-color: #6f42c1;
            }
            .btn-purple:hover {
                background-color: transparent !important;
                border-color: #fff;
            }
            
            .btn-login{
                border-color: #6f42c1;
                background-color: transparent !important;
               
            }
            .btn-login:hover {

                border-color: #fff;
                width: 180px;
            }


        </style>

    </head>
    <body>


        <!--navbar-->

        <%@include file="normal_navbar.jsp" %>




        <!--main content-->

        <div class="container">
            <div class="row justify-content-center align-items-center" style="height: 80vh;">
                <div class="col-md-6 text-center">
                    <h3 class="display-4 text-white"><strong>Welcome to eCourseManagement</strong></h3>
                    <p class="text-white">"Education is the most powerful weapon which you can use to change the world." - Nelson Mandela. </p>
                    <a href="register.jsp"class="btn btn-outline-dark btn-lg text-white btn-purple"><span class="fa fa-user-plus"></span><strong> Register Now</strong></a>
                    <a href="login.jsp"class="btn btn-outline-dark btn-lg text-white btn-login"><span class="fa fa-sign-in"></span> <strong>Log In</strong></a>
                </div>
            </div>
        </div>



        <!--javascript-->

        <script src="https://code.jquery.com/jquery-3.6.4.min.js" integrity="sha256-oP6HI9z1XaZNBrJURtCoUT5SUnxFr8s3BzRl+cbzUq8=" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
        <script src="js/myjs.js" type="text/javascript"></script>

    </body>
</html>
