package com.example.DoAnWebsite.controllers.admin;


import com.example.DoAnWebsite.entities.Orders;
import com.example.DoAnWebsite.services.OrdersService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping(value = "/api/ordersAdmin")
public class OrdersAdminController {

    @Autowired
    private OrdersService service;

    //Lay ra toan bo
    @GetMapping
    @CrossOrigin(origins = "*", allowedHeaders = "*", methods = RequestMethod.GET)
    public List<Orders> listAll(){
        return service.getAll();
    }

    @GetMapping(value = "/{id}")
    @CrossOrigin(origins = "*", allowedHeaders = "*", methods = RequestMethod.GET)
    public Orders findById(@PathVariable("id") int id){
        return service.getById(id);
    }
    //Tao 1 doi tuong moi
    @PostMapping(value = "/orders")
    @CrossOrigin(origins = "*", allowedHeaders = "*", methods = RequestMethod.POST)
    public Orders addOrders(@RequestBody Orders orders){
        return service.save(orders);
    }

    //Update doi tuong
    @PutMapping(value = "/{id}")
    @CrossOrigin(origins = "*", allowedHeaders = "*", methods = RequestMethod.PUT)
    public Orders editOrders(@PathVariable("id") int id, @RequestBody Orders model){
        return service.save(model);
    }

    //Xoa doi tuong
    @DeleteMapping(value = "/{id}")
    @CrossOrigin(origins = "*", allowedHeaders = "*", methods = RequestMethod.DELETE)
    public  String removeOrders(@PathVariable("id") int id){
        service.deleteById(id);
        return "Delete!";
    }
}
