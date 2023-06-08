# eCourseManagement

A Servlet and JSP based Online Course Management Application.

## Overview

This is an online course management website using Servlet and JSP. It handles 3 types of users
: a student, a teacher, and an admin.
Each user is authenticated using username and password.
An admin user is able to add new courses in the system
and assign a particular teacher to a corresponding course.
A student user is able to register for a new course
and view all his/her registered courses.
A teacher user is able to view his/her corresponding assigned course(s)
and select a particular course, from these courses, to view the list of the
registered students for that particular course.

The website uses `Bootstap CSS` within the JSP page and MySQL as database.

## How to run

To be able to run eCourseManagement on your machine, make sure you have the following softwares installed
 - Java Development Kit (JDK)
- Apache Tomcat Server 9.0
- MySQL Database Server
- Apache Netbeans IDE

Follow the following steps to set up and run eCourseManagement:

1. Clone the repository:

    ```
    git clone https://github.com/Ishrar2019331104/eCourseManagement.git
    ```

2. Set up the database using `MySQL Workbench`

3. Run on `Apache NetBeans IDE` 