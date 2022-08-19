package com.example.DoAnWebsite.services;

import com.example.DoAnWebsite.entities.Category;

import java.util.List;

public interface CategoryService {
    List<Category> getAll();
    Category getById(int id);
    Category save(Category c);
    void deleteById(int id);
}
