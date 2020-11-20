package com.qdu.service;

import com.qdu.dao.ModuleDao;
import com.qdu.pojo.Module;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service; 
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;
//事务可以使用在Dao层，也可以使用在Service层，框架集成之后，建议使用在Service层
//@Transactional注解：该注解指定事务的策略，既可以使用在类之前，也可以使用在方法之前
//如果使用在类前，那么就意味着该类所有的方法使用同一事务
@Service
public class ModuleService {

    @Autowired
    private ModuleDao dao;
    
    @Transactional(propagation = Propagation.REQUIRED)
    public void insert(Module module) {
        dao.insert(module);
    }

    @Transactional(propagation = Propagation.REQUIRED)
    public List<Module> getAllByZhonglei(String zhonglei){
        return dao.getAllByZhonglei(zhonglei);
    }
    
    @Transactional(propagation = Propagation.REQUIRED)
    public void update(Module module) {
        dao.update(module);
    }
    
    @Transactional(propagation = Propagation.REQUIRED)
    public void delete(String id) {
        dao.delete(id);
    }
    
    @Transactional(propagation = Propagation.REQUIRED)
    public Module getOneById(String id) {
        return dao.getOneById(id);
    }
    
    @Transactional(propagation = Propagation.REQUIRED)
    public List<Module> getAll() {
        return dao.getAll();
    }
    
    @Transactional(propagation = Propagation.REQUIRED)
    public List<Module> SearchModuleByLeft(String keyword){
        return dao.SearchModuleByLeft(keyword);
    }
    
    @Transactional(propagation = Propagation.REQUIRED)
    public void addModule(Module module) {
       dao.addModule(module);
    }
    @Transactional(readOnly = true)
     public List<Module>  findBySname(String sname){
         return dao.findBySname(sname);
     }
    
}
