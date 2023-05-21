/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.ecourse.management.servlets;

import com.ecourse.management.dao.EnrolledCoursesDao;
import com.ecourse.management.entities.EnrolledCourses;
import com.ecourse.management.entities.User;
import com.ecourse.management.helper.ConnectionProvider;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
/**
 * Servlet implementation class CourseRegistration
 * 
 * This servlet handles the registration of a course for a student.
 */
/**
/**
 *
 * @author ishrar
 */
@MultipartConfig
public class CourseRegistration extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            
            // fetch all form data
            String courseCode = request.getParameter("courseCode");
            String courseTitle = request.getParameter("courseTitle");

            HttpSession session = request.getSession();
            User user = (User) session.getAttribute("currentUser");

            String username = user.getUsername();

            if (username == null) {
                out.println("notloggedin");
            } else {
                
                // crate enrolledCourses object
                
                EnrolledCourses enrolledCourses = new EnrolledCourses(courseCode, courseTitle, username);
                

                // create enrolledCoursesDao object
                
                EnrolledCoursesDao dao = new EnrolledCoursesDao(ConnectionProvider.getConnection());
                
                // save
                
                if(dao.saveEnrolledCourses(enrolledCourses).equals("Registration successful")) {
                
                    out.println("done");
                } else if(dao.saveEnrolledCourses(enrolledCourses).equals("Course title doesn't match the one in the course table for course code")){
                
                    out.println("nomatch");
                }
                else {
                
                    out.println("error"); // you have already registered for this course
                }
            }

            
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
