package com.example.DoAnWebsite.services;

import com.example.DoAnWebsite.entities.OrderDetail;

import java.util.List;

public interface OrderDetailService {
    List<OrderDetail> getAll();
    OrderDetail getById(int id);
    OrderDetail save(OrderDetail s);
    void deleteById(int id);
}
