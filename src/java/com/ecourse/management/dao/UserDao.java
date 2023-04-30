/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.ecourse.management.dao;

import com.ecourse.management.entities.User;
import java.sql.*;

/**
 *
 * @author ishra
 */
public class UserDao {

    private Connection con;

    public UserDao(Connection con) {
        this.con = con;
    }

    // method to insert user to database
    public boolean saveUser(User user) {

        boolean f = false;

        try {

            // user -> database
            // query
            String query = "insert into user(username, password, user_role, first_name, last_name, email, phone_number, address) values (?,?,?,?,?,?,?,?)";

            PreparedStatement pstmt = this.con.prepareStatement(query);

            pstmt.setString(1, user.getUsername());
            pstmt.setString(2, user.getPassword());
            pstmt.setString(3, user.getUser_role());
            pstmt.setString(4, user.getFirst_name());
            pstmt.setString(5, user.getLast_name());
            pstmt.setString(6, user.getEmail());
            pstmt.setString(7, user.getPhone_number());
            pstmt.setString(8, user.getAddress());

            // executing query
            pstmt.executeUpdate();
            f = true;

        } catch (Exception e) {
            e.printStackTrace();
        }
        return f;
    }

    // method to get user by username and password
    public User getUserByUsernameAndPassword(String username, String password) {
        User user = null;

        try {

            String query = "select * from user where username =? and password =?";

            PreparedStatement pstmt = con.prepareStatement(query);
            pstmt.setString(1, username);
            pstmt.setString(2, password);

            // firing the query
            ResultSet set = pstmt.executeQuery();

            if (set.next()) {

                user = new User();
                user.setUser_id(set.getInt("user_id"));
                user.setUsername(set.getString("username"));
                user.setPassword(set.getString("password"));
                user.setUser_role(set.getString("user_role"));
                user.setFirst_name(set.getString("first_name"));
                user.setLast_name(set.getString("last_name"));
                user.setEmail(set.getString("email"));
                user.setPhone_number(set.getString("phone_number"));
                user.setAddress(set.getString("address"));

            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return user;
    }

}
