package com.qdu.dao;

import com.qdu.pojo.Module;
import java.util.List;
import org.hibernate.Session; 
import org.hibernate.SessionFactory;
import org.hibernate.query.Query; 
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class ModuleDao {
    
    @Autowired
    private SessionFactory sessionFactory;
    

    public void insert(Module module) {
        Session session = sessionFactory.getCurrentSession();
        session.save(module);
    }


    public void update(Module module) {
        Session session = sessionFactory.getCurrentSession();
        session.update(module);
    }

    public void delete(String id) {
        System.out.println(id);
        Session session = sessionFactory.getCurrentSession();
        Query query = session.createQuery("from Module where Module_ID=:MID");
        query.setParameter("MID", id);
         if(query.getResultList().size()==0 ){
        }else{
        Module c = (Module)query.getSingleResult();
        session.delete(c);
         }
    }

    
    public Module getOneById(String id) {
        Session session = sessionFactory.getCurrentSession();
        Module s = (Module) session.get(Module.class, id);
        return s; 
    }
    
   
    public List<Module> getAllByZhonglei(String zhonglei){
        Session session = sessionFactory.getCurrentSession();
        Query query = session.createQuery("from Module where zhonglei=:zl");
        query.setParameter("zl", zhonglei);
         List list = query.list();
         return list;
    }

    public List<Module> getAll() {
         Session session = sessionFactory.getCurrentSession();
        Query query = session.createQuery("from Module");
        List<Module> list = query.list();
        return list;
    }

    public List<Module> SearchModuleByLeft(String keyword){//这边可能也有问题“：a”！！！！！！
        Session session = sessionFactory.getCurrentSession();
        Query query = session.createQuery("from Module where zhonglei like :a union select * from Module where Module_Brand like :b union select * from Module where Module_Model like :c union select * from Module where Module_Specify like :d");
        query.setParameter("a", "%"+keyword+"%");
        query.setParameter("b", "%"+keyword+"%");
        query.setParameter("c", "%"+keyword+"%");
        query.setParameter("d", "%"+keyword+"%");
        List list = query.list();
        return list;
    }
    
    public void addModule(Module module) {
        Session session = sessionFactory.getCurrentSession();
        session.save(module);
    }
    
       public List<Module> findBySname(String sname) {
        Session session = sessionFactory.getCurrentSession();
        Query query = session.createQuery( "from Module s where s.Module_Model like '%"+sname+"%' or s.Module_Brand like '%"+sname+"%' or s.zhonglei like '%"+sname+"%' or s.Module_ID like '%"+sname+"%' "); 
        List<Module> list = query.list();
        return list;
}
    
}
