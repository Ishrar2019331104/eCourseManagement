/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.ecourse.management.dao;

import com.ecourse.management.entities.EnrolledCourses;
import java.sql.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
/*
EnrolledCourses provides methods for enrollment of courses to the database.
*/
/**
 *
 * @author ishrar
 */
public class EnrolledCoursesDao {

    private Connection con;

    public EnrolledCoursesDao(Connection con) {
        this.con = con;
    }

    // method to insert user to database
    public String saveEnrolledCourses(EnrolledCourses enrolledCourses) {

        // enrolled courses -> database
        String f = "You have already registered";
        try {

            // check is courseCode corresponds to course table's courseCode
            String checkCourseQuery = "SELECT COUNT(*) FROM course where courseCode = ? AND courseTitle = ?";
            PreparedStatement checkCourseStmt = this.con.prepareStatement(checkCourseQuery);
            checkCourseStmt.setString(1, enrolledCourses.getCourseCode());
            checkCourseStmt.setString(2, enrolledCourses.getCourseTitle());
            ResultSet checkCourseResult = checkCourseStmt.executeQuery();
            checkCourseResult.next();

            int courseCount = checkCourseResult.getInt(1);

            if (courseCount == 0) {
                return "Course title doesn't match the one in the course table for course code";
            }

            String query = "insert into enrolledcourses(courseCode, courseTitle, username) values (?,?,?)";

            PreparedStatement pstmt = this.con.prepareStatement(query);

            pstmt.setString(1, enrolledCourses.getCourseCode());
            pstmt.setString(2, enrolledCourses.getCourseTitle());
            pstmt.setString(3, enrolledCourses.getUsername());

            // firing to database
            pstmt.executeUpdate();
            f = "Registration successful";

        } catch (Exception e) {
            e.printStackTrace();
        }
        return f;
    }

}
