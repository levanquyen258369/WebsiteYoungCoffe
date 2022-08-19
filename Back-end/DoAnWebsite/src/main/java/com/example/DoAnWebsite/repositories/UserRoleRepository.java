package com.example.DoAnWebsite.repositories;

import com.example.DoAnWebsite.entities.UserRoles;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface UserRoleRepository extends JpaRepository<UserRoles, Integer> {
}
