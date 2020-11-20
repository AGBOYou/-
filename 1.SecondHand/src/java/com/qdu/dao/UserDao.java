package com.qdu.dao;

import com.qdu.pojo.User;
import java.util.List;
import org.hibernate.Session; 
import org.hibernate.SessionFactory;
import org.hibernate.query.Query; 
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class UserDao {
    
    @Autowired
    private SessionFactory sessionFactory;

    public User getOneById(String id) {
        Session session = sessionFactory.getCurrentSession();
        User s = (User) session.get(User.class, id);
        return s; 
    }

    public List<User> getAll() {
         Session session = sessionFactory.getCurrentSession();
        Query query = session.createQuery("from User");
        List list = query.list();
        return list;
    }

    public void delete(String id) {
        Session session = sessionFactory.getCurrentSession();
        Query query = session.createQuery("from User where Users_ID=:UID");
        query.setParameter("UID", id);
          if(query.getResultList().size()==0 ){
           
        }else{
            User c = (User)query.getSingleResult();
            session.delete(c);
        }
       
        
    }
  
    public void insert(User u) {
        Session session = sessionFactory.getCurrentSession();
        session.save(u);
    }

    public void update(User user) {
        Session session = sessionFactory.getCurrentSession();
        System.out.println(user.getUsers_ID());
        Query query = session.createQuery("update User set Users_Name=:Users_Name,Users_pwd=:Users_pwd,Users_phoneNum=:Users_phoneNum,E_mail=:E_mail"
                + " where Users_ID=:UID");
        query.setParameter("Users_Name", user.getUsers_Name());
        query.setParameter("Users_pwd", user.getUsers_pwd());
        query.setParameter("Users_phoneNum", user.getUsers_phoneNum());
        query.setParameter("E_mail", user.getE_mail());
        query.setParameter("UID", user.getUsers_ID());
        query.executeUpdate();
    }
    
}
