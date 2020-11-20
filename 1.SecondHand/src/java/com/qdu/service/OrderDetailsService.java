package com.qdu.service;

import com.qdu.dao.OrderDetailsDao;
import com.qdu.pojo.OrderDetails;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service; 
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

@Service
public class OrderDetailsService {

    @Autowired
    private OrderDetailsDao dao;
    
    @Transactional(propagation = Propagation.REQUIRED)
    public void insert(OrderDetails orderDetails) {
        dao.insert(orderDetails);
    }
    
    @Transactional(propagation = Propagation.REQUIRED)
    public List<String> getAll(String Order_ID,String User_ID) {
        return dao.getAll(Order_ID, User_ID);
    }
    
}
