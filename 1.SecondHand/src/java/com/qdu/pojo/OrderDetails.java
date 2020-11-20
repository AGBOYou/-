package com.qdu.pojo;

import java.io.Serializable;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
import org.hibernate.annotations.GenericGenerator;


@Entity
@Table(name="Order_Details")
public class OrderDetails implements Serializable{
    
    @Id
    @GeneratedValue(generator = "pkAssigned")
    @GenericGenerator(name = "pkAssigned",strategy = "assigned")
    private String Order_ID;
    private String Module_ID;
    private String Users_ID;

    public OrderDetails() {
    }

    public OrderDetails(String Order_ID, String Module_ID, String Users_ID) {
        this.Order_ID = Order_ID;
        this.Module_ID = Module_ID;
        this.Users_ID = Users_ID;
    }

    

    
    
    public String getOrder_ID() {
        return Order_ID;
    }

    public void setOrder_ID(String Order_ID) {
        this.Order_ID = Order_ID;
    }

    public String getModule_ID() {
        return Module_ID;
    }

    public void setModule_ID(String Module_ID) {
        this.Module_ID = Module_ID;
    }

    public String getUsers_ID() {
        return Users_ID;
    }

    public void setUsers_ID(String Users_ID) {
        this.Users_ID = Users_ID;
    }

    
    
}
