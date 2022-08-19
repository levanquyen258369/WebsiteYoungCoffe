package com.example.DoAnWebsite.controllers.admin;

import com.example.DoAnWebsite.entities.Customer;
import com.example.DoAnWebsite.entities.FeedBack;
import com.example.DoAnWebsite.services.FeedBackService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping(value = "/api/feedBackAdmin")


public class DeedBackAdminController {
    @Autowired
    private FeedBackService service;

    //Lay ra toan bo
    @GetMapping
    @CrossOrigin(origins = "*", allowedHeaders = "*", methods = RequestMethod.GET)
    public List<FeedBack> listAll(){
        return service.getAll();
    }

    @GetMapping(value = "/{id}")
    @CrossOrigin(origins = "*", allowedHeaders = "*", methods = RequestMethod.GET)
    public FeedBack findById(@PathVariable("id") int id) {
        return service.getById(id);
    }

    //Tao mot doi tuong moi
    @PostMapping
    @CrossOrigin(origins = "*", allowedHeaders = "*", methods = RequestMethod.POST)
    public FeedBack addFeedBack(@RequestBody FeedBack feedBack){
        return service.save(feedBack);
    }
    //Update doi tuong
    @PutMapping(value = "/{id}")
    @CrossOrigin(origins = "*", allowedHeaders = "*", methods = RequestMethod.PUT)
    public FeedBack editFeedBack(@PathVariable("id") int id, @RequestBody FeedBack model){
        return service.save(model);
    }
    //Xoa doi tuong
    @DeleteMapping(value = "/{id}")
    @CrossOrigin(origins = "*", allowedHeaders = "*", methods = RequestMethod.DELETE)
    public String removeFeedBack(@PathVariable("id") int id){
        service.deleteById(id);
        return "Delete!";
    }

}
