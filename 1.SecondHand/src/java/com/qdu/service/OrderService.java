package com.qdu.service;

import com.qdu.dao.OrderDao;
import com.qdu.pojo.Order;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service; 
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

@Service
public class OrderService {

    @Autowired
    private OrderDao dao;
    
    @Transactional(propagation = Propagation.REQUIRED)
    public void insert(Order order) {
        dao.insert(order);
    }
    
    @Transactional(propagation = Propagation.REQUIRED)
    public Order getOneById(String id) {
        return dao.getOneById(id);
    }
    
    @Transactional(propagation = Propagation.REQUIRED)
    public List<Order> getAll(String User_ID) {
        return dao.getAll(User_ID);
    }
    
    @Transactional(propagation = Propagation.REQUIRED)
    public void update(Order order) {
        dao.update(order);
    }
}
