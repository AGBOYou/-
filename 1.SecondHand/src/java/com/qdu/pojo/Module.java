package com.qdu.pojo;

import java.io.Serializable;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
import org.hibernate.annotations.GenericGenerator;



@Entity
@Table(name="Module")

public class Module implements Serializable{
    
    @Id
  
    private String Module_ID;
    private String zhonglei;
    private String Module_Brand;
    private String Module_Model;
    private String Module_Specify;
    private String Module_Price;

    public Module() {
    }

    public Module(String Module_ID, String zhonglei, String Module_Brand, String Module_Model, String Module_Specify, String Module_Price) {
        this.Module_ID = Module_ID;
        this.zhonglei = zhonglei;
        this.Module_Brand = Module_Brand;
        this.Module_Model = Module_Model;
        this.Module_Specify = Module_Specify;
        this.Module_Price = Module_Price;
    }

    
    
    
    public String getModule_ID() {
        return Module_ID;
    }

    public void setModule_ID(String Module_ID) {
        this.Module_ID = Module_ID;
    }

    public String getZhonglei() {
        return zhonglei;
    }

    public void setZhonglei(String zhonglei) {
        this.zhonglei = zhonglei;
    }

    public String getModule_Brand() {
        return Module_Brand;
    }

    public void setModule_Brand(String Module_Brand) {
        this.Module_Brand = Module_Brand;
    }

    public String getModule_Model() {
        return Module_Model;
    }

    public void setModule_Model(String Module_Model) {
        this.Module_Model = Module_Model;
    }

    public String getModule_Specify() {
        return Module_Specify;
    }

    public void setModule_Specify(String Module_Specify) {
        this.Module_Specify = Module_Specify;
    }

    public String getModule_Price() {
        return Module_Price;
    }

    public void setModule_Price(String Module_Price) {
        this.Module_Price = Module_Price;
    }
    
   
    
   
    
}
