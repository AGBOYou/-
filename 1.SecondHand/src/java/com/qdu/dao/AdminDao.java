package com.qdu.dao;

import com.qdu.pojo.Admin;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository 
public class AdminDao{

    @Autowired
    private SessionFactory sessionFactory;
    
  
    public Admin getOneById(String id) {
        Session session = sessionFactory.getCurrentSession();
//        Admin s = (Admin) session.get(Admin.class, id);
        Query query = session.createQuery("from Admin where Admin_ID=:MID");
        query.setParameter("MID", id);
        Admin s=(Admin)query.getSingleResult();
        System.out.println(s.getAdmin_ID());
        System.out.println(s.getAdmin_pwd());
        return s; 
    }

    public void insert(Admin a) {
        Session session = sessionFactory.getCurrentSession();
        session.save(a); 
    }
}
