package com.example.DoAnWebsite.services;

import com.example.DoAnWebsite.entities.Category;
import com.example.DoAnWebsite.repositories.CategoriesRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class CategoryServiceImp implements CategoryService {
    @Autowired
    private CategoriesRepository categoriesRepository;
    @Override
    public List<Category> getAll() {
        return categoriesRepository.findAll();
    }

    @Override
    public Category getById(int id) {
        return categoriesRepository.findById(id).get();
    }

    @Override
    public Category save(Category c) {

        return categoriesRepository.save(c);
    }

    @Override
    public void deleteById(int id) {
        categoriesRepository.deleteById(id);
    }
}
