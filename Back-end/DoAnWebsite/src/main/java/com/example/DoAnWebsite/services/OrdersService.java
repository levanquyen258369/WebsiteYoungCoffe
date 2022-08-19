package com.example.DoAnWebsite.services;

import com.example.DoAnWebsite.entities.Customer;
import com.example.DoAnWebsite.entities.Orders;

import java.util.List;

public interface OrdersService {
    List<Orders> getAll();
    Orders getById(int id);
    Orders save(Orders s);
    void deleteById(int id);

}
