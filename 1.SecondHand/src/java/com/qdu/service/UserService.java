package com.qdu.service;

import com.qdu.dao.UserDao;
import com.qdu.pojo.User;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service; 
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

@Service
public class UserService {
    @Autowired
    private UserDao dao;
     
    @Transactional(propagation = Propagation.REQUIRED)
    public User validateLogin(String id, String pwd) {

        User s = dao.getOneById(id);
        if (null != s && pwd.equals(s.getUsers_pwd())) {
            return s;
            
        } else {
            return null;
        }
    }
    
    @Transactional(propagation = Propagation.REQUIRED)
    public User getOneById(String id) {
        return dao.getOneById(id);
    }
    
    @Transactional(propagation = Propagation.REQUIRED)
    public List<User> getAll() {
        return dao.getAll();
    }
    
    @Transactional(propagation = Propagation.REQUIRED)
    public void delete(String id) {
        dao.delete(id);
    }
    
    @Transactional(propagation = Propagation.REQUIRED)
    public void insert(User u) {
        dao.insert(u);
    }
    
    @Transactional(propagation = Propagation.REQUIRED)
    public void update(User user) {
        dao.update(user);
    }
}
