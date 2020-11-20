/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.qdu.service;

import com.qdu.dao.ModuleDao;
import com.qdu.dao.ProductsDao;
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
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author 15312
 */
@Service
public class ProductService {

    @Autowired
    private ProductsDao dao;
    
    @Transactional(propagation = Propagation.REQUIRED)
    public void insert(Products products) {
        dao.insert(products);
    }

    @Transactional(propagation = Propagation.REQUIRED)
    public List<Products> getAllByZhonglei(String zhonglei){
        return dao.getAllByZhonglei(zhonglei);
    }
    
    @Transactional(propagation = Propagation.REQUIRED)
    public void update(Products products) {
        dao.update(products);
    }
    
    @Transactional(propagation = Propagation.REQUIRED)
    public void delete(String uid,String uzl,String ub,String um,String us,String up) {
        dao.delete(uid,uzl,ub,um,us,up);
    }
    
    @Transactional(propagation = Propagation.REQUIRED)
    public Products getOneById(String id) {
        return dao.getOneById(id);
    }
    
    @Transactional(propagation = Propagation.REQUIRED)
    public List<Products> getAllById(String id) {
        return dao.getAllById(id);
    }
    
    @Transactional(propagation = Propagation.REQUIRED)
    public List<Products> getAll() {
        return dao.getAll();
    }
    
    
    @Transactional(propagation = Propagation.REQUIRED)
    public void addProducts(Products products) {
       dao.addProducts(products);
    }
    
}
