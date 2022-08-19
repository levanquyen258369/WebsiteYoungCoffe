package com.example.DoAnWebsite.entities;

import com.fasterxml.jackson.annotation.JsonIgnore;

import javax.persistence.*;
import java.util.List;

@Entity
@Table(name = "Category")
public class Category {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column (name = "categoryId")
    private int categoryId;
    @Column (name = "categoryName")
    private String categoryName;
    @Column (name = "status")
    private boolean status;

    @JsonIgnore
    @OneToMany(mappedBy = "category", fetch = FetchType.EAGER)
    private List<Product> products;

    public  Category(){}

    public  Category(int categoryId){
        this.categoryId = categoryId;
    }
    public Category(int categoryId, String categoryName, boolean status, List<Product> products) {
        this.categoryId = categoryId;
        this.categoryName = categoryName;
        this.status = status;
//        this.products = products;
    }

    public int getCategoryId() {
        return categoryId;
    }

    public void setCategoryId(int categoryId) {
        this.categoryId = categoryId;
    }

    public String getCategoryName() {
        return categoryName;
    }

    public void setCategoryName(String categoryName) {
        this.categoryName = categoryName;
    }

    public boolean getStatus() {
        return status;
    }

    public void setStatus(boolean status) {
        this.status = status;
    }

    public List<Product> getProducts() {
        return products;
    }
    public void setProducts(List<Product> products) {
        this.products = products;
    }
}
