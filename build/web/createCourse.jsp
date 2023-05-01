<%-- 
    Document   : register
    Created on : Apr 29, 2023, 12:44:33 AM
    Author     : ishra
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Create Course</title>
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
                            <span style="display:block;" class="fa fa-plus fa-3x"></span>
                            Add New Course
                        </div>
                        <div class="card-body">
                            <form id="course-form" action="CreateCourse" method="POST">
                                <div class="form-group">
                                    <label for="courseCode">Course Code</label>
                                    <input name="courseCode" type="text" class="form-control" id="courseCode" placeholder="Enter course code" required>
                                </div>
                                <div class="form-group">
                                    <label for="courseTitle">Course Title</label>
                                    <input name="courseTitle" type="text" class="form-control" id="courseTitle" placeholder="Enter course title" required>
                                </div>
                                <div class="form-group">
                                    <label for="credit">Credit</label>
                                    <input name="credit" type="text" class="form-control" id="credit" placeholder="Enter credit" required>
                                </div>
                                <div class="form-group">
                                    <label for="year">Year</label>
                                    <input name="year" type="text" class="form-control" id="year" placeholder="Enter year (in the order - 1,2,3,4)" required>
                                </div>
                                <div class="form-group">
                                    <label for="semester">Semester</label>
                                    <input type="text" name="semester" class="form-control" id="semester" placeholder="Enter semester (in the order - 1,2)" required>
                                </div>
                                <div class="container text-center" id="create-loader" style="display:none;">
                                    <span class="fa fa-spinner fa-4x fa-spin"></span>
                                    <h4>Please wait</h4>


                                </div>
                                <button id="create-btn" type="submit" class="btn btn-primary bg-dark">Create</button>
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


            $('#course-form').on('submit', function (event) {
                event.preventDefault();

                $("#create-btn").hide();
                $("#create-loader").show();

                let form = new FormData(this);


                // sending the form to register servlet

                $.ajax({
                    url: "CreateCourse",
                    type: "POST",
                    data: form,
                    success: function (data, textStatus, jqXHR) {
                        console.log(data);
                        $("#create-btn").show();
                        $("#create-loader").hide();
                        if (data.trim() === 'done')
                        {
                            swal("Course created successfully!", {
                                icon: "success",
                                buttons: {
                                    cancel: "Go to Home",
                                    catch : {
                                        text: "Add More",
                                        value: "catch",
                                    },

                                },
                            })
                                    .then((value) => {
                                        switch (value) {


                                            case "catch":
                                                window.location = "createCourse.jsp"
                                                break;

                                            default:
                                                window.location = "adminHome.jsp";

                                        }
                                    });
                        } else {
                            swal("Course already exists", "Try again.", "error");
                        }


                    },
                    error: function (jqXHR, textStatus, errorThrown) {

                        $("#create-btn").show();
                        $("#create-loader").hide();
                        swal("Something went wrong", "Try again.", "error");


                    },
                    processData: false,
                    contentType: false
                });
            });


        </script>

    </body>
</html>
