package com.example.DoAnWebsite.services;

import com.example.DoAnWebsite.entities.Customer;
import com.example.DoAnWebsite.repositories.CustomerRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CustomerServiceImp implements CustomerService {
    @Autowired
    private CustomerRepository customerRepository;

    @Override
    public List<Customer> getAll() {
        return customerRepository.findAll();
    }

    @Override
    public Customer getById(int id) {
        return customerRepository.findById(id).get();
    }

    @Override
    public Customer save(Customer c) {
        return customerRepository.save(c);
    }

    @Override
    public void deleteById(int id) {
        customerRepository.deleteById(id);
    }

}
