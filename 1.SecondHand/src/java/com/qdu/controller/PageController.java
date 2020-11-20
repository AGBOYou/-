package com.qdu.controller;

import com.qdu.dao.CartDao;
import com.qdu.dao.ModuleDao;
import com.qdu.pojo.Admin;
import com.qdu.pojo.Cart;
import com.qdu.pojo.Module;
import com.qdu.pojo.Order;
import com.qdu.pojo.OrderDetails;
import com.qdu.pojo.Products;
import com.qdu.pojo.User;
import com.qdu.service.CartService;
import com.qdu.service.AdminService;
import com.qdu.service.ModuleService;
import com.qdu.service.OrderDetailsService;
import com.qdu.service.OrderService;
import com.qdu.service.ProductService;
import com.qdu.service.UserService;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import javax.servlet.http.HttpSession;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/page")
public class PageController {
    
    @Autowired
    private ProductService productService;
    @Autowired
    private UserService userService;
    @Autowired
    private CartService cartService;
    @Autowired
    private ModuleService moduleService;
    @Autowired
    private OrderService orderService;
    @Autowired
    private OrderDetailsService orderdetailsService;
    @Autowired
    private AdminService adminService;
    
    
    @RequestMapping({"/toindex"}) 
    public String toIndex(){
        return "redirect:/index";
    }
    
    @RequestMapping({"/login"}) 
    public String toLogin(){
        return "login";
    }

    @RequestMapping({"/toamdinLogin"}) 
    public String toAmdinLogin(){
        return "adminLogin";
    }
    
    @RequestMapping({"/toregister"}) 
    public String toRegister(){
        return "register";
    }
    @RequestMapping({"/toself"}) 
    public String toSelfInfo(HttpServletRequest request,Model model){
        HttpSession session = request.getSession();
        User u = (User)session.getAttribute("user");
        model.addAttribute("user",userService.getOneById(u.getUsers_ID()));
        return "self_info";
    }
    
    @RequestMapping({"/tocart"}) 
    public String toCart(HttpServletRequest request,Model model){
        HttpSession session = request.getSession();
        User user=(User) session.getAttribute("user");
        
        List<String> list1=cartService.getAllById(user.getUsers_ID());
         
        for(int i=0;i<list1.size();i++)
        {
            String c=list1.get(i);
        }
        float total=0;
        int sum=0;
        
        List<Module> list2=new ArrayList<Module>();
        
        for(int i=0;i<list1.size();i++)
        {
            String c=list1.get(i);
            Module m = moduleService.getOneById(c);
            list2.add(m);
            total+=Float.parseFloat(m.getModule_Price());
            sum++;
        }
        session.setAttribute("allPrice", total);
        session.setAttribute("moduleSum", sum);
        
        model.addAttribute("modulelist", list2);
        
        return "gouwuche";
    }
    
    @RequestMapping({"/todingdanqueren"}) 
    public String toDingDanQueRen(HttpServletRequest request,Model model){
        
        Date date=new Date();
        SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmss");
        String Order_ID=sdf.format(date);
        
        HttpSession session = request.getSession();
        User user=(User) session.getAttribute("user");
        float jiage=(float)session.getAttribute("allPrice");
                                
        
        List<String> list=cartService.getAllById(user.getUsers_ID());
        List<Module> list2=new ArrayList<Module>();
            
        for(int i=0;i<list.size();i++)
        {
            String c=list.get(i);
            Module m =moduleService.getOneById(c);
            list2.add(m);
        }
        
        model.addAttribute("jiage", jiage);
        session.setAttribute("Dlist", list2);
        model.addAttribute("Order_ID", Order_ID);
        
        return "dingdanqueren";
    }
    
    @RequestMapping({"/osa"}) 
    public String OrderSearchAll(HttpServletRequest request,Model model){
        
        HttpSession session = request.getSession();
        User user=(User) session.getAttribute("user");
        List<Order> list=orderService.getAll(user.getUsers_ID());
        model.addAttribute("orderlist", list);
        
        return "dingdanzhongxin";
    }
    
    @RequestMapping({"/sddxqs"}) 
    public String ShowDingDanXiangQingServlet(String Order_ID,HttpServletRequest request,Model model){
        
        HttpSession session = request.getSession();
        User user=(User) session.getAttribute("user");
        
        List<String> list=orderdetailsService.getAll(Order_ID, user.getUsers_ID());
        
        List<Module> mlist=new ArrayList<Module>();
        for(int i=0;i<list.size();i++)
        {
            String ods=list.get(i);
            Module m =moduleService.getOneById(ods);
            System.out.println(ods);
            mlist.add(m);
        }
        Order o = orderService.getOneById(Order_ID);
        
        model.addAttribute("adress", o.getAdress());
        model.addAttribute("ModuleList", mlist);
        model.addAttribute("Order_ID", Order_ID);
        model.addAttribute("Order", o);
        
        return "dingdanxiangqing";
    }
    
