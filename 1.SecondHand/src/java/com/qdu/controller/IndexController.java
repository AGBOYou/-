package com.qdu.controller;

import com.qdu.pojo.Module;
import com.qdu.pojo.Products;
import com.qdu.service.ModuleService;
import com.qdu.service.ProductService;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class IndexController {
     
    @Autowired
    private ModuleService moduleService;
    @Autowired
    private ProductService productService;
    
    @RequestMapping({"/","/index"}) 
    public String index(Model model){
        
        
        List<Module> list1= moduleService.getAllByZhonglei("处理器"); 
        model.addAttribute("list1", list1);
        
        
        List<Module> list2=moduleService.getAllByZhonglei("主板");
        model.addAttribute("list2", list2);
        
        
        List<Module> list3=moduleService.getAllByZhonglei("内存");
        model.addAttribute("list3", list3);
        
        
        List<Module> list4=moduleService.getAllByZhonglei("硬盘");
        model.addAttribute("list4", list4);
        
        
        List<Module> list5=moduleService.getAllByZhonglei("显卡");
        model.addAttribute("list5", list5);
        
        
        List<Module> list6=moduleService.getAllByZhonglei("机箱");
        model.addAttribute("list6", list6);
        
        
        List<Module> list7=moduleService.getAllByZhonglei("电源");
        model.addAttribute("list7", list7);
        
       
        List<Module> list8=moduleService.getAllByZhonglei("显示器");
        model.addAttribute("list8", list8);
        
        ;
        List<Module> list9=moduleService.getAllByZhonglei("鼠标");
        model.addAttribute("list9", list9);
        
       
        List<Module> list10=moduleService.getAllByZhonglei("散热器");
        model.addAttribute("list10", list10);
        
        
        List<Module> list11=moduleService.getAllByZhonglei("耳机");
        model.addAttribute("list11", list11);
        
        
        List<Module> list12=moduleService.getAllByZhonglei("音响");
        model.addAttribute("list12", list12);
        
        
        List<Module> list13=moduleService.getAllByZhonglei("光驱");
        model.addAttribute("list13", list13);
        
        
        List<Module> list14=moduleService.getAllByZhonglei("处理器");
        model.addAttribute("list14", list14);
        
        List <Products> proall=(List <Products>) productService.getAll();
        model.addAttribute("showall", proall);
        for(Products p :proall)
            System.out.println(p.getUsers_ID());
        
        return "index";
    }
    
    @RequestMapping("/toadminuser")
    public String toAdminuser(){
        return "admin_user";
    }
    
    
}
