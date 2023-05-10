<%-- 
    Document   : index
    Created on : Apr 28, 2023, 12:59:19 PM
    Author     : ishrar
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
            #particles-js {
                position: fixed;
                width: 100%;
                height: 100%;
                background-color: black;
                background-image: linear-gradient(rgba(0,0,0,0.6), rgba(0,0,0,0.7)), url('img/background_image.jpg');
                background-size: cover;
                background-repeat: no-repeat;
                background-position: 50% 50%;
                z-index: -1;
            }

            canvas.particles-js-canvas-el {
                width: 100% !important;
                height: 100% !important;
            }
            *{
                margin: 0;
                padding: 0;
            }
            .navbar {
                background-color: transparent!important;
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
        <div id="particles-js"></div>
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
        <script src="https://cdn.jsdelivr.net/particles.js/2.0.0/particles.min.js"></script>

        <!-- Add the Particle.js configuration -->
        <script>
            particlesJS("particles-js", {
                particles: {
                    // Particle configuration options
                    "number": {
                        "value": 500,
                        "density": {
                            "enable": true,
                            "value_area": 800
                        }
                    },
                    "shape": {
                        "type": "circle",
                        "stroke": {
                            "width": 0,
                            "color": "#ffffff"
                        },
                        "polygon": {
                            "nb_sides": 5
                        },
                        "image": {
                            "src": "images/star.png",
                            "width": 100,
                            "height": 100
                        }
                    },
                    "opacity": {
                        "value": 0.5,
                        "random": true,
                        "anim": {
                            "enable": true,
                            "speed": 1,
                            "opacity_min": 0.1,
                            "sync": false
                        }
                    },
                    "size": {
                        "value": 3,
                        "random": true,
                        "anim": {
                            "enable": false,
                            "speed": 4,
                            "size_min": 0.3,
                            "sync": false
                        }
                    },
                    "line_linked": {
                        "enable": false,
                        "distance": 150,
                        "color": "#ffffff",
                        "opacity": 0.4,
                        "width": 1
                    },
                    "move": {
                        "enable": true,
                        "speed": 1,
                        "direction": "none",
                        "random": true,
                        "straight": false,
                        "out_mode": "out",
                        "bounce": false,
                        "attract": {
                            "enable": false,
                            "rotateX": 600,
                            "rotateY": 1200
                        }
                    }
                },
                interactivity: {
                    // Interactivity configuration options
                    "detect_on": "canvas",
                    "events": {
                        "onhover": {
                            "enable": false,
                            "mode": "repulse"
                        },
                        "onclick": {
                            "enable": false,
                            "mode": "push"
                        },
                        "resize": true
                    },
                    "modes": {
                        "grab": {
                            "distance": 400,
                            "line_linked": {
                                "opacity": 1
                            }
                        },
                        "bubble": {
                            "distance": 400,
                            "size": 40,
                            "duration": 2,
                            "opacity": 8,
                            "speed": 3
                        },
                        "repulse": {
                            "distance": 200,
                            "duration": 0.4
                        },
                        "push": {
                            "particles_nb": 4
                        },
                        "remove": {
                            "particles_nb": 2
                        }
                    }

                },
                retina_detect: true
            });
        </script>
    </body>
</html>