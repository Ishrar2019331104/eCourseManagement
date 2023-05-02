/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.ecourse.management.helper;

import java.sql.*;

/**
 *
 * @author ishra
 */
public class ConnectionProvider {

    private static Connection con;

    public static Connection getConnection() {

        try {
            if (con == null) {
                // loading driver class

                Class.forName("com.mysql.jdbc.Driver");

                // establishing connection
                con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ecoursemanagement", "root", "ish19rar");
                System.out.println(con);

            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return con;
    }

}
