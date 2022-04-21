package com.it.mz.mapper;

import com.it.mz.pojo.OrderItem;

import java.util.List;

public interface OrderItemMapper {
    void addOrderItem(OrderItem orderItem);

    void deleteOrderItem(String order_id);

    List<OrderItem> getOrderItems(String order_id);

    void deleteOrderItemById(int id);
}
