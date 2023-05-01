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
public class Assign {
    
    private String courseCode;
    private String courseTitle;
    private String teacherName;
    private String teacherEmail;

    public Assign(String courseCode, String courseTitle, String teacherName, String teacherEmail) {
        this.courseCode = courseCode;
        this.courseTitle = courseTitle;
        this.teacherName = teacherName;
        this.teacherEmail = teacherEmail;
    }

    public Assign() {
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

    public String getTeacherName() {
        return teacherName;
    }

    public void setTeacherName(String teacherName) {
        this.teacherName = teacherName;
    }

    public String getTeacherEmail() {
        return teacherEmail;
    }

    public void setTeacherEmail(String teacherEmail) {
        this.teacherEmail = teacherEmail;
    }
    
    
    
}
