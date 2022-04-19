package com.it.mz.service;

import com.it.mz.pojo.Cart;
import com.it.mz.pojo.Order;

import java.util.List;

public interface OrderService {
    String addOrder(Cart cart, int userId);

    List<Order> getOrderById(int id);

    void updateStatus(String order_id, int status);
}
