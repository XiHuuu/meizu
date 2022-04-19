package com.it.mz.mapper;

import com.it.mz.pojo.Order;

import java.util.List;

public interface OrderMapper {
    void addOrder(Order order);

    List<Order> getOrderById(int id);

    void updateStatus(String order_id, int i);
}
