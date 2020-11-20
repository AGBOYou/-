/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.qdu.pojo;

import java.io.IOException;
import java.io.PrintWriter;
import java.io.Serializable;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.hibernate.annotations.GenericGenerator;


@Entity
@Table(name="Products")
public class Products implements Serializable{
    
    @Id
    private String users_ID; 
    @Id
    private String zhonglei;
    @Id
    private String Want_Brand;
    @Id
    private String Want_Model; 
    @Id
    private String Want_Specify;
    @Id
    private String Want_Price;
    private String storepath;
    


    
    
    public Products() {
    }

    public Products(String users_ID, String zhonglei, String Want_Brand, String Want_Model, String Want_Specify, String Want_Price, String storepath) {
        this.users_ID = users_ID;
        this.zhonglei = zhonglei;
        this.Want_Brand = Want_Brand;
        this.Want_Model = Want_Model;
        this.Want_Specify = Want_Specify;
        this.Want_Price = Want_Price;
        this.storepath = storepath;
    }


    public String getZhonglei() {
        return zhonglei;
    }

    public void setZhonglei(String zhonglei) {
        this.zhonglei = zhonglei;
    }

    public String getWant_Brand() {
        return Want_Brand;
    }

    public void setWant_Brand(String Want_Brand) {
        this.Want_Brand = Want_Brand;
    }

    public String getWant_Model() {
        return Want_Model;
    }

    public void setWant_Model(String Want_Model) {
        this.Want_Model = Want_Model;
    }

    public String getWant_Specify() {
        return Want_Specify;
    }

    public void setWant_Specify(String Want_Specify) {
        this.Want_Specify = Want_Specify;
    }

    public String getWant_Price() {
        return Want_Price;
    }

    public void setWant_Price(String Want_Price) {
        this.Want_Price = Want_Price;
    }
    
    
    public String getUsers_ID() {
        return users_ID;
    }

    public void setUsers_ID(String users_ID) {
        this.users_ID = users_ID;
    }

    public String getStorepath() {
        return storepath;
    }

    public void setStorepath(String storepath) {
        this.storepath = storepath;
    }
    


}
