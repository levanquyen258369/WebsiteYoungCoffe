package com.example.DoAnWebsite.services;

import com.example.DoAnWebsite.entities.FeedBack;

import java.util.List;

public interface FeedBackService {
    List<FeedBack> getAll();
    FeedBack getById(int id);
    FeedBack save(FeedBack s);
    void deleteById(int id);
}
