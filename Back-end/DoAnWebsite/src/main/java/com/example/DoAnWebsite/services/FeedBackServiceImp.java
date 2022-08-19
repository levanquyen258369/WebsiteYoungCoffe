package com.example.DoAnWebsite.services;

import com.example.DoAnWebsite.entities.FeedBack;
import com.example.DoAnWebsite.repositories.FeedBackRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class FeedBackServiceImp implements FeedBackService{

    @Autowired
    private FeedBackRepository feedBackRepository;
    @Override
    public List<FeedBack> getAll() {
        return feedBackRepository.findAll();
    }

    @Override
    public FeedBack getById(int id) {
        return feedBackRepository.findById(id).get();
    }

    @Override
    public FeedBack save(FeedBack s) {
        return feedBackRepository.save(s);
    }

    @Override
    public void deleteById(int id) {
        feedBackRepository.deleteById(id);
    }
}
