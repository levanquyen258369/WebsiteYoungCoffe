package com.example.DoAnWebsite.repositories;

import com.example.DoAnWebsite.entities.Cart;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

@Repository
public interface CartRepository extends JpaRepository<Cart, Integer> {
}
