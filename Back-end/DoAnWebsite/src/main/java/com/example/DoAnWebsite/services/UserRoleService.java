package com.example.DoAnWebsite.services;

import com.example.DoAnWebsite.entities.UserRoles;

import java.util.List;

public interface UserRoleService {
    List<UserRoles> getAll();
    UserRoles getById (int id);
    UserRoles save (UserRoles userRoles);
    void deleteById (int id);
}
