package com.example.DoAnWebsite.services;


import com.example.DoAnWebsite.entities.Product;

import java.util.List;

public interface ProductService {
    List<Product> getAll();
    Product getById(String id);
    Product save(Product p);
    void deleteById(String id);

    List<Product> ascProduct();
    List<Product> descProduct();
}
