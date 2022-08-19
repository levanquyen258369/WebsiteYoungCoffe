package com.example.DoAnWebsite.services;

import com.example.DoAnWebsite.entities.Product;
import com.example.DoAnWebsite.repositories.ProductRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class ProductServiceImp implements ProductService{
    @Autowired
    private ProductRepository productRepository;


    @Override
    public List<Product> getAll() {
        return productRepository.findAll();
    }

    @Override
    public Product getById(String id) {
        return productRepository.findById(id).get();
    }


    @Override
    public Product save(Product p) {
        return productRepository.save(p);
    }


    @Override
    public void deleteById(String id) {
        productRepository.deleteById(id);
    }

    @Override
    public List<Product> ascProduct() {
        return productRepository.ascProduct();
    }

    @Override
    public List<Product> descProduct() {
        return productRepository.descProduct();
    }
}
