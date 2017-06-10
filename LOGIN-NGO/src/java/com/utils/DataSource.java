/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.utils;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
/**
 *
 * @author Rohit
 */
public class DataSource {
    
    private static Connection con;
    public static Connection getConnection() throws ClassNotFoundException, SQLException 
    {
        Class.forName("com.mysql.jdbc.Driver");    //STEP 1 : Loading the Drivers 
        con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ngo","root","rohit");   //Getting Connection to the DB
        return con;
    }
    
}
