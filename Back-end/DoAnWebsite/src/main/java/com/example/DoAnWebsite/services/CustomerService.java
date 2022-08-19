package com.example.DoAnWebsite.services;

import com.example.DoAnWebsite.entities.Customer;

import java.util.List;

public interface CustomerService {
    List<Customer> getAll();
    Customer getById(int id);
    Customer save(Customer c);
    void deleteById(int id);
}
