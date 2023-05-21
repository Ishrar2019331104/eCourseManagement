/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.ecourse.management.dao;

import com.ecourse.management.entities.Assign;
import java.sql.*;
/*
AssignDao provides methods for assigning courses to the database.
*/
/**
 *
 * @author ishrar
 */
public class AssignDao {

    private Connection con;

    public AssignDao(Connection con) {
        this.con = con;
    }

    // method to assign course to database
    
    public String saveAssign(Assign assign) {
        
        String f = "Course is already assigned";
        
        try {
            
            
            // check is courseCode corresponds to course table's courseCode
            
            
            String checkCourseQuery = "SELECT COUNT(*) FROM course where courseCode = ? AND courseTitle = ?";
            PreparedStatement checkCourseStmt = this.con.prepareStatement(checkCourseQuery);
            checkCourseStmt.setString(1, assign.getCourseCode());
            checkCourseStmt.setString(2, assign.getCourseTitle());
            ResultSet checkCourseResult = checkCourseStmt.executeQuery();
            checkCourseResult.next();
            
            int courseCount = checkCourseResult.getInt(1);
            
            if(courseCount==0) {
                return "Course title doesn't match the one in the course table for course code";
            }
            
            
            // else correct combination. 
            
            
            
            // assigncourse -> database
            String query = "insert into assign(courseCode, courseTitle, teacherName, teacherEmail) values (?,?,?,?)";
            PreparedStatement pstmt = this.con.prepareStatement(query);
            
            pstmt.setString(1, assign.getCourseCode());
            pstmt.setString(2, assign.getCourseTitle());
            pstmt.setString(3, assign.getTeacherName());
            pstmt.setString(4, assign.getTeacherEmail());
            
            // executing the query
            
            
            pstmt.executeUpdate();
            f = "Course assigned successfully";
            
            
            
            
        } catch(Exception e) {
        
            e.printStackTrace();
        }
        return f;
    }
    


    
}
