package com.example.DoAnWebsite.repositories;

import com.example.DoAnWebsite.entities.Users;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface UserRepository extends JpaRepository<Users, Integer> {
    Users findByUserName(String userName);

}
