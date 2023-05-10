<%-- 
    Document   : accessDenied
    Created on : May 7, 2023, 8:03:22 PM
    Author     : ishrar
--%>

<%@page import="com.ecourse.management.entities.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    User user = (User) session.getAttribute("currentUser");

    if (user == null) {
        response.sendRedirect("login.jsp");
    }
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Access Denied</title>
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
                    <img class="img-fluid" src="img/access.png"/>

                    <p>We're sorry, but you do not have permission to access this page or perform this action. </p>
                    <br>

                    <br>

                    <%
                        if (user.getUser_role().equals("teacher")) {
                    %>


                    <a href="teacherHome.jsp" class="btn-dark btn-lg mt-3">
                        Home
                    </a>
                    <% } else if(user.getUser_role().equals("admin"))  { %> 
                    <a href="adminHome.jsp" class="btn-dark btn-lg mt-3">
                        Home
                    </a>
                    <% } else { %>
                    <a href="studentHome.jsp" class="btn-dark btn-lg mt-3">
                        Home
                    </a>
                    <% } %>
                </div>
            </div>
        </div>
    </body>
</html>
