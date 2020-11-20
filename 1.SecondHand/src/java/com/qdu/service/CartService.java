package com.qdu.service;

import com.qdu.dao.CartDao;
import com.qdu.pojo.Cart;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service; 
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

@Service
public class CartService {

    @Autowired
    private CartDao dao;
    
    @Transactional(propagation = Propagation.REQUIRED)
    public void insert(Cart cart) {
        dao.insert(cart);
    }
    
    @Transactional(propagation = Propagation.REQUIRED)
    public void update(Cart cart) {
        dao.update(cart);
    }
    
    @Transactional(propagation = Propagation.REQUIRED)
    public void delete(String User_ID,String Module_ID) {
        dao.delete(User_ID, Module_ID);
    }
    
    @Transactional(propagation = Propagation.REQUIRED)
    public List<String> getAllById(String User_ID) {
        return dao.getAllById(User_ID);
    }
}
