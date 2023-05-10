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
public class User {
    private int user_id;
    private String username;
    private String password;
    private String user_role;
    private String first_name;
    private String last_name;
    private String email;
    private String phone_number;
    private String address;

    public User(int user_id, String username, String password, String user_role, String first_name, String last_name, String email, String phone_number, String address) {
        this.user_id = user_id;
        this.username = username;
        this.password = password;
        this.user_role = user_role;
        this.first_name = first_name;
        this.last_name = last_name;
        this.email = email;
        this.phone_number = phone_number;
        this.address = address;
    }

    public User() {
    }

    public User(String username, String password, String user_role, String first_name, String last_name, String email, String phone_number, String address) {
        this.username = username;
        this.password = password;
        this.user_role = user_role;
        this.first_name = first_name;
        this.last_name = last_name;
        this.email = email;
        this.phone_number = phone_number;
        this.address = address;
    }

    public int getUser_id() {
        return user_id;
    }

    public void setUser_id(int user_id) {
        this.user_id = user_id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getUser_role() {
        return user_role;
    }

    public void setUser_role(String user_role) {
        this.user_role = user_role;
    }

    public String getFirst_name() {
        return first_name;
    }

    public void setFirst_name(String first_name) {
        this.first_name = first_name;
    }

    public String getLast_name() {
        return last_name;
    }

    public void setLast_name(String last_name) {
        this.last_name = last_name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPhone_number() {
        return phone_number;
    }

    public void setPhone_number(String phone_number) {
        this.phone_number = phone_number;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }
    
    
    
    
    
    
}
