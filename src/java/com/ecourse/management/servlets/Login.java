/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.ecourse.management.servlets;

import com.ecourse.management.dao.UserDao;
import com.ecourse.management.entities.Message;
import com.ecourse.management.entities.User;
import com.ecourse.management.helper.ConnectionProvider;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author ishra
 */
public class Login extends HttpServlet {

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
           
            
            
            
            // fetching username and password from request
            
            String username = request.getParameter("username");
            String password = request.getParameter("password");
            String user_role = request.getParameter("role");
            
            
            // authenticating from UserDao
            
            UserDao dao = new UserDao(ConnectionProvider.getConnection());
            User user = dao.getUserByUsernameAndPassword(username, password, user_role);
            
            
           if(user==null){
               // login error 
               
               Message msg = new Message("Invalid credentials. Try again.","error","alert-danger");
               response.sendRedirect("login.jsp");
               
               HttpSession session = request.getSession();
               session.setAttribute("msg", msg);
               
           } else {
               // login successfull
               HttpSession session = request.getSession();
               session.setAttribute("currentUser", user);
               
               // redirecting users to different pages based on their roles
               
               if(user.getUser_role().equals("admin")) {
                   response.sendRedirect("adminHome.jsp"); 
               } else if(user.getUser_role().equals("teacher")) {
                   response.sendRedirect("teacherHome.jsp"); 
               } else {
                   response.sendRedirect("studentHome.jsp"); 
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
