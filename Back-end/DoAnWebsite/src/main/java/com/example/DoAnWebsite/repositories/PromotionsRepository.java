package com.example.DoAnWebsite.repositories;

import com.example.DoAnWebsite.entities.Promotions;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface PromotionsRepository extends JpaRepository<Promotions, Integer> {
}
