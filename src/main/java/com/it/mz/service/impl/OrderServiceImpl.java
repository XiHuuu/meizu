package com.it.mz.service.impl;

import com.it.mz.mapper.OrderItemMapper;
import com.it.mz.mapper.OrderMapper;
import com.it.mz.pojo.Cart;
import com.it.mz.pojo.CartItem;
import com.it.mz.pojo.Order;
import com.it.mz.pojo.OrderItem;
import com.it.mz.service.OrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.text.DateFormat;
import java.util.Date;
import java.util.List;

@Service
public class OrderServiceImpl implements OrderService {
    @Autowired
    private OrderMapper orderMapper;
    @Autowired
    private OrderItemMapper orderItemMapper;

    @Override
    public String addOrder(Cart cart, int userId) {
        String orderId = System.currentTimeMillis() + "" + userId;
        Order order = new Order(orderId, DateFormat.getDateInstance().format(new Date()), cart.getTotalPrice(), 0, userId);
        orderMapper.addOrder(order);
        List<CartItem> list = cart.getList();
        for (int i = 0; i < list.size(); i++) {
            CartItem cartItem = list.get(i);
            OrderItem orderItem = new OrderItem(null, cartItem.getPhone().getName(), cartItem.getCount(), cartItem.getPhone().getPrice(), cartItem.getSubTotal(), orderId);
            orderItemMapper.addOrderItem(orderItem);
        }
        cart.clearCart();
        return orderId;
    }

    @Override
    public List<Order> getOrderById(int id) {
        return orderMapper.getOrderById(id);
    }

    @Override
    public void updateStatus(String order_id, int status) {
        orderMapper.updateStatus(order_id, status);
    }
}
