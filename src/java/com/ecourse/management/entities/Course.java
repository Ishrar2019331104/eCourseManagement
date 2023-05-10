/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.ecourse.management.entities;
import java.sql.*;
/**
 *
 * @author ishrar
 */
public class Course {
    private String courseCode;
    private String courseTitle;
    private double credit;
    private int year;
    private int semester;

    public Course(String courseCode, String courseTitle, double credit, int year, int semester) {
        this.courseCode = courseCode;
        this.courseTitle = courseTitle;
        this.credit = credit;
        this.year = year;
        this.semester = semester;
    }

    public Course() {
    }

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

    public double getCredit() {
        return credit;
    }

    public void setCredit(double credit) {
        this.credit = credit;
    }

    public int getYear() {
        return year;
    }

    public void setYear(int year) {
        this.year = year;
    }

    public int getSemester() {
        return semester;
    }

    public void setSemester(int semester) {
        this.semester = semester;
    }

    
    

   
    
    
    
    
    
}
