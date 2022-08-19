package com.example.DoAnWebsite.controllers.admin;

import com.example.DoAnWebsite.entities.Cart;
import com.example.DoAnWebsite.services.CartService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping(value = "/api/cartAdmin")
public class CartAdminController {
    @Autowired
    private CartService service;

    //Lay ra toan bo
    @GetMapping
    @CrossOrigin(origins = "*", allowedHeaders = "*", methods = RequestMethod.GET)
    public List<Cart> listAll(){
        return service.getAll();
    }

    @GetMapping(value = "/{id}")
    @CrossOrigin(origins = "*", allowedHeaders = "*", methods = RequestMethod.GET)
    public Cart findById(@PathVariable("id") int id){
        return service.getById(id);
    }
    //Tao mot doi tuong moi
    @PostMapping
    @CrossOrigin(origins = "*", allowedHeaders = "*", methods = RequestMethod.POST)
    public Cart addCart(@RequestBody Cart cart){
        return service.save(cart);
    }

    //Update doi tuong moi2
    @PutMapping(value = "/{id}")
    @CrossOrigin(origins = "*", allowedHeaders = "*", methods = RequestMethod.PUT)
    public Cart editCart(@PathVariable("id") int id,@RequestBody Cart model){
        return service.save(model);
    }

    //Xoa doi tuong
    @DeleteMapping(value = "/{id}")
    @CrossOrigin(origins = "*", allowedHeaders = "*", methods = RequestMethod.DELETE)
    public String removeCart(@PathVariable("id") int id) {
        service.deleteById(id);
        return "Delete!";
    }
}
