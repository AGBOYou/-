package com.qdu.pojo;

import java.io.Serializable;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
import org.hibernate.annotations.GenericGenerator;


@Entity
@Table(name="Admin_Table")

public class Admin implements Serializable{
    
    @Id
    @GeneratedValue(generator = "pkAssigned")
    @GenericGenerator(name = "pkAssigned",strategy = "assigned")
    private String Admin_ID;
    private String Admin_pwd;

    public Admin() {
    }

    public Admin(String Admin_ID, String Admin_pwd) {
        this.Admin_ID = Admin_ID;
        this.Admin_pwd = Admin_pwd;
    }

    public String getAdmin_ID() {
        return Admin_ID;
    }

    public void setAdmin_ID(String Admin_ID) {
        this.Admin_ID = Admin_ID;
    }

    public String getAdmin_pwd() {
        return Admin_pwd;
    }

    public void setAdmin_pwd(String Admin_pwd) {
        this.Admin_pwd = Admin_pwd;
    }

   
    
    
    
}
