/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */

package com.ecourse.management.helper;

import java.sql.*;
/*
Class to establish connection with jdbc
*/
/**
 *
 * @author ishrar
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

            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return con;
    }

}
