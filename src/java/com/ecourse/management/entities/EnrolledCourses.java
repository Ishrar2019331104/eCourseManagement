/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.ecourse.management.entities;
import java.sql.*;
/**
 *
 * @author ishra
 */

public class EnrolledCourses {
    
    private String courseCode;
    private String courseTitle;
    private String username;

    public EnrolledCourses(String courseCode, String courseTitle, String username) {
        this.courseCode = courseCode;
        this.courseTitle = courseTitle;
        this.username = username;
    }

    public EnrolledCourses() {
    }
    
    // getters and setters

    public String getCourseCode() {
        return courseCode;
    }

    public void setCourseCode(String courseCode) {
        this.courseCode = courseCode;
    }

    public String getCourseTitle() {
        return courseTitle;
    }

    public void setCourseTitle(String courseTitle) {
        this.courseTitle = courseTitle;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }
    
    
    
    
}
