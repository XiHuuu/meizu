package com.it.mz.service;

import com.it.mz.pojo.Cart;
import com.it.mz.pojo.Order;
import com.it.mz.pojo.OrderItem;

import java.util.List;

public interface OrderService {
    String addOrder(Cart cart, int userId);

    List<Order> getOrderById(int id);

    void updateStatus(String order_id, int status);

    void deleteOrder(String order_id);

    List<OrderItem> getOrderItems(String order_id);

    void deleteOrderItemById(int id);

    void updatePrice(Order order);

    Order getOrderByOrderId(String order_id);
}
