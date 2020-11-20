/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.qdu.dao;

import com.qdu.pojo.Module;
import com.qdu.pojo.Products;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


@Repository
public class ProductsDao {
    
    @Autowired
    private SessionFactory sessionFactory;
    

    public void insert(Products products) {
        System.out.println(products.getUsers_ID());
        Session session = sessionFactory.getCurrentSession();
        session.save(products);
    }


    public void update(Products products) {
        Session session = sessionFactory.getCurrentSession();
        session.update(products);
    }

    public void delete(String uid,String uzl,String ub,String um,String us,String up) {
        Session session = sessionFactory.getCurrentSession();
        Query query = session.createQuery("delete from Products where users_ID=:UID and zhonglei=:zhonglei and Want_Brand=:Brand and Want_Model=:Model and Want_Specify=:Specify and Want_Price=:Price");
        query.setParameter("UID", uid);
        query.setParameter("zhonglei",uzl);
        query.setParameter("Brand",ub);
        query.setParameter("Model",um);
        query.setParameter("Specify",us);
        query.setParameter("Price", up);
        query.executeUpdate();
    }

    
    public Products getOneById(String id) {
        Session session = sessionFactory.getCurrentSession();
        Products s = (Products) session.get(Products.class, id);
        return s; 
    }
    
   
    public List<Products> getAllByZhonglei(String zhonglei){
        Session session = sessionFactory.getCurrentSession();
        Query query = session.createQuery("from Products where zhonglei=:zl");
        query.setParameter("zl", zhonglei);
         List list = query.list();
         return list;
    }

    public List<Products> getAll() {
         Session session = sessionFactory.getCurrentSession();
        Query query = session.createQuery("from Products");
        List<Products> list = query.list();
        return list;
    }
    
    public void addProducts(Products Products) {
        Session session = sessionFactory.getCurrentSession();
        session.save(Products);
    }
    
    public List<Products> getAllById(String id){
        Session session = sessionFactory.getCurrentSession();
        Query query = session.createQuery("from Products where users_ID=:id");
        query.setParameter("id", id);
        List list = query.list();
        return list;
    }
    
}
