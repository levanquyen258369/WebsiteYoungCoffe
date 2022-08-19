package com.example.DoAnWebsite.services;

import com.example.DoAnWebsite.entities.Cart;
import com.example.DoAnWebsite.repositories.CartRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CartServiceImp implements CartService {

    @Autowired
    private CartRepository cartRepository;

    @Override
    public List<Cart> getAll() {
        return cartRepository.findAll();
    }

    @Override
    public Cart getById(int id) {
        return cartRepository.findById(id).get();
    }

    @Override
    public Cart save(Cart c) {
        return cartRepository.save(c);
    }

    @Override
    public void deleteById(int id) {
        cartRepository.deleteById(id);
    }
}
