package com.qdu.dao;

import com.qdu.pojo.Cart;
import java.util.List;
import org.hibernate.Session; 
import org.hibernate.SessionFactory;
import org.hibernate.query.Query; 
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository  
public class CartDao {
    
    @Autowired
    private SessionFactory sessionFactory;
    

    public void insert(Cart cart) {
        Session session = sessionFactory.getCurrentSession(); 
        session.save(cart);
    }

    public void update(Cart cart) {
        Session session = sessionFactory.getCurrentSession();
        session.update(cart);
    }

    public void delete(String User_ID,String Module_ID) {
        Session session = sessionFactory.getCurrentSession();
        Query query = session.createQuery("delete Cart where Users_ID=:UID and Module_ID=:MID");
        query.setParameter("UID", User_ID);
        query.setParameter("MID", Module_ID);
        query.executeUpdate();
    }

    public List<String> getAllById(String User_ID) {
        Session session = sessionFactory.openSession();
        Query query = session.createQuery("select Module_ID from Cart where Users_ID=:UID");
        query.setParameter("UID", User_ID);
        List<String> list = query.list();
        return list;
    }
}
