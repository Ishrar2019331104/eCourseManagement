<%-- 
    Document   : login
    Created on : Apr 29, 2023, 12:04:46 AM
    Author     : ishra
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
        <!--css-->
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link href="css/mystyle.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

    </head>
    <body>

        <!--navbar-->
        <%@include  file="normal_navbar.jsp"%>

        <main class="d-flex align-items-center" style="height:100vh;">
            <div class="container">
                <div class="row">
                    <div class="col-md-4 offset-md-4">
                        <div class="card">

                            <div class="card-header bg-dark text-center text-white">
                                <span style="display:block;" class="fa fa-user-circle fa-3x"></span>

                                Login here
                            </div>

                            <div class="card-body">
                                <form>
                                    <div class="form-group">
                                        <label for="username">Username</label>
                                        <input type="text" name = "username" class="form-control" id="username" aria-describedby="usernameHelp" placeholder="Enter username">
                                    </div>

                                    <div class="form-group">
                                        <label for="password">Password</label>
                                        <input type="password" name="password" class="form-control" id="password" placeholder="Enter password">
                                    </div>

                                    <div class="form-group">
                                        <label for="role">Select Role</label>
                                        <select class="form-control" id="role" name="role">
                                            <option disabled selected>Select Role</option>
                                            <option value="student">Student</option>
                                            <option value="teacher">Teacher</option>
                                            <option value="admin">Admin</option>
                                            
                                        </select>
                                    </div>

                                    <button type="submit" class="btn btn-dark">Submit</button>
                                    
                                    <p>
                                        Not a member yet? <a href="register.jsp" class="badge badge-secondary">Sign Up</a>

                                    </p>
                                </form>

                            </div>


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


    </body>
</html>
