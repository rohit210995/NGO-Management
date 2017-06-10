/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.dto;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Rohit
 */
public class User {
    
    private int User_Id;
    private String Username;
    private String Password;
    private String FirstName;
    private String LastName;
    private String Email;

    public int getUser_Id() {
        return User_Id;
    }

    public void setUser_Id(int User_Id) {
        this.User_Id = User_Id;
    }

    public String getUsername() {
        return Username;
    }

    public void setUsername(String Username) {
        this.Username = Username;
    }

    public String getPassword() {
        return Password;
    }

    public void setPassword(String Password) {
        this.Password = Password;
    }

    public String getFirstName() {
        return FirstName;
    }

    public void setFirstName(String FirstName) {
        this.FirstName = FirstName;
    }

    public String getLastName() {
        return LastName;
    }

    public void setLastName(String LastName) {
        this.LastName = LastName;
    }

    public String getEmail() {
        return Email;
    }

    public void setEmail(String Email) {
        this.Email = Email;
    }
    
 public static User populateData(HttpServletRequest request, HttpServletResponse response){
     User u = new User();
     u.setUser_Id(Integer.parseInt(request.getParameter("uid")));
     u.setUsername(request.getParameter("usrname"));
     u.setPassword(request.getParameter("passwd"));
     u.setFirstName(request.getParameter("fname"));
     u.setLastName(request.getParameter("lname"));
     u.setEmail(request.getParameter("email"));
     return u;
 }
}
