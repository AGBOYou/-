package com.qdu.pojo;

import java.io.Serializable;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
import org.hibernate.annotations.GenericGenerator;


@Entity
@Table(name="User_Table")
public class User implements Serializable{
    
    @Id
    @GeneratedValue(generator = "pkAssigned")
    @GenericGenerator(name = "pkAssigned",strategy = "assigned")
    private String   users_ID; 
    private String users_Name ;
    private String users_pwd ;
    private String users_phoneNum; 
    private String e_mail ;

    public User() {
    }
    
    public User(String users_ID, String users_Name, String users_pwd, String users_phoneNum, String e_mail) {
        this.users_ID = users_ID;
        this.users_Name = users_Name;
        this.users_pwd = users_pwd;
        this.users_phoneNum = users_phoneNum;
        this.e_mail = e_mail;
    }

    public String getUsers_ID() {
        return users_ID;
    }

    public void setUsers_ID(String users_ID) {
        this.users_ID = users_ID;
    }

    public String getUsers_Name() {
        return users_Name;
    }

    public void setUsers_Name(String users_Name) {
        this.users_Name = users_Name;
    }

    public String getUsers_pwd() {
        return users_pwd;
    }

    public void setUsers_pwd(String users_pwd) {
        this.users_pwd = users_pwd;
    }

    public String getUsers_phoneNum() {
        return users_phoneNum;
    }

    public void setUsers_phoneNum(String users_phoneNum) {
        this.users_phoneNum = users_phoneNum;
    }

    public String getE_mail() {
        return e_mail;
    }

    public void setE_mail(String e_mail) {
        this.e_mail = e_mail;
    }
    
    


}

