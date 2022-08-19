package com.example.DoAnWebsite.repositories;

import com.example.DoAnWebsite.entities.FeedBack;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface FeedBackRepository extends JpaRepository<FeedBack, Integer> {
}
