package com.qdu.pojo; 

import java.io.Serializable;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
import org.hibernate.annotations.GenericGenerator;


@Entity
@Table(name="Comment_Table")
public class Comment implements Serializable{
    
    @Id
    @GeneratedValue(generator = "pkAssigned")
    @GenericGenerator(name = "pkAssigned",strategy = "assigned")
    private String Comment_ID;
    private String Users_ID;
    private String Users_Name;
    private String Comment_Text;
    private String Comment_Time;
    private String Module_ID;

    public Comment() {
    }
    
    public Comment(String Comment_ID, String Users_ID, String Users_Name, String Comment_Text,
    String Comment_Time, String Module_ID) {
        this.Comment_ID = Comment_ID;
        this.Users_ID = Users_ID;
        this.Users_Name = Users_Name;
        this.Comment_Text = Comment_Text;
        this.Comment_Time = Comment_Time;
        this.Module_ID = Module_ID;
    }

    public String getComment_ID() {
        return Comment_ID;
    }

    public void setComment_ID(String Comment_ID) {
        this.Comment_ID = Comment_ID;
    }

    public String getUsers_ID() {
        return Users_ID;
    }

    public void setUsers_ID(String Users_ID) {
        this.Users_ID = Users_ID;
    }

    public String getUsers_Name() {
        return Users_Name;
    }

    public void setUsers_Name(String Users_Name) {
        this.Users_Name = Users_Name;
    }

    public String getComment_Text() {
        return Comment_Text;
    }

    public void setComment_Text(String Comment_Text) {
        this.Comment_Text = Comment_Text;
    }

    public String getComment_Time() {
        return Comment_Time;
    }

    public void setComment_Time(String Comment_Time) {
        this.Comment_Time = Comment_Time;
    }

    public String getModule_ID() {
        return Module_ID;
    }

    public void setModule_ID(String Module_ID) {
        this.Module_ID = Module_ID;
    }
    
    
    

       
}
