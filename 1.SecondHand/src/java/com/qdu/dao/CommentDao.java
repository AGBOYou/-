
package com.qdu.dao;

import com.qdu.pojo.Comment;
import java.util.List;
import org.hibernate.Session; 
import org.hibernate.SessionFactory;
import org.hibernate.query.Query; 
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
/**
 *
 * @author 张本腾
 */
@Repository 
public class CommentDao {
    
    @Autowired
    private SessionFactory sessionFactory;
    

    public void insert(Comment comment) {
        Session session = sessionFactory.getCurrentSession();
        session.save(comment);
    }

    public void update(Comment comment) {
        Session session = sessionFactory.getCurrentSession();
        session.update(comment);
    }

    public void delete(String id) {
        Session session = sessionFactory.getCurrentSession();
        Query query = session.createQuery("from Comment where Comment_ID=:CID");
        query.setParameter("CID", id);
        Comment c = (Comment)query.getSingleResult();
        session.delete(c);
    }

    public Comment getOneById(String id) {
        Session session = sessionFactory.getCurrentSession();
        Comment s = (Comment) session.get(Comment.class, id);
        return s; 
    }


    public List<Comment> getAllById(String id) {
        Session session = sessionFactory.getCurrentSession();
        Query query = session.createQuery("from Comment where Module_ID=:MID");
        query.setParameter("MID", id);
        List list = query.list();
        return list;
    }
    
}
