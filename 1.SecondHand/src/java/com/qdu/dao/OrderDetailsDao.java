package com.qdu.dao;

import com.qdu.pojo.OrderDetails;
import java.util.List;
import org.hibernate.Session; 
import org.hibernate.SessionFactory; 
import org.hibernate.query.Query; 
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


@Repository 
public class OrderDetailsDao {
    
    @Autowired
    private SessionFactory sessionFactory;
   
    public void insert(OrderDetails orderDetails) {
        Session session = sessionFactory.getCurrentSession();
        session.save(orderDetails);
    }

    public List<String> getAll(String Order_ID,String User_ID) {
         Session session = sessionFactory.getCurrentSession();
        Query query = session.createQuery("select Module_ID from OrderDetails where Order_ID=:OID and Users_ID=:UID");
        query.setParameter("OID", Order_ID);
        query.setParameter("UID", User_ID);
        List<String> list = query.list();
        return list;
    }  
}
