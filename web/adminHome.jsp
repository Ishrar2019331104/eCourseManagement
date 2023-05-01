<%-- 
    Document   : adminHome
    Created on : Apr 29, 2023, 9:38:55 PM
    Author     : ishra
--%>
<%@page import="com.ecourse.management.entities.User"%>
<%@page errorPage="error_page.jsp" %>
<%
    User user = (User) session.getAttribute("currentUser");

    if (user == null) {
        response.sendRedirect("login.jsp");
    }
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Home</title>
    </head>
    <!-- css -->

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link href="css/mystyle.css" rel="stylesheet" type="text/css"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

    <body>
        <!--navbar-->
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
            <a class="navbar-brand" href="adminHome.jsp"><span class="fa fa-graduation-cap"></span> eCourseManagement</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item active">
                        <a class="nav-link" href="#"><span class="fa fa-info-circle"></span>  About Us <span class="sr-only">(current)</span></a>
                    </li>

                </ul>

                <ul class="navbar-nav mr-right">
                    <li class="nav-item active">
                        <a class="nav-link" href="adminHome.jsp"><span class="fa fa-user-o"></span> <%= user.getUsername()%></a>

                    </li>
                    <li class="nav-item active">
                        <a class="nav-link" href="Logout"><span class="fa fa-sign-out"></span> Log Out</a>

                    </li>
                </ul>


            </div>
        </nav>
        <!--end of navbar-->



        <div class="container">
            <div class="row justify-content-center align-items-center" style="height: 80vh;">
                <div class="col-md-6 text-center">
                    <h3 class="display-4">eCourseManagement</h3>
                    <br>
                    <a href="createCourse.jsp"class="btn btn-outline-dark btn-lg"><span class="fa fa-plus"></span> New Course </a>
                    <a href="assignCourse.jsp"class="btn btn-outline-dark btn-lg"><span class="fa fa-upload"></span> Assign Teacher</a>
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
