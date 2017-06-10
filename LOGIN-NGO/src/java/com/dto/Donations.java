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
public class Donations {
    private int D_Id;
    private int amount;
    private int User_Id;

    public int getD_Id() {
        return D_Id;
    }

    public void setD_Id(int D_Id) {
        this.D_Id = D_Id;
    }

    public int getAmount() {
        return amount;
    }

    public void setAmount(int amount) {
        this.amount = amount;
    }

    public int getUser_Id() {
        return User_Id;
    }

    public void setUser_Id(int User_Id) {
        this.User_Id = User_Id;
    }
    
    public static Donations populateData(HttpServletRequest request, HttpServletResponse response){
     Donations d = new Donations();
     //d.setD_Id(Integer.parseInt(request.getParameter("did")));
     d.setAmount(Integer.parseInt(request.getParameter("amt")));
     d.setUser_Id(Integer.parseInt(request.getParameter("uid")));
     return d;
    }
}    
