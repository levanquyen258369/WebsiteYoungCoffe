package com.example.DoAnWebsite.services;

import com.example.DoAnWebsite.entities.UserRoles;
import com.example.DoAnWebsite.repositories.UserRoleRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UserRoleServiceImpl implements UserRoleService {
    @Autowired
    private UserRoleRepository userRoleRepository;
    @Override
    public List<UserRoles> getAll() {
        return userRoleRepository.findAll();
    }

    @Override
    public UserRoles getById(int id) {
        return userRoleRepository.getById(id);
    }

    @Override
    public UserRoles save(UserRoles userRoles) {
        return userRoleRepository.save(userRoles);
    }

    @Override
    public void deleteById(int id) {
        userRoleRepository.deleteById(id);
    }
}
