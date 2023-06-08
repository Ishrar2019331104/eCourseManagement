<%-- 
    Document   : register
    Created on : Apr 29, 2023, 12:44:33 AM
    Author     : ishrar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Register</title>
        <!-- css -->

        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link href="css/mystyle.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <style>
            .card-shadow {
                box-shadow: 0px 0px 10px 0px rgba(0,0,0,0.25);
                
            }
            

        </style>
    </head>
    <body>


        <!--navbar-->

        <%@include file="normal_navbar.jsp" %>

        <!--main-->

        <main class="p-5">
            <div class="container">

                <div class="col-md-6 offset-md-3">

                    <div class="card card-shadow">
                        <div class="card-header bg-dark text-white text-center">
                            <span style="display:block;" class="fa fa-user-plus fa-3x"></span>
                            Register here
                        </div>
                        <div class="card-body">
                            <form id="reg-form" action="Register" method="POST">


                                <!--username-->
                                <div class="form-group">
                                    <label for="username">Username</label>
                                    <input required type="text" name="username" class="form-control" id="username" aria-describedby="usernameHelp" placeholder="Enter username">
                                </div>


                                <div class="form-row"> 
                                    <!--firstname-->
                                    <div class="form-group col-md-6">
                                        <label for="firstName">First Name</label>
                                        <input required name="first_name" type="text" class="form-control" id="firstName" placeholder="Enter first name">
                                    </div>
                                    <!--lastname-->
                                    <div class="form-group col-md-6">
                                        <label for="lastName">Last Name</label>
                                        <input required type="text" class="form-control" name="last_name" id="lastName" placeholder="Enter last name">
                                    </div>
                                </div>
                                <!--email-->
                                <div class="form-group">
                                    <label for="email">Email address</label>
                                    <input required name="email" type="email" class="form-control" id="email" aria-describedby="emailHelp" placeholder="Enter email">
                                </div>
                                <!--password-->
                                <div class="form-group">
                                    <label for="password">Password</label>
                                    <input required name="password" type="password" class="form-control" id="password" placeholder="Enter Password">
                                </div>
                                <!--user_role-->
                                <div class="form-group">
                                    <label for="role">Select Role</label>
                                    <select required class="form-control" id="role" name="user_role">
                                        <option disabled selected>Select Role</option>
                                        <option value="student">Student</option>
                                        <option value="teacher">Teacher</option>
                                        <option value="admin">Admin</option>

                                    </select>
                                </div>
                                <!--phone_number-->
                                <div class="form-group">
                                    <label for="phoneNumber">Phone Number</label>
                                    <input required type="text" name = "phone_number" class="form-control" id="phoneNumber" aria-describedby="phoneNumberHelp" placeholder="Enter phone number">
                                </div>
                                <!--address-->
                                <div class="form-group">
                                    <label for="address">Address</label>
                                    <input required type="text" name = "address" class="form-control" id="address" aria-describedby="addressHelp" placeholder="Enter phone number">
                                </div>

                                <!--loader-->


                                <div class="container text-center" id="loader" style="display:none;">
                                    <span class="fa fa-spinner fa-4x fa-spin"></span>
                                    <h4>Please wait</h4>


                                </div>
                                <br>
                                <button id="register-btn"type="submit" class="btn btn-success btn-block">Register</button>
                                <br>

                                <p>
                                    Already a member? <a href="login.jsp" class="badge badge-secondary badge-pill">Sign In</a>

                                </p>
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
            $(document).ready(function () {
                console.log("loaded");

                $('#reg-form').on('submit', function (event) {
                    event.preventDefault();

                    let form = new FormData(this);

                    $("#register-btn").hide();
                    $("#loader").show();
                    // sending the form to register servlet

                    $.ajax({
                        url: "Register",
                        type: "POST",
                        data: form,
                        success: function (data, textStatus, jqXHR) {
                            console.log(data);
                            $("#register-btn").show();
                            $("#loader").hide();

                            if (data.trim() === 'done')
                            {
                                swal({
                                    title: "Congratulations!",
                                    text: "Your registration is now complete.",
                                    icon: "success",
                                    button: "Sign In Now",

                                }).then((value) => {
                                    window.location = "login.jsp"
                                });
                            } else {
                                swal("It seems like you have already registered.", "Please sign in to access your account.", "error");
                            }
                        },
                        error: function (jqXHR, textStatus, errorThrown) {

                            $("#register-btn").show();
                            $("#loader").hide();
                            swal("Something went wrong", "Try again.", "error");
                        },
                        processData: false,
                        contentType: false
                    });
                });

            })
        </script>

    </body>
</html>
