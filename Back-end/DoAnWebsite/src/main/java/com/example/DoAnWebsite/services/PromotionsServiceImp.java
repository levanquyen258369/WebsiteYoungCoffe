package com.example.DoAnWebsite.services;

import com.example.DoAnWebsite.entities.Promotions;
import com.example.DoAnWebsite.repositories.PromotionsRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class PromotionsServiceImp implements PromotionsService{

    @Autowired
    private PromotionsRepository promotionsRepository;

    @Override
    public List<Promotions> getAll() {
        return promotionsRepository.findAll();
    }

    @Override
    public Promotions getById(int id) {
        return promotionsRepository.findById(id).get();
    }

    @Override
    public Promotions save(Promotions p) {
        return promotionsRepository.save(p);
    }

    @Override
    public void deleteById(int id) {
        promotionsRepository.deleteById(id);
    }
}
