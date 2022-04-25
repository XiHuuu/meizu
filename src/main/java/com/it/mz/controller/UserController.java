package com.it.mz.controller;

import com.it.mz.pojo.User;
import com.it.mz.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

import static com.google.code.kaptcha.Constants.KAPTCHA_SESSION_KEY;

@Controller
@RequestMapping("user")
public class UserController {
    @Autowired
    private UserService userService;

    @RequestMapping("addUser")
    public String addUser(User user){
        userService.addUser(user);
        return "";
    }

    @RequestMapping("deleteUser")
    public String deleteUser(int id){
        userService.deleteUser(id);
        return "";
    }

    @RequestMapping("updateUser")
    public String updateUser(User user){
        userService.updateUser(user);
        return "";
    }

    @RequestMapping("getUsers")
    public String getUsers(){
        List<User> list = userService.getUsers();
        return "";
    }

    @RequestMapping("getUserById")
    public String getUserById(int id){
        User user = userService.getUserById(id);
        return "";
    }

    @RequestMapping("getUserByNameAndPwd")
    public String getUserByNameAndPwd(String username,String password){
        User user = userService.getUserByNameAndPwd(username,password);
        return "";
    }

    @RequestMapping("login")
    public String login(User user, Model model, HttpServletRequest req ,HttpServletResponse resp,String code,Boolean auto) throws ServletException, IOException {
        String token= (String)req.getSession().getAttribute(KAPTCHA_SESSION_KEY);
        req.getSession().removeAttribute(KAPTCHA_SESSION_KEY);
        if (!(token != null && token.equalsIgnoreCase(code))){
            model.addAttribute("msg","您输入的验证码错误");
            return "/error.jsp";
        }
        User u = userService.getUserByNameAndPwd(user.getUsername(), user.getPassword());
        System.out.println(u);
        if (u == null){
            model.addAttribute("msg","您输入的用户名或密码错误");
            return "/error.jsp";
        }else {
            System.out.println(auto);
            if (auto){
                Cookie cookie = new Cookie("user", u.getUsername() + "==" + u.getPassword());
                cookie.setMaxAge(7*24*60*60);
                cookie.setPath("/meizu");
                System.out.println(cookie);
                resp.addCookie(cookie);
            }
            HttpSession session = req.getSession();
            session.setAttribute("user",u);
            return "redirect:/index.jsp";
        }
    }

    @RequestMapping("register")
    public String register(User user,Model model,HttpServletRequest req,String code){
        String token= (String)req.getSession().getAttribute(KAPTCHA_SESSION_KEY);
        req.getSession().removeAttribute(KAPTCHA_SESSION_KEY);
        if (!(token != null && token.equalsIgnoreCase(code))){
            model.addAttribute("msg","您输入的验证码错误");
            return "/error.jsp";
        }
        userService.addUser(user);
        return "redirect:/login.jsp";
    }

    @RequestMapping("exit")
    public String exit(HttpServletRequest req){
        req.getSession().invalidate();
        return "/phone/getPhones?url=index";
    }
}
