/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.qdu.controller;

import com.qdu.pojo.User;
import com.qdu.service.UserService;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 *
 * @author 赵凯
 */
@Controller
@RequestMapping("/user")
@Transactional
public class UserController {
    
    @Autowired UserService usersevice;
    
    @PostMapping("/findAll")
   // @ResponseBody
     @ResponseBody
    public List findAll(){
        List<User> list = usersevice.getAll();
        for(User user: list){
            System.out.println(user.getUsers_ID());
        }
        return list;
    }
    
    @PostMapping("/getuserbyid")
    @ResponseBody
    public User getUserToEdit(String uid) {
         System.out.println(111);
        return usersevice.getOneById(uid);
    }
    
       @PostMapping("/edituser")
    @ResponseBody
    public void editUser(User s) {
        //productService.updateProduct(s);
        usersevice.update(s);
    }
    
    @PostMapping("/adduser")
    @ResponseBody
     public void adduser(User s) {
        usersevice.insert(s);
        
       
}
     @PostMapping("/delete")
        @ResponseBody
        public void delete(String uid) {
        usersevice.delete(uid);
        }
}