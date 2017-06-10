/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.dao;

import com.dto.User;

/**
 *
 * @author Rohit
 */
public interface UserDao {
    
    public int createAccount(User U);
    public User getUser(User U);
    public boolean checkLogin(User U);
    public boolean verifyOtp(User U, int otp);
    public boolean uidAvailable(User U);
    public int changePassword(User U, String newpass);
}
