package com.it.mz.controller;

import com.it.mz.pojo.Cart;
import com.it.mz.pojo.Order;
import com.it.mz.pojo.User;
import com.it.mz.service.OrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
@RequestMapping("order")
public class OrderController {
    @Autowired
    private OrderService orderService;

    @RequestMapping("addOrder")
    public String addOrder(HttpServletRequest req, Model model){
        Cart cart = (Cart)req.getSession().getAttribute("cart");
        User user = (User)req.getSession().getAttribute("user");
        if (user == null){
            return "redirect:/login.jsp";
        }
        int id = user.getId();
        //System.out.println(user);
        String orderId = orderService.addOrder(cart,id);
        model.addAttribute("orderId",orderId);
        return "/orderId.jsp";
    }

    @RequestMapping("getOrders")
    public String getOrders(HttpServletRequest req,Model model){
        User user = (User)req.getSession().getAttribute("user");
        int id = user.getId();
        List<Order> list = orderService.getOrderById(id);
        model.addAttribute("orders",list);
        return "/order.jsp";
    }

    @RequestMapping("payment")
    public String payment(HttpServletRequest req,String order_id){
        orderService.updateStatus(order_id,1);
        return "redirect:/order/getOrders";
    }
}
