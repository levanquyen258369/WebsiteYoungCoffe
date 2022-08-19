package com.example.DoAnWebsite.controllers.admin;

import com.example.DoAnWebsite.entities.Category;
import com.example.DoAnWebsite.services.CategoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping(value = "/api/categoryAdmin")
public class CategoryAdminController {

//    /api/categoryAdmin/category
    @Autowired
    private CategoryService service;
    //Lay ra toan bo
    @GetMapping
    @CrossOrigin(origins = "*", allowedHeaders = "*", methods = RequestMethod.GET)
    public List<Category> listAll(){
        return  service.getAll();
    }

    @GetMapping(value = "/{id}")
    @CrossOrigin(origins = "*",allowedHeaders = "*",methods = RequestMethod.GET)
    public Category findById(@PathVariable("id") int id){
        return service.getById(id);
    }

    //Tao 1 doi tuong moi
    @PostMapping(value = "/category")
    @CrossOrigin(origins = "*",allowedHeaders = "*",methods = RequestMethod.POST)
    public Category addCategory(@RequestBody Category category){
        return  service.save(category);
    }

    //Update doi tuong
    @PutMapping(value = "/{id}")
    @CrossOrigin(origins = "*", allowedHeaders = "*", methods = RequestMethod.PUT)
    public Category editCategory(@PathVariable("id") int id,@RequestBody Category model ){
        return service.save(model);
    }

    //Xoa doi tuong
    @DeleteMapping(value = "/{id}")
    @CrossOrigin(origins = "*", allowedHeaders = "*", methods = RequestMethod.DELETE)
    public List<Category> removeCategory (@PathVariable("id") int id){
        service.deleteById(id);
        return listAll();
    }
}
