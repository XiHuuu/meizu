package com.it.mz.controller;

import com.it.mz.pojo.User;
import com.it.mz.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
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

    @RequestMapping("login")
    public String login(User user, Model model, HttpServletRequest req , HttpServletResponse resp,String code) throws ServletException, IOException {
        String token= (String)req.getSession().getAttribute(KAPTCHA_SESSION_KEY);
        req.getSession().removeAttribute(KAPTCHA_SESSION_KEY);
        if (!(token != null && token.equalsIgnoreCase(code))){
            req.setAttribute("msg","您输入的验证码错误");
            req.getRequestDispatcher("/error.jsp").forward(req,resp);
        }
        return "";
    }

}
