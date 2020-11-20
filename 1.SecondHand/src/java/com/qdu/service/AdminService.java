package com.qdu.service;

import com.qdu.dao.AdminDao;
import com.qdu.pojo.Admin;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service; 
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

@Service
public class AdminService {

    @Autowired
    private AdminDao dao;
    
    @Transactional(propagation = Propagation.REQUIRED)
    public Admin getOneById(String id) {
        return dao.getOneById(id);
    }
    
    @Transactional(propagation = Propagation.REQUIRED)
    public void insert(Admin a) {
        dao.insert(a);
    }
    
}
