package com.example.DoAnWebsite.services;

import com.example.DoAnWebsite.entities.Orders;
import com.example.DoAnWebsite.repositories.OrdersRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class OrdersServiceImp implements OrdersService {
    @Autowired
    private OrdersRepository ordersRepository;

    @Override
    public List<Orders> getAll() {
        return ordersRepository.findAll();
    }

    @Override
    public Orders getById(int id) {
        return ordersRepository.findById(id).get();
    }

    @Override
    public Orders save(Orders s) {
        return ordersRepository.save(s);
    }

    @Override
    public void deleteById(int id) {
        ordersRepository.deleteById(id);
    }
}