    @RequestMapping({"/toinfochange"}) 
    public String toInfoChange(){
        return "info_change";
    }
    
    @RequestMapping({"/adminLogin"}) 
    public String AdminLoginServlet(String admin,String password,HttpServletRequest request){
       
        
        Admin a=adminService.getOneById(admin);
        
        if(null!=a&&password.equals(a.getAdmin_pwd())){
            HttpSession session=request.getSession(); 
            session.setAttribute("admin", a);
            return "adminPage";
        }else{
            return "toamdinLogin";
        }  
    }
    
    @RequestMapping({"/adminLoginOut"}) 
    public String AdminLogoutServlet(HttpServletRequest request){
        HttpSession session = request.getSession(false);
        if (session != null) {
            session.invalidate();
        }
        return "redirect:/page/toamdinLogin";
    }
    
    @RequestMapping({"/toaddadminpage"}) 
    public String toAddAdminPage(){
        return "addAdmin";
    }
    
    @RequestMapping({"/toaddmodulepage"}) 
    public String toAddModulePage(){
        return "addModule";
    }
    
    @RequestMapping({"/sus"}) 
    public String SearchUserServlet(HttpServletRequest req){
        List <User> list=userService.getAll();
        HttpSession session = req.getSession();
        session.setAttribute("userlist", list);
        return "admin_user";
    }
    
    @RequestMapping({"/heihei"}) 
        public String UserServlet(HttpServletRequest request,Model model){
        List <Products> proall=(List <Products>) productService.getAll();
        model.addAttribute("proall", proall);
        return "products";
        }
//    public String UserServlet(HttpServletRequest req){
//        List <Products> list=productService.getAll();
//        HttpSession session = req.getSession();
//        session.setAttribute("userlist", list);
//        return "products";
//    } 
    
    @RequestMapping("/shanchu")
    public String issueServlet(@RequestParam(name = "uid")String uid,@RequestParam(name = "uzl")String uzl,@RequestParam(name = "ub")String ub,@RequestParam(name = "um")String um,@RequestParam(name = "us")String us,@RequestParam(name = "up")String up){      
        productService.delete(uid,uzl,ub,um,us,up);
        
        return "redirect:/page/yifabu";
    }
    
        @RequestMapping("/glyshanchu")
    public String shanchuServlet(String uid,String uzl,String ub,String um,String us,String up){     
        productService.delete(uid,uzl,ub,um,us,up);
        System.out.println(uid);
        
        return "redirect:/page/heihei";
    }
    
    @RequestMapping({"/yifabu"}) 
    public String ProServlet(HttpServletRequest request,Model model){
        HttpSession session = request.getSession();
        User user=(User) session.getAttribute("user");
        List <Products> prolist=(List <Products>) productService.getAllById(user.getUsers_ID());
        model.addAttribute("prolist", prolist);
        return "User_pro";
    }

    
    @RequestMapping({"/fabu"}) 
    public String IssueServlet(HttpServletRequest req){
        List <User> list=userService.getAll();
        HttpSession session = req.getSession();
        session.setAttribute("userlist", list);
        return "issue_pro";
    }    
    
    @RequestMapping({"/toadminpage"}) 
    public String toAdminPage(){
        return "adminPage";
    }
    
    @RequestMapping({"/aas"}) 
    public String AddAdminServlet(String inputAdmin,String rePassword,HttpServletRequest req){
        Admin a=new Admin(inputAdmin, rePassword);
        adminService.insert(a);
        return "redirect:/page/toadminpage";
    }
    
    @RequestMapping({"/am"}) 
    public String AddModule(String Module_ID,String zhonglei,String Module_Brand,String Module_Model,String Module_Specify,String Module_Price,HttpServletRequest req){
        Module newModule = new Module(Module_ID, zhonglei, Module_Brand, Module_Model, Module_Specify, Module_Price);

        moduleService.addModule(newModule);
        return "redirect:/page/toadminpage";
    }
    @RequestMapping({"/querenshouhuo"}) 
    public String ShouHuo(String Order_ID){
        Order o = orderService.getOneById(Order_ID);
        orderService.update(o);
        return "redirect:/page/osa";
    }
}
