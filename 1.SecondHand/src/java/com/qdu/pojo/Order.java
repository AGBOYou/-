package com.qdu.pojo;

import java.io.Serializable;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
import org.hibernate.annotations.GenericGenerator;


@Entity
@Table(name="Order_Table")
public class Order implements Serializable{
    
    @Id
    @GeneratedValue(generator = "pkAssigned")
    @GenericGenerator(name = "pkAssigned",strategy = "assigned")
    private String Order_ID;
    private String Users_ID;
    private String Adress;
    private String Order_Date;
    private String Order_Status;
    private float Price;

    public Order() {
    }
    
    public Order(String Order_ID, String Users_ID, String Adress, String Order_Date, String Order_Status, float Price) {
        this.Order_ID = Order_ID;
        this.Users_ID = Users_ID;
        this.Adress = Adress;
        this.Order_Date = Order_Date;
        this.Order_Status = Order_Status;
        this.Price = Price;
    }

    
    
    public String getOrder_ID() {
        return Order_ID;
    }

    public void setOrder_ID(String Order_ID) {
        this.Order_ID = Order_ID;
    }

    public String getUsers_ID() {
        return Users_ID;
    }

    public void setUsers_ID(String Users_ID) {
        this.Users_ID = Users_ID;
    }

    public String getAdress() {
        return Adress;
    }

    public void setAdress(String Adress) {
        this.Adress = Adress;
    }

    public String getOrder_Date() {
        return Order_Date;
    }

    public void setOrder_Date(String Order_Date) {
        this.Order_Date = Order_Date;
    }

    public String getOrder_Status() {
        return Order_Status;
    }

    public void setOrder_Status(String Order_Status) {
        this.Order_Status = Order_Status;
    }

    public float getPrice() {
        return Price;
    }

    public void setPrice(float Price) {
        this.Price = Price;
    }


    

}
