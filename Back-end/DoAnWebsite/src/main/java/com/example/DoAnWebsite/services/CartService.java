package com.example.DoAnWebsite.services;

import com.example.DoAnWebsite.entities.Cart;

import java.util.List;

public interface CartService {

    List<Cart> getAll();
    Cart getById(int id);
    Cart save(Cart c);
    void deleteById(int id);
}
