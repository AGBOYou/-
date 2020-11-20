package com.qdu.service;

import com.qdu.dao.CartDao;
import com.qdu.dao.CommentDao;
import com.qdu.pojo.Cart;
import com.qdu.pojo.Comment;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service; 
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

@Service
public class CommemntService {

    @Autowired
    private CommentDao dao;
    
    @Transactional(propagation = Propagation.REQUIRED)
    public void insert(Comment comment) {
        dao.insert(comment);
    }
    
    @Transactional(propagation = Propagation.REQUIRED)
    public void update(Comment comment) {
        dao.update(comment);
    }
    
    @Transactional(propagation = Propagation.REQUIRED)
    public void delete(String id) {
        dao.delete(id);
    }
    
    @Transactional(propagation = Propagation.REQUIRED)
    public Comment getOneById(String id) {
        return dao.getOneById(id);
    }
    
    @Transactional(propagation = Propagation.REQUIRED)
    public List<Comment> getAllById(String id) {
        return dao.getAllById(id);
    }
}
