package com.example.DoAnWebsite.controllers.admin;


import com.example.DoAnWebsite.entities.OrderDetail;
import com.example.DoAnWebsite.services.OrderDetailService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping(value = "/api/orderDetailAdmin")
public class OrderDetailAdminController {

    @Autowired
    private OrderDetailService service;

    //Lay ra toan bo
    @GetMapping
    @CrossOrigin(origins = "*", allowedHeaders = "*", methods = RequestMethod.GET)
    public List<OrderDetail> listAll(){
        return service.getAll();
    }

    @GetMapping(value = "/{id}")
    @CrossOrigin(origins = "*", allowedHeaders = "*", methods = RequestMethod.GET)
    public OrderDetail findById(@PathVariable("id") int id){
        return service.getById(id);
    }

    //Tao ra mot doi tuong moi
    @PostMapping(value = "/details")
    @CrossOrigin(origins = "*", allowedHeaders = "*", methods = RequestMethod.POST)
    public OrderDetail addOrderDetail(@RequestBody OrderDetail orderDetail){
        return service.save(orderDetail);
    }

    //Update doi tuong
    @PutMapping(value = "/{id}")
    @CrossOrigin(origins = "*", allowedHeaders = "*", methods = RequestMethod.PUT)
    public OrderDetail editOrderDetail(@PathVariable("id") int id, @RequestBody OrderDetail model){
        return service.save(model);
    }

    //XOa 1 doi tuong

    @DeleteMapping(value = "/{id}")
    @CrossOrigin(origins = "*", allowedHeaders = "*", methods = RequestMethod.DELETE)
    public List<OrderDetail> removeOrderDetail(@PathVariable("id") int id){
        service.deleteById(id);
        return listAll();
    }

}
