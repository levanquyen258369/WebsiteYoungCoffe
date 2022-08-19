package com.example.DoAnWebsite.controllers.admin;

import com.example.DoAnWebsite.entities.Product;
import com.example.DoAnWebsite.services.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping(value = "/api/productAdmin")
public class ProductAdminController {
    @Autowired
    private ProductService service;

    @GetMapping
    @CrossOrigin(origins = "*", allowedHeaders = "*", methods = RequestMethod.GET)
    public List<Product> listAll() {
        return service.getAll();

    }
   //tang dan
    @GetMapping(value = "/asc")
    @CrossOrigin(origins = "*", allowedHeaders = "*", methods = RequestMethod.GET)
    public List<Product> ascProduct() {
        return service.ascProduct();

    }

    //giam dan
    @GetMapping(value = "/desc")
    @CrossOrigin(origins = "*", allowedHeaders = "*", methods = RequestMethod.GET)
    public List<Product> descProduct() {
        return service.descProduct();

    }

    @GetMapping(value = "/{id}")
    @CrossOrigin(origins = "*", allowedHeaders = "*", methods = RequestMethod.GET)
    public Product findById(@PathVariable("id") String id) {
        return service.getById(id);
    }

    // them doi tuong moi
    @PostMapping(value = "/product")
    @CrossOrigin(origins = "*", allowedHeaders = "*", methods = RequestMethod.POST)
    public Product addProduct(@RequestBody Product product) {
        return service.save(product);
    }

    // Update doi tuong

    @PutMapping(value = "/{id}")
    @CrossOrigin(origins = "*", allowedHeaders = "*", methods = RequestMethod.PUT)
    public Product editProduct (@PathVariable("id") String id, @RequestBody Product model) {
        return  service.save(model);
    }

    // Xoa doi tuong
    @DeleteMapping(value = "/{id}")
    @CrossOrigin(origins = "*", allowedHeaders = "*", methods = RequestMethod.DELETE)
    public List<Product> removeProduct(@PathVariable("id") String id){
        service.deleteById(id);
        return listAll();
    }

    //goi san pham theo category
//    @GetMapping
//    @CrossOrigin(origins = "*", allowedHeaders = "*", methods = RequestMethod.GET)
//    public List<Product> getByCateId {
//        return service.;
//
//    }
}
