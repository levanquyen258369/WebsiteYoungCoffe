package com.example.DoAnWebsite.services;

import com.example.DoAnWebsite.entities.Users;

import java.util.List;
//import org.springframework.security.core.userdetails.UserDetails;
public interface UserService {
    List<Users> getAll();
    Users getById (int id);
    Users save (Users users);
    void deleteById(int id);
    // Thêm phương thức sử dụng khi muốn load userDetail theo ID,
    // dùng nếu ta lưu trong TOKEN là userId chứ không phải userName
//    UserDetails loadUserById(int id);
}
