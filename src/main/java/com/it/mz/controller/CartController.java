package com.it.mz.controller;

import com.it.mz.pojo.Cart;
import com.it.mz.pojo.CartItem;
import com.it.mz.pojo.Phone;
import com.it.mz.pojo.User;
import com.it.mz.service.PhoneService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
@RequestMapping("cart")
public class CartController {
    @Autowired
    PhoneService phoneService;

    @RequestMapping("addCart")
    public String addCart(int id, HttpServletRequest req,Model model){
        User user = (User)req.getSession().getAttribute("user");
        if (user == null){
            return "redirect:/login.jsp";
        }
        Cart cart = (Cart)req.getSession().getAttribute("cart");
        if (cart == null){
            cart = new Cart();
            req.getSession().setAttribute("cart",cart);
        }
        Phone phone = phoneService.getPhoneById(id);
        CartItem cartItem = new CartItem();
        cartItem.setPhone(phone);
        cart.addCart(cartItem);
        return "/cart.jsp";
    }

    @RequestMapping("deleteCartItem")
    public String deleteCartItem(int id,HttpServletRequest req,Model model){
        Cart cart = (Cart)req.getSession().getAttribute("cart");
        List<CartItem> list = cart.getList();
        for (int i=0;i <list.size();i++){
            if (list.get(i).getPhone().getId() == id){
                cart.remove(i);
            }
        }
        return "/cart.jsp";
    }

    @RequestMapping("clearCart")
    public String clearCart(HttpServletRequest req,Model model){
        Cart cart = (Cart)req.getSession().getAttribute("cart");
        cart.clearCart();
        return "/cart.jsp";
    }

    @RequestMapping("updateCount")
    public String updateCount(HttpServletRequest req,Model model,@RequestParam(value = "count",defaultValue = "1")int count, int id){
        Cart cart = (Cart)req.getSession().getAttribute("cart");
        cart.updateCount(id,count);
        return "/cart.jsp";
    }

}
