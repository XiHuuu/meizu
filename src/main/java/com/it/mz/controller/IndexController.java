package com.it.mz.controller;

import com.it.mz.pojo.User;
import com.it.mz.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

@Controller
@RequestMapping("/")
public class IndexController {
    @Autowired
    UserService userService;

    @RequestMapping(value = "/")
    public String index(HttpServletRequest req, HttpSession session){
        Cookie[] cookies = req.getCookies();
        String[] cooks=null;
        if (cookies != null){
            for (int i = 0; i < cookies.length; i++) {
                Cookie c = cookies[i];
                String userCookie = c.getValue();
                cooks = userCookie.split("==");
                if (cooks.length==2){
                    String username=cooks[0];
                    String password=cooks[1];
                    User user = new User();
                    user.setUsername(username);
                    user.setPassword(password);
                    userService.autoLogin(user,req,session);
                }
            }
        }
        return "/phone/getPhones?url=index";
    }
}
