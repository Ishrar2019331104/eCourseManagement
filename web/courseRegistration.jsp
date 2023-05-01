<%-- 
    Document   : courseRegistration
    Created on : May 1, 2023, 11:08:42 PM
    Author     : ishra
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import= "com.ecourse.management.helper.ConnectionProvider" %>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Course Registration</title>
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
                            <span style="display:block;" class="fa fa-pencil-square-o fa-3x"></span>
                            Registration Form
                        </div>
                        <div class="card-body">
                            <form id="enrolledcourses-form" action="CourseRegistration" method="POST">

                                <!--for courseCode-->

                                <%
                                    try {
                                        Connection con = ConnectionProvider.getConnection();
                                        String query = "SELECT courseCode FROM assign";
                                        PreparedStatement pstmt = con.prepareStatement(query);
                                        ResultSet rs = pstmt.executeQuery();
                                %>
                                <div class="form-group">
                                    <label for="courseCode">Course Code</label>
                                    <select name="courseCode" class="form-control" id="courseCode" required>
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


                                <!--for courseTitle-->

                                <%
                                    try {
                                        Connection con = ConnectionProvider.getConnection();
                                        String query = "SELECT courseTitle FROM assign";
                                        PreparedStatement pstmt = con.prepareStatement(query);
                                        ResultSet rs = pstmt.executeQuery();
                                %>
                                <div class="form-group">
                                    <label for="courseTitle">Course Title</label>
                                    <select name="courseTitle" class="form-control" id="courseTitle" required>
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







                                <div id="enrolledcourses-loaded" class="container text-center" style="display:none;">
                                    <span class="fa fa-spinner fa-4x fa-spin"></span>
                                    <h4>Please wait</h4>
                                </div>
                                <button id="enrolledcourses-btn" type="submit" class="btn btn-primary bg-dark">Register</button>
                                <a href="studentHome.jsp" class="btn btn-primary bg-dark text-white">Cancel</a>
                            </form>
                        </div>
                    </div>

                </div>

            </div>

                                    
            <!--javascript-->

            <script src="https://code.jquery.com/jquery-3.6.4.min.js" integrity="sha256-oP6HI9z1XaZNBrJURtCoUT5SUnxFr8s3BzRl+cbzUq8=" crossorigin="anonymous"></script>
            <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
            <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
            <script src="js/myjs.js" type="text/javascript"></script>
            <script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.2/sweetalert.min.js"></script>
            
            
            <script>


            $('#enrolledcourses-form').on('submit', function (event) {
                event.preventDefault();

                $("#enrolledcourses-btn").hide();
                $("#enrolledcourses-loader").show();

                let form = new FormData(this);


                // sending the form to course registration servlet

                $.ajax({
                    url: "CourseRegistration",
                    type: "POST",
                    data: form,
                    success: function (data, textStatus, jqXHR) {
                        console.log(data);
                        $("#enrolledcourses-btn").show();
                        $("#enrolledcourses-loader").hide();
                        if (data.trim() === 'done')
                        {
                            swal("Course registration successful!", {
                                icon: "success",
                                buttons: {
                                    cancel: "Go to Home",
                                    catch : {
                                        text: "OK",
                                        value: "catch",
                                    },

                                },
                            })
                                    .then((value) => {
                                        switch (value) {


                                            case "catch":
                                                window.location = "courseRegistration.jsp"
                                                break;

                                            default:
                                                window.location = "studentHome.jsp";

                                        }
                                    });
                        } else if (data.trim() === 'nomatch') {
                            swal("Course code doesnt match with the title", "Try again.", "error");
                        } else if (data.trim()==='notloggedin') {
                            swal("Thats an error", "Please log in again.", "error");
                            
                        } else {
                            swal("You have already registered for this course", "Try again.", "error");
                        }


                    },
                    error: function (jqXHR, textStatus, errorThrown) {

                        $("#enrolledcourses-btn").show();
                        $("#enrolledcourses-loader").hide();
                        swal("Something went wrong", "Try again.", "error");


                    },
                    processData: false,
                    contentType: false
                });
            });


        </script>      

    </body>
</html>
