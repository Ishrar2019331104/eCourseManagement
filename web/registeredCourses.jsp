<%-- 
    Document   : registeredCourses
    Created on : May 2, 2023, 3:25:45 AM
    Author     : ishra
--%>

<%@page import="com.ecourse.management.entities.User"%>
<%@page import="java.sql.ResultSet" %>
<%@page errorPage="error_page.jsp" %>
<%
    User user = (User) session.getAttribute("currentUser");
    if (user == null) {
        response.sendRedirect("login.jsp");
    }

%>
<%    ResultSet rs = (ResultSet) request.getAttribute("tableData");
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registered Courses</title>
        <!-- css -->

        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link href="css/mystyle.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

    </head>

    <body>

        <!--navbar-->
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
            <a class="navbar-brand" href="studentHome.jsp"><span class="fa fa-graduation-cap"></span> eCourseManagement</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav mr-auto">


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
            <div class="row justify-content-center pt-4" style="height: 80vh;">
                <div class="col-md-6 text-center">
                    <h3 class="display-4">My Registered Courses</h3>
                    <br>
                    <table class="table table-hover">

                        <thead>
                            <tr>
                                <th>Course Code</th>
                                <th>Course Title</th>
                                <th>Credit</th>
                            </tr>
                        </thead>

                        <tbody>
                            <% while (rs.next()) { %>
                            <tr>

                                <td>
                                    <% out.print(rs.getString("courseCode")); %>
                                </td>
                                <td>
                                    <% out.print(rs.getString("courseTitle")); %>
                                </td>
                                <td>
                                    <% out.print(rs.getString("credit")); %>
                                </td>

                            </tr>
                            <% }%>
                        </tbody>
                    </table>

                    <a href="studentHome.jsp" class="btn btn-primary bg-dark">Go to Home</a>
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
