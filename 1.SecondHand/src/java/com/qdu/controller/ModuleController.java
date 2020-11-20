/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.qdu.controller;

import com.qdu.pojo.Module;
import com.qdu.service.ModuleService;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.model;
import org.springframework.transaction.annotation.Transactional;
//import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 *
 * @author 赵凯
 */
@Controller
@RequestMapping("/module")
@Transactional
public class ModuleController {
    
    @Autowired ModuleService moduleserivice;
    
    @PostMapping("/mohufind")
    public String mohufindController(String sname,HttpServletRequest request){
       HttpSession session=request.getSession();
            session.setAttribute("moduleList",moduleserivice.findBySname(sname));
        System.out.println("1111");
        return "adminPage";
    }
    
     @GetMapping("/findmodule")
    public String findmodule(String zhonglei,HttpServletRequest request) {
        if ("all".equals(zhonglei)) {
          
            HttpSession session=request.getSession();
            session.setAttribute("moduleList", moduleserivice.getAll());
            
//            model.addAttribute("moduleList", moduleserivice.getAll());
        }
        else {
            HttpSession session=request.getSession();
            session.setAttribute("moduleList",moduleserivice.getAllByZhonglei(zhonglei));
//            model.addAttribute("moduleList",moduleserivice.getAllByZhonglei(zhonglei) );
        }
        return "adminPage";
    }
       @PostMapping("/delete")
        @ResponseBody
        public void delete(String mid) {
        moduleserivice.delete(mid);
    }
        @PostMapping("/findbyid")
        @ResponseBody
         public Module getProductToEdit(String mid) {
        return moduleserivice.getOneById(mid);
    }
}
