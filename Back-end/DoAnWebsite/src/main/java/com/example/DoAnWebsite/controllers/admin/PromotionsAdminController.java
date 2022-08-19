package com.example.DoAnWebsite.controllers.admin;

import com.example.DoAnWebsite.entities.Promotions;
import com.example.DoAnWebsite.services.PromotionsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping(value = "/api/promotionsAdmin")
public class PromotionsAdminController {
    @Autowired
    private PromotionsService service;

    //Lay ra toan bo
    @GetMapping
    @CrossOrigin(origins = "*", allowedHeaders = "*", methods = RequestMethod.GET)
    public List<Promotions> listAll(){
        return service.getAll();
    }
    @GetMapping(value = "/{id}")
    @CrossOrigin(origins = "*", allowedHeaders = "*", methods = RequestMethod.GET)
    public Promotions findById(@PathVariable("id") int id){
        return service.getById(id);
    }
    //Tao 1 doi tuong moi
    @PostMapping(value = "/{promotion}")
    @CrossOrigin(origins = "*", allowedHeaders = "*", methods = RequestMethod.POST)
    public Promotions addPromotions(@RequestBody Promotions promotions){
        return service.save(promotions);
    }

    //Update doi tuong
    @PutMapping(value = "/{id}")
    @CrossOrigin(origins = "*", allowedHeaders = "*", methods = RequestMethod.PUT)
    public Promotions editPromotions(@PathVariable("id") int id, @RequestBody Promotions model){
        return service.save(model);

    }

    //Xoa doi tuong
    @DeleteMapping(value = "/{id}")
    @CrossOrigin(origins = "*", allowedHeaders = "*", methods = RequestMethod.DELETE)
    public String removePromotions(@PathVariable("id") int id){
        service.deleteById(id);
        return "Delete!";
    }
}
