//package com.example.DoAnWebsite.controllers.user;
//
//
//import com.example.DoAnWebsite.entities.LoginRequest;
//import com.example.DoAnWebsite.entities.UserDetail;
//import com.example.DoAnWebsite.utils.JWTUtils;
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.http.ResponseEntity;
//import org.springframework.security.authentication.AuthenticationManager;
//import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
//import org.springframework.security.core.Authentication;
//import org.springframework.security.core.context.SecurityContextHolder;
//import org.springframework.web.bind.annotation.*;
//
//@RestController
//
//public class UsersController {
//    @Autowired
//    AuthenticationManager authenticationManager;
//
//    @Autowired
//    JWTUtils jwtUntil;
//
//    @PostMapping("/api/token")
//    public ResponseEntity<?> authenticateUser(@RequestBody LoginRequest loginRequest) {
//
//        // Xác thực từ username và password.
//        Authentication authentication = authenticationManager.authenticate(
//                new UsernamePasswordAuthenticationToken(
//                        loginRequest.getUserName(),
//                        loginRequest.getPassword()
//                )
//        );
//
//        // Nếu không xảy ra exception tức là thông tin hợp lệ
//        // Set thông tin authentication vào Security Context
//        SecurityContextHolder.getContext().setAuthentication(authentication);
//
//        UserDetail detail = (UserDetail) authentication.getPrincipal();
//
//        // Trả về jwt cho người dùng.
//        String jwt = jwtUntil.generateToken(detail);
//        return ResponseEntity.ok(jwt);
//    }
//    }
//
