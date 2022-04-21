package com.it.mz.mapper;

import com.it.mz.pojo.Order;

import java.util.List;

public interface OrderMapper {
    void addOrder(Order order);

    List<Order> getOrderById(int id);

    void updateStatus(String order_id, int i);

    void deleteOrder(String order_id);

    void updatePrice(Order order);

    Order getOrderByOrderId(String order_id);
}
