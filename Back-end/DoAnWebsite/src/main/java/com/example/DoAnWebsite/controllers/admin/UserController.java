package com.example.DoAnWebsite.controllers.admin;


import com.example.DoAnWebsite.entities.LoginRequest;
import com.example.DoAnWebsite.entities.LoginResponse;
//import com.example.DoAnWebsite.entities.UserDetail;
import com.example.DoAnWebsite.entities.Users;
import com.example.DoAnWebsite.services.UserService;
//import com.example.DoAnWebsite.utils.JWTUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
//import org.springframework.security.authentication.AuthenticationManager;
//import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
//import org.springframework.security.core.Authentication;
//import org.springframework.security.core.context.SecurityContextHolder;
//import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping(value = "/api/userAdmin")
public class UserController {
    @Autowired
    private UserService userService;
//
//    @Autowired
//    AuthenticationManager authenticationManager;

//    @Autowired
//    JWTUtil jwtUntil;

//    @PostMapping("/token")
//    @CrossOrigin(origins = "*", allowedHeaders = "*", methods = RequestMethod.POST)
//    public ResponseEntity<?> authenticateUser (@RequestBody LoginRequest loginRequest){
//        // Xác thực từ username và password
//        Authentication authentication = authenticationManager.authenticate(
//                new UsernamePasswordAuthenticationToken(
//                        //Truyền username và password
//                        loginRequest.getUserName(),
//                        loginRequest.getPassword()
//                )
//        );
//        // Nếu không xảy ra exception tức là thông tin hợp lệ
//        // Set thông tin authentication vào Security Context
//        SecurityContextHolder.getContext().setAuthentication(authentication); // kiểm tra lại mã token
//
//        // Lấy đối tượng UserDetail mà ta đã lưu ở trong context
//        UserDetail detail = (UserDetail) authentication.getPrincipal();
//        //Trả về jwt cho người dùng
//        String jwt = jwtUntil.generateToken(detail); // Dựa vào thông tin đối tượng sẽ lấy ra token
//        return  ResponseEntity.ok(new LoginResponse(jwt));
//    }

    //////////////////////
    @GetMapping
    @CrossOrigin(origins = "*", allowedHeaders = "*", methods = RequestMethod.GET)
    public List<Users> getAll(){
        return userService.getAll();
    }
    //
    @GetMapping(value = "/{id}")
    @CrossOrigin(origins = "*", allowedHeaders = "*", methods = RequestMethod.GET)
    public Users getById(@PathVariable("id") int id){
        return userService.getById(id);
    }
    //
    @PostMapping(value = "/user")
    @CrossOrigin(origins = "*", allowedHeaders = "*", methods = RequestMethod.POST)
    public Users add(@RequestBody Users users) {
//        BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();
//        String encodedPassword = encoder.encode(users.getPassword());
//        users.setPassword(encodedPassword);
        return userService.save(users);
    }
    //
    @PutMapping(value = "/{id}")
    @CrossOrigin(origins = "*", allowedHeaders = "*", methods = RequestMethod.PUT)
    public Users edit(@PathVariable("id") int id, @RequestBody Users users){
        return  userService.save(users);

    }
    //
    @DeleteMapping(value = "/{id}")
    @CrossOrigin(origins = "*", allowedHeaders = "*", methods = RequestMethod.DELETE)
    public List<Users> delete(@PathVariable("id") int id){
        userService.deleteById(id);
        return  getAll();
    }


}
