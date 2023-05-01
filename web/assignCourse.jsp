<%-- 
    Document   : register
    Created on : Apr 29, 2023, 12:44:33 AM
    Author     : ishra
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import= "com.ecourse.management.helper.ConnectionProvider" %>
<%@page import="java.sql.*" %>


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Assign Course</title>
        <!-- css -->

        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link href="css/mystyle.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

    </head>
    <body>




        <!--main-->

        <main class="p-5">
            <div class="container">

                <div class="col-md-6 offset-md-3">

                    <div class="card">
                        <div class="card-header bg-dark text-white text-center">
                            <span style="display:block;" class="fa fa-upload fa-3x"></span>
                            Assign Teacher
                        </div>
                        <div class="card-body">
                            <form>
                                <%
                                    try {
                                        Connection con = ConnectionProvider.getConnection();
                                        String query = "SELECT courseCode FROM course";
                                        PreparedStatement pstmt = con.prepareStatement(query);
                                        ResultSet rs = pstmt.executeQuery();
                                %>
                                <div class="form-group">
                                    <label for="courseCode">Course Code</label>
                                    <select class="form-control" id="courseCode" required>
                                        <option value="" disabled selected>Select a course code</option>
                                        <%
                                            while (rs.next()) {
                                        %>
                                        <option value="<%= rs.getString("courseCode")%>"><%= rs.getString("courseCode")%></option>
                                        <%
                                            }
                                        %>
                                    </select>
                                </div>
                                <%
                                    } catch (Exception e) {
                                        e.printStackTrace();
                                    }
                                %>

                                <%
                                    try {
                                        Connection con = ConnectionProvider.getConnection();
                                        String query = "SELECT courseTitle FROM course";
                                        PreparedStatement pstmt = con.prepareStatement(query);
                                        ResultSet rs = pstmt.executeQuery();
                                %>
                                <div class="form-group">
                                    <label for="courseTitle">Course Title</label>
                                    <select class="form-control" id="courseTitle" required>
                                        <option value="" disabled selected>Select a course title</option>
                                        <%
                                            while (rs.next()) {
                                        %>
                                        <option value="<%= rs.getString("courseTitle")%>"><%= rs.getString("courseTitle")%></option>
                                        <%
                                            }
                                        %>
                                    </select>
                                </div>
                                <%
                                    } catch (Exception e) {
                                        e.printStackTrace();
                                    }
                                %>


                                <%
                                    try {
                                        Connection con = ConnectionProvider.getConnection();
                                        String query = "SELECT username FROM user WHERE user_role='teacher'";
                                        PreparedStatement pstmt = con.prepareStatement(query);
                                        ResultSet rs = pstmt.executeQuery();
                                %>
                                <div class="form-group">
                                    <label for="teacherName">Teacher's name</label>
                                    <select class="form-control" id="teacherName" required>
                                        <option value="" disabled selected>Select teacher's username</option>
                                        <%
                                            while (rs.next()) {
                                        %>
                                        <option value="<%= rs.getString("username")%>"><%= rs.getString("username")%></option>
                                        <%
                                            }
                                        %>
                                    </select>
                                </div>
                                <%
                                    } catch (Exception e) {
                                        e.printStackTrace();
                                    }
                                %>

                                <%
                                    try {
                                        Connection con = ConnectionProvider.getConnection();
                                        String query = "SELECT email FROM user WHERE user_role='teacher'";
                                        PreparedStatement pstmt = con.prepareStatement(query);
                                        ResultSet rs = pstmt.executeQuery();
                                %>
                                <div class="form-group">
                                    <label for="teacherEmail">Teacher's email</label>
                                    <select class="form-control" id="teacherEmail" required>
                                        <option value="" disabled selected>Select teacher's email</option>
                                        <%
                                            while (rs.next()) {
                                        %>
                                        <option value="<%= rs.getString("email")%>"><%= rs.getString("email")%></option>
                                        <%
                                            }
                                        %>
                                    </select>
                                </div>
                                <%
                                    } catch (Exception e) {
                                        e.printStackTrace();
                                    }
                                %>

                                <button type="submit" class="btn btn-primary bg-dark">Assign</button>
                                <a href="adminHome.jsp" class="btn btn-primary bg-dark text-white">Cancel</a>
                            </form>
                        </div>
                    </div>

                </div>

            </div>


        </main>

        <!--javascript-->

        <script src="https://code.jquery.com/jquery-3.6.4.min.js" integrity="sha256-oP6HI9z1XaZNBrJURtCoUT5SUnxFr8s3BzRl+cbzUq8=" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
        <script src="js/myjs.js" type="text/javascript"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.2/sweetalert.min.js"></script>

        <script>





        </script>

    </body>
</html>
