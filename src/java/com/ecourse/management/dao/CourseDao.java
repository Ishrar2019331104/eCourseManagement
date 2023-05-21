/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.ecourse.management.dao;
import com.ecourse.management.entities.Course;
import java.sql.*;
/*
CourseDao provides methods for adding courses to the database.
*/
/**
 *
 * @author ishrar
 */
public class CourseDao {
    
    private Connection con;

    public CourseDao(Connection con) {
        this.con = con;
    }
    
    // method to insert course to database
    
    public boolean saveCourse(Course course){
        
        boolean f = false;
        try {
            
            // course -> database
            
            String query = "insert into course(courseCode, courseTitle, credit, year, semester) values(?,?,?,?,?)";
            
            
            PreparedStatement pstmt = this.con.prepareStatement(query);
            
            pstmt.setString(1, course.getCourseCode());
            pstmt.setString(2, course.getCourseTitle());
            pstmt.setDouble(3, course.getCredit());
            pstmt.setInt(4, course.getYear());
            pstmt.setInt(5, course.getSemester());
            
            
            pstmt.executeUpdate();
            
            f = true;
            
            
        } catch(Exception e) {
            e.printStackTrace();
        }
        return f;
    }
    
    
    
    
}
