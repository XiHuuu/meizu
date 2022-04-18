package com.it.mz.controller;

import com.it.mz.pojo.Phone;
import com.it.mz.service.PhoneService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
@RequestMapping("phone")
public class PhoneController {
    @Autowired
    PhoneService phoneService;

    @RequestMapping("getPhones")
    public String getPhones(Model model, String url, HttpServletRequest req){
        List<Phone> list = phoneService.getPhones();
        req.getSession().setAttribute("list",list);
        return "/" + url +".jsp";
    }

    @RequestMapping("getPhoneById")
    public String getPhoneById(int id,Model model){
        Phone phone = phoneService.getPhoneById(id);
        model.addAttribute("phone",phone);
        List<Phone> list = phoneService.getPhones();
        model.addAttribute("list",list);
        return "/details.jsp";
    }
}
