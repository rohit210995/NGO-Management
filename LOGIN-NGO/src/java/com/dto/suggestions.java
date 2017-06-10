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
public class suggestions {
    
    private int S_Id;
    private String Input;
    private int E_Id;
    private int User_Id;

    public int getS_Id() {
        return S_Id;
    }

    public void setS_Id(int S_Id) {
        this.S_Id = S_Id;
    }

    public String getInput() {
        return Input;
    }

    public void setInput(String Input) {
        this.Input = Input;
    }

    public int getE_Id() {
        return E_Id;
    }

    public void setE_Id(int E_Id) {
        this.E_Id = E_Id;
    }

    public int getUser_Id() {
        return User_Id;
    }

    public void setUser_Id(int User_Id) {
        this.User_Id = User_Id;
    }
    
    public static suggestions populateData(HttpServletRequest request, HttpServletResponse response){
     suggestions s = new suggestions();
     //s.setS_Id(Integer.parseInt(request.getParameter("sid")));
     s.setInput(request.getParameter("ip"));
     s.setE_Id(Integer.parseInt(request.getParameter("eid")));
     s.setUser_Id(Integer.parseInt(request.getParameter("uid")));
     return s;
 }
}
