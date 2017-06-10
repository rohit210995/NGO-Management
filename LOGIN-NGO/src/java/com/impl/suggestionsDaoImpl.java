/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.impl;

import com.dao.suggestionsDao;
import com.dto.suggestions;
import com.utils.DataSource;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Random;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Rohit
 */
public class suggestionsDaoImpl implements suggestionsDao {

    Connection connection;
    PreparedStatement preparedStatement;
    Statement statement;
    ResultSet rs;
        
    
    
    @Override
    public int enterSuggestion(suggestions s) {
        int count=0;
        int sId =0;
        Random ran = new Random();
        sId = 1 + ran.nextInt(998);
        try {
            connection = DataSource.getConnection();
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(suggestionsDaoImpl.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(suggestionsDaoImpl.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        String sql = "INSERT INTO suggestions values(?,?,?,?)" ;
        try {
            preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setInt(1,sId);
            preparedStatement.setString(2,s.getInput());
            preparedStatement.setInt(3,s.getE_Id());
            preparedStatement.setInt(4,s.getUser_Id());
            
            count = preparedStatement.executeUpdate();
            
             if(count > 0){
                System.out.println("Successfully Inserted");
            }
            else{
                System.out.println("Insertion Failed");
            }
            
        } catch (SQLException ex) {
            Logger.getLogger(suggestionsDaoImpl.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        
        return count;
    }
    
    
}
