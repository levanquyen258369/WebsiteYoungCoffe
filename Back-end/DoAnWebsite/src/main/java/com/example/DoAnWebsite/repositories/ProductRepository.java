package com.example.DoAnWebsite.repositories;

import com.example.DoAnWebsite.entities.Product;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface ProductRepository extends JpaRepository<Product, String> {

    @Query(value = "SELECT * FROM Product p ORDER BY p.price",  nativeQuery = true)
    List<Product> ascProduct();
    @Query(value = "SELECT * FROM Product p ORDER BY p.price desc",  nativeQuery = true)
    List<Product> descProduct();
}
