package com.example.DoAnWebsite.services;

import com.example.DoAnWebsite.entities.OrderDetail;
import com.example.DoAnWebsite.repositories.OrderDetailRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class OrderDetailServiceImp implements OrderDetailService{

    @Autowired
    private OrderDetailRepository orderDetailRepository;

    @Override
    public List<OrderDetail> getAll() {
        return orderDetailRepository.findAll();
    }



    @Override
    public OrderDetail getById(int id) {
        return orderDetailRepository.findById(id).get();
    }

    @Override
    public OrderDetail save(OrderDetail s) {
        return orderDetailRepository.save(s);
    }

    @Override
    public void deleteById(int id) {
        orderDetailRepository.deleteById(id);
    }
}
