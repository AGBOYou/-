package com.qdu.dao;

import com.qdu.pojo.Order;
import java.util.List;
import org.hibernate.Session; 
import org.hibernate.SessionFactory;
import org.hibernate.query.Query; 
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository 
public class OrderDao {
    
    @Autowired
    private SessionFactory sessionFactory;
   

    public void insert(Order order) {
        Session session = sessionFactory.getCurrentSession();
        session.save(order);
    }


    public Order getOneById(String id) {
        Session session = sessionFactory.getCurrentSession();
        Order s = (Order) session.get(Order.class, id);
        return s; 
    }


    public List<Order> getAll(String User_ID) {
         Session session = sessionFactory.getCurrentSession();
        Query query = session.createQuery("from Order where Users_ID=:UID");
        query.setParameter("UID", User_ID);
        List list = query.list();
        return list;
    }
    public void update(Order order) {
        Session session = sessionFactory.getCurrentSession();
        Query query = session.createQuery("update Order set Order_Status=:Order_Status"
                + " where Order_ID=:Order_ID");
        query.setParameter("Order_Status", "已收货");
        query.setParameter("Order_ID", order.getOrder_ID());
        query.executeUpdate();
    }
}
