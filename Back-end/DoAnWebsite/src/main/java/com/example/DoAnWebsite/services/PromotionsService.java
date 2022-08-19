package com.example.DoAnWebsite.services;

import com.example.DoAnWebsite.entities.Promotions;

import java.util.List;

public interface PromotionsService {

    List<Promotions> getAll();
    Promotions getById(int id);
    Promotions save(Promotions p);
    void deleteById(int id);
}
