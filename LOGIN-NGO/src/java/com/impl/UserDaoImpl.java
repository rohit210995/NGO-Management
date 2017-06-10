/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.impl;
import java.sql.Connection;
import com.dao.UserDao;
import com.dto.User;
import com.utils.DataSource;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Random;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.mail.MessagingException;
import model.EmailSending;

/**
 *
 * @author Rohit
 */
public class UserDaoImpl implements UserDao{

    Connection connection;
    PreparedStatement preparedStatement;
    Statement statement;
    ResultSet rs;
    
    @Override
    public int createAccount(User U) {
        int count=0;      
        try {
            connection = DataSource.getConnection();
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(UserDaoImpl.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(UserDaoImpl.class.getName()).log(Level.SEVERE, null, ex);
        }
        int otp=0;
        Random ran = new Random();
        otp = 101 + ran.nextInt(898);
        String valid = "false";
        String sql = "INSERT INTO user values(?,?,?,?,?,?,?,?)" ;
        
        try {
            preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setInt(1,U.getUser_Id());
            preparedStatement.setString(2,U.getUsername());
            preparedStatement.setString(3,U.getPassword());
            preparedStatement.setString(4,U.getFirstName());
            preparedStatement.setString(5,U.getLastName());
            preparedStatement.setString(6,U.getEmail());
            preparedStatement.setInt(7,otp);
            preparedStatement.setString(8,valid);
            
            count = preparedStatement.executeUpdate();
            
            if(count > 0){
                System.out.println("Successfully Inserted");
            }
            else{
                System.out.println("Insertion Failed");
            }
        } catch (SQLException ex) {
            Logger.getLogger(UserDaoImpl.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        /* Sending Email to the user with OTP in it */
        String host = "smtp.gmail.com";
        String port = "587";
        String user = "210995rohit@gmail.com";
        String pass = "guitarist";
        String recipient = U.getEmail();
        String subject = "OTP For Your Account "+U.getUsername();
        String content = "Your OTP is "+otp;
        
        try {
            EmailSending.sendEmail(host, port, user, pass, recipient, subject,
                    content);
        } catch (MessagingException ex) {
            Logger.getLogger(UserDaoImpl.class.getName()).log(Level.SEVERE, null, ex);
        }
        
       return count; 
    }

    @Override
    public User getUser(User U) {
        try {
            connection = DataSource.getConnection();
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(UserDaoImpl.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(UserDaoImpl.class.getName()).log(Level.SEVERE, null, ex);
        }
        
          String sql = "select * from user where Username=?";
          User usr = new User();
          
        try {
            preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1,U.getUsername());
            rs = preparedStatement.executeQuery();
            rs.next();
            
            usr.setUser_Id(rs.getInt(1));
            usr.setUsername(rs.getString(2));
            usr.setPassword(rs.getString(3));
            usr.setFirstName(rs.getString(4));
            usr.setLastName(rs.getString(5));
            usr.setEmail(rs.getString(6));
            
        } catch (SQLException ex) {
            Logger.getLogger(UserDaoImpl.class.getName()).log(Level.SEVERE, null, ex);
        }
        
     return usr;   
        
    }   

    @Override
    public boolean checkLogin(User U) {
        
        try {
            connection = DataSource.getConnection();
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(UserDaoImpl.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(UserDaoImpl.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        //String sql = "select * from user where Username=? AND Password=?";
        String sql = "select * from user where Username=?";
        try {
            preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1,U.getUsername());
//            preparedStatement.setString(2,U.getPassword());
            rs = preparedStatement.executeQuery();
        //while(rs.next()){
            rs.next();
            String p = rs.getString(3);
            String q = "true";
            if( (p.equals(U.getPassword())) && q.equals(rs.getString(8)))
            {
                return true;
            }
        //}
        } catch (SQLException ex) {
            Logger.getLogger(UserDaoImpl.class.getName()).log(Level.SEVERE, null, ex);
        }
        
       return false;
    }

    @Override
    public boolean verifyOtp(User U, int otp) {
        
        
        try {
            connection = DataSource.getConnection();
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(UserDaoImpl.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(UserDaoImpl.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        //String sql = "select * from user where Username=? AND Password=?";
        String sql = "select * from user where Username=?";
        try {
            preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1,U.getUsername());
//            preparedStatement.setString(2,U.getPassword());
            rs = preparedStatement.executeQuery();
        //while(rs.next()){
            rs.next();
            String p = rs.getString(3);
            int otpconf = rs.getInt(7);
            if( p.equals(U.getPassword()) )
            {
                /*Now check if the OTP is correct or not. If yes then update the database*/
                if(otpconf == otp)
                {
                  String s = "UPDATE user SET Valid = 'true' WHERE Username = '"+U.getUsername()+"'";  
                  //preparedStatement.setString(1,U.getUsername());
                  preparedStatement = connection.prepareStatement(s);
                  int c = preparedStatement.executeUpdate();
                  return true;
                }
            }
        //}
        } catch (SQLException ex) {
            Logger.getLogger(UserDaoImpl.class.getName()).log(Level.SEVERE, null, ex);
        }
        
       return false;
       
    }

    @Override
    public boolean uidAvailable(User U) {
        try {
            connection = DataSource.getConnection();
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(UserDaoImpl.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(UserDaoImpl.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        //String sql = "select * from user where Username=? AND Password=?";
        String sql = "select User_Id from user ";
        try {
             preparedStatement = connection.prepareStatement(sql);
             rs = preparedStatement.executeQuery();
            int uid;
            while(rs.next()){
            rs.next();
            uid = rs.getInt(1);
            String a = Integer.toString(uid);
            String b = Integer.toString(U.getUser_Id());
            if( a.equals(b) )
            {
                return false;
            }
        }
        } catch (SQLException ex) {
            Logger.getLogger(UserDaoImpl.class.getName()).log(Level.SEVERE, null, ex);
        }
        
       return true;
    }

    @Override
    public int changePassword(User U, String newpass) {
        int count=0;
        try {
            connection = DataSource.getConnection();
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(UserDaoImpl.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(UserDaoImpl.class.getName()).log(Level.SEVERE, null, ex);
        }
        String sql = "select * from user where Username=? AND Password=?";
        try {
            preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1,U.getUsername());
            preparedStatement.setString(2,U.getPassword());
            rs = preparedStatement.executeQuery();
            while(rs.next()){
                String c = "UPDATE user SET Password = '"+newpass+"'WHERE Username = '"+U.getUsername()+"'";
                preparedStatement = connection.prepareStatement(c);
                count = preparedStatement.executeUpdate();
            }
        } catch (SQLException ex) {
            Logger.getLogger(UserDaoImpl.class.getName()).log(Level.SEVERE, null, ex);
        }
        
       
    return count;
    }
}
