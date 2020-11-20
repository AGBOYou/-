package com.qdu.controller;

import com.qdu.pojo.Cart;
import com.qdu.pojo.Comment;
import com.qdu.pojo.Module;
import com.qdu.pojo.Order;
import com.qdu.pojo.OrderDetails;
import com.qdu.pojo.Products;
import com.qdu.pojo.User;
import com.qdu.service.CartService;
import com.qdu.service.CommemntService;
import com.qdu.service.ModuleService;
import com.qdu.service.OrderDetailsService;
import com.qdu.service.UserService;
import com.qdu.service.OrderService;
import com.qdu.service.ProductService;
import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;


@Controller
@RequestMapping("/all")

public class AllController extends HttpServlet {
    @Autowired
    private ProductService productService;
    @Autowired
    private ModuleService moduleService;
    @Autowired
    private CommemntService commentService;
    @Autowired
    private UserService userService;
    @Autowired
    private CartService cartService;
    @Autowired
    private OrderService orderService;
    @Autowired
    private OrderDetailsService orderdetailsService;
    

    @RequestMapping("/msa")
    protected String ModuleSearchAll(String zhonglei,Model model){
       
        List<Module> list=moduleService.getAllByZhonglei(zhonglei);
        
        model.addAttribute("moduleList", list);
        model.addAttribute("zhonglei", zhonglei);
        
        return "liebiao";
    }
    
    
    @RequestMapping("/soms")
    protected String ShowOneModuleServlet1(String Module_ID,Model model){
       
        model.addAttribute("ID", Module_ID);
        
        Module m=moduleService.getOneById(Module_ID);
        
        model.addAttribute("module", m);
        model.addAttribute("zhonglei", m.getZhonglei());
        
        List<Comment> list=commentService.getAllById(Module_ID);
        model.addAttribute("commentList", list);
        
        return "xiangqing";
    } 
    @RequestMapping("/acs")
    protected String AddCommentServlet(String Module_ID,String text,HttpServletRequest request){
      
        Date date1=new Date();
        SimpleDateFormat sdf1 = new SimpleDateFormat("yyyyMMddHHmmss");
        String Comment_ID=sdf1.format(date1);
        Date date2=new Date();
        SimpleDateFormat sdf2 = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        String time=sdf2.format(date2);
        
        HttpSession session = request.getSession();
        User user=(User) session.getAttribute("user");
        
        Comment com = new Comment(Comment_ID,user.getUsers_ID(),user.getUsers_Name(),text,time,Module_ID);
        
        commentService.insert(com);
        
        return "redirect:/all/soms?Module_ID="+Module_ID;
    }
    
    @RequestMapping("/ls")
    protected String LoginServlet(String username,String password,
            HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException{
       
        response.setContentType("text/html;charset=utf-8");
        User s = userService.validateLogin(username, password);
        PrintWriter out=response.getWriter(); 
        
        Cookie ck1 = new Cookie("userid", username); //名称-值对
        Cookie ck2 = new Cookie("password", password);

        //如果复选框没有选中，则该参数返回null
        if (null!=request.getParameter("remember")) {
            ck1.setMaxAge(7 * 24 * 60 * 60);
            ck2.setMaxAge(7 * 24 * 60 * 60);
        } else {
            ck1.setMaxAge(0);
            ck2.setMaxAge(0);
        }

        response.addCookie(ck1);
        response.addCookie(ck2);
        
        if (null != s) {
            HttpSession session = request.getSession();
            session.setAttribute("user", s);
            session.setAttribute("isLogin", "Y");
            return "redirect:/index";
        } else {
           
           
           return "login";
        }
     }
    
    @RequestMapping("/los")
    protected String LogoutServlet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException{
        HttpSession session = request.getSession(false);
        if (session != null) {
            session.invalidate();
        }
        return "redirect:/index";
    }
    
    @RequestMapping("/register")
    protected String UserRegisterServlet(String userID,String username,String password,String tel,String email){
        User u = new User(userID, username, password, tel, email);
        userService.insert(u);
        
        return "redirect:/page/login";
    }
    
    @PostMapping("/issue")
    protected String issueServlet(@RequestParam("filename") MultipartFile file,String zhonglei,String Want_Brand,String Want_Model,String Want_Specify,String Want_Price,HttpServletRequest req) throws IOException{
         String realpath=req.getSession().getServletContext().getRealPath("/images");
         String newpath=realpath.replace("build\\", "");
        System.out.println("111");
        HttpSession session = req.getSession();
        User user=(User) session.getAttribute("user");
//        Products p = new Products(user.getUsers_ID(),zhonglei, Want_Brand, Want_Model, Want_Specify, Want_Price);
       
//        productService.insert(p);

           if(!file.isEmpty()){
             String filename=file.getOriginalFilename();
             File newfile=new File(newpath+"/"+filename);
             file.transferTo(newfile);
              Products p= new Products(user.getUsers_ID(), zhonglei, Want_Brand, Want_Model, Want_Specify, Want_Price, filename);
             
              productService.insert(p);
             
//             Upload upload= new Upload(module_id, module_name, module_Specify, module_Price, filename,admin.getAdmin_ID());
//             uploadserivice.insert(upload);
             
         }
        
        return "redirect:/page/yifabu";
    }

    
    @RequestMapping("/dcs")
    protected String DeleteCartServlet(String Module_ID,HttpServletRequest req){
        HttpSession session = req.getSession();
        User user=(User) session.getAttribute("user");
        cartService.delete(user.getUsers_ID(), Module_ID);
        
        return "redirect:/page/tocart";
    }
    
    @RequestMapping("/cs")
    protected String CartServlet(String Module_ID,HttpServletRequest req){
        HttpSession session = req.getSession();
        User user=(User) session.getAttribute("user");
        
        Cart c=new Cart(user.getUsers_ID(),Module_ID);
        cartService.insert(c);
        
        return "redirect:/page/tocart";
    }
    
    @RequestMapping("/aos")
    protected String AddOrderServlet(String Order_ID,float jiage,String adress,HttpServletRequest request){
        
        String Status="等待发货";
        Date date=new Date();
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        String time=sdf.format(date);
        
        HttpSession session = request.getSession();
        User user=(User) session.getAttribute("user");
        List<Module> Dlist=(List<Module>)session.getAttribute("Dlist");
        
        orderService.insert(new Order(Order_ID,user.getUsers_ID(),adress,time,Status,jiage)); 
        
        for(int i=0;i<Dlist.size();i++)
        {
            Module c=Dlist.get(i);
            OrderDetails od=new OrderDetails(Order_ID,c.getModule_ID(),user.getUsers_ID());
            orderdetailsService.insert(od);
        }
        
        return "redirect:/page/osa";
    }
    
    @RequestMapping("/infochange")//用户自己修改用户信息
    protected String info_changeServlet(String users_name,String user_password,String users_pwd,String tel,String email,HttpServletRequest req,Model model){
       
        //获取对话中的User信息
        HttpSession session = req.getSession();
        User user=(User) session.getAttribute("user");
        
        User u=new User(user.getUsers_ID(),users_name,users_pwd,tel,email);
       //调用dao层中的Updata方法
        userService.update(u);
        
        return "redirect:/page/toself";
    }
}

