package com.it.mz.controller;

import com.it.mz.pojo.Phone;
import com.it.mz.service.PhoneService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.UUID;

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

    @RequestMapping("toUpdate")
    public String toUpdate(Model model,int id){
        Phone phone = phoneService.getPhoneById(id);
        model.addAttribute("phone",phone);
        return "/phone-update.jsp";
    }

    @RequestMapping("update")
    public String update(Phone phone, MultipartFile uploadFile, HttpServletRequest request) throws IOException {
        //定义文件名
        String fileName = "";
//1.获取原始文件名
        String uploadFileName = uploadFile.getOriginalFilename();
//2.截取文件扩展名
        String extendName = uploadFileName.substring(uploadFileName.lastIndexOf(".")+1, uploadFileName.length());
//3.把文件加上随机数，防止文件重复
        String uuid = UUID.randomUUID().toString().replace("-", "").toUpperCase();
//4.判断是否输入了文件名
        if(!StringUtils.isEmpty(phone.getName())) {
            fileName = uuid+"_"+phone.getName()+"."+extendName;
        }else {
            fileName = uuid+"_"+uploadFileName;
        }
        //fileName = new String(fileName.getBytes("iso-8859-1"),"UTF-8");
        System.out.println(fileName);
//2.获取文件路径
        ServletContext context = request.getServletContext();
        String basePath = context.getRealPath("/img/img4");
//3.解决同一文件夹中文件过多问题
        //String datePath = new SimpleDateFormat("yyyy-MM-dd").format(new Date());
//4.判断路径是否存在
        File file = new File(basePath);
        if(!file.exists()) {
            file.mkdirs();
        }
//5.使用 MulitpartFile 接口中方法，把上传的文件写到指定位置
        uploadFile.transferTo(new File(file,fileName));
        phone.setImg(fileName);
        System.out.println(phone);
        phoneService.updatePhone(phone);
        return "/phone/manage";
    }

    @RequestMapping("manage")
    public String manage(Model model){
        List<Phone> list = phoneService.getPhones();
        model.addAttribute("list",list);
        return "/phone-manage.jsp";
    }

    @RequestMapping("delete")
    public String delete(int id){
        phoneService.delete(id);
        return "/phone/manage";
    }

    @RequestMapping("toAdd")
    public String toAdd(){
        return "/phone-add.jsp";
    }

    @RequestMapping("add")
    public String add(Phone phone,MultipartFile uploadFile, HttpServletRequest request) throws IOException {
        //定义文件名
        String fileName = "";
//1.获取原始文件名
        String uploadFileName = uploadFile.getOriginalFilename();
//2.截取文件扩展名
        String extendName = uploadFileName.substring(uploadFileName.lastIndexOf(".")+1, uploadFileName.length());
//3.把文件加上随机数，防止文件重复
        String uuid = UUID.randomUUID().toString().replace("-", "").toUpperCase();
//4.判断是否输入了文件名
        if(!StringUtils.isEmpty(phone.getName())) {
            fileName = uuid+"_"+phone.getName()+"."+extendName;
        }else {
            fileName = uuid+"_"+uploadFileName;
        }
        //fileName = new String(fileName.getBytes("iso-8859-1"),"UTF-8");
        System.out.println(fileName);
//2.获取文件路径
        ServletContext context = request.getServletContext();
        String basePath = context.getRealPath("/img/img4");
//3.解决同一文件夹中文件过多问题
        //String datePath = new SimpleDateFormat("yyyy-MM-dd").format(new Date());
//4.判断路径是否存在
        File file = new File(basePath);
        if(!file.exists()) {
            file.mkdirs();
        }
//5.使用 MulitpartFile 接口中方法，把上传的文件写到指定位置
        uploadFile.transferTo(new File(file,fileName));
        phone.setImg(fileName);
        System.out.println(phone);
        phoneService.add(phone);
        return "/phone/manage";
    }
}
