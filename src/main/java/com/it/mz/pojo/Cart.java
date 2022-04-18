package com.it.mz.pojo;

import java.util.ArrayList;
import java.util.List;

public class Cart {
    private double totalPrice;
    private int totalCount;
    private List<CartItem> list = new ArrayList<>();

    public Cart() {
    }

    public Cart(double totalPrice, List<CartItem> list) {
        this.totalPrice = totalPrice;
        this.list = list;
    }

    public Cart(double totalPrice, int totalCount, List<CartItem> list) {
        this.totalPrice = totalPrice;
        this.totalCount = totalCount;
        this.list = list;
    }

    public double getTotalPrice() {
        double temp = 0;
        for (CartItem cartItem:list){
            temp += cartItem.getSubTotal();
        }
        this.totalPrice = temp;
        return totalPrice;
    }

    public void setTotalPrice(double totalPrice) {
        this.totalPrice = totalPrice;
    }

    public List<CartItem> getList() {
        return list;
    }

    public void setList(List<CartItem> list) {
        this.list = list;
    }

    public int getTotalCount() {
        int totalCount = 0;
        for (CartItem cartItem:list){
            totalCount += cartItem.getCount();
        }
        return totalCount;
    }

    public void setTotalCount(int totalCount) {
        this.totalCount = totalCount;
    }

    public void addCart(CartItem cartItem){
        for (CartItem item:list){
            if (item.getPhone().getId() == cartItem.getPhone().getId()){
                item.setCount(item.getCount()+1);
                item.setSubTotal(item.getCount()*item.getPhone().getPrice());
                return;
            }
        }
        cartItem.setSubTotal(cartItem.getCount()*cartItem.getPhone().getPrice());
        list.add(cartItem);
    }

    public void clearCart(){
        list.clear();
    }

    public void remove(int index){
        list.remove(index);
    }

    public void updateCount(int id,int count){
//        for (int i = 0; i < list.size(); i++) {
//            if (list.get(i).getPhone().getId() == id){
//                list.get(i).setCount(count);
//                list.get(i).setSubTotal(list.get(i).getPhone().getPrice()*list.get(i).getCount());
//            }
//        }
        for (int i = 0; i < list.size(); i++) {
            if (list.get(i).getPhone().getId() == id){
                list.get(i).setCount(count);
                list.get(i).setSubTotal(list.get(i).getPhone().getPrice()*list.get(i).getCount());
            }
        }

    }

    @Override
    public String toString() {
        return "Cart{" +
                "totalPrice=" + totalPrice +
                ", totalCount=" + totalCount +
                ", list=" + list +
                '}';
    }
}
