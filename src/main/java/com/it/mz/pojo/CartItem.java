package com.it.mz.pojo;

public class CartItem {
    private Phone phone;
    private int count = 1;
    private double subTotal;

    public Phone getPhone() {
        return phone;
    }

    public void setPhone(Phone phone) {
        this.phone = phone;
    }

    public int getCount() {
        return count;
    }

    public void setCount(int count) {
        this.count = count;
    }

    public double getSubTotal() {
        return subTotal;
    }

    public void setSubTotal(double subTotal) {
        this.subTotal = subTotal;
    }

    @Override
    public String toString() {
        return "CartItem{" +
                "phone=" + phone +
                ", count=" + count +
                ", subTotal=" + subTotal +
                '}';
    }
}
