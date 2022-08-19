package com.example.DoAnWebsite.controllers.admin;


import com.example.DoAnWebsite.entities.UserRoles;
import com.example.DoAnWebsite.services.UserRoleService;
import com.example.DoAnWebsite.services.UserRoleServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping(value = "/api/userRoleAdmin")
public class UserRoleController {
    @Autowired
    private UserRoleService service;

    @GetMapping
    @CrossOrigin(origins = "*", allowedHeaders = "*", methods = RequestMethod.GET)
    public List<UserRoles> getAll(){
        return service.getAll();
    }

    @GetMapping(value = "/{id}")
    @CrossOrigin(origins = "*", allowedHeaders = "*", methods = RequestMethod.GET)
    public UserRoles getById(@PathVariable("id") int id) {
        return service.getById(id);
    }

    @PostMapping(value = "/userRole")
    @CrossOrigin(origins = "*", allowedHeaders = "*", methods = RequestMethod.POST)
    public UserRoles add(@RequestBody UserRoles userRole) {
        return service.save(userRole);
    }

    @PutMapping(value = "/{id}")
    @CrossOrigin(origins = "*", allowedHeaders = "*", methods = RequestMethod.PUT)
    public UserRoles edit(@PathVariable("id") int id, @RequestBody UserRoles userRole) {
        return service.save(userRole);
    }

    @DeleteMapping(value = "/{id}")
    @CrossOrigin(origins = "*", allowedHeaders = "*", methods = RequestMethod.DELETE)
    public String delete(@PathVariable("id") int id) {
        service.deleteById(id);
        return "Xoa khach hang co ID = "+id+" thanh cong!";
    }

}
