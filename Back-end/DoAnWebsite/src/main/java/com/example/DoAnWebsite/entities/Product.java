package com.example.DoAnWebsite.entities;

import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

import javax.persistence.*;
import java.util.Date;
import java.util.List;

@Entity
@Table(name = "Product")
@JsonIgnoreProperties(ignoreUnknown = true, value = {"hibernateLazyInitializer", "handler"})
public class Product {
    @Id
    @Column (name = "productId")
    private String productId;

    @Column (name = "productName")
    private  String productName;

    @Column (name = "price")
    private float price;

    @Column (name = "productImage")
    private String productImage;

    @Column (name = "description")
    private String description;

    @Column (name = "createAt")
    private  Date createAt;

    @Column (name = "updateAt")
    private Date updateAt;

    @Column (name = "exprity")
    private Date exprity;

    @Column (name = "madeIn")
    private String madeIn;

    @Column (name = "quantity")
    private int quantity;

    @Column (name = "status")
    private boolean status;

    @ManyToOne
    @JoinColumn(name = "categoryId", referencedColumnName = "categoryId")
    private Category category;

    @JsonIgnore
    @OneToMany(mappedBy = "product", fetch = FetchType.EAGER)
    private List<FeedBack> feedBacks;

//    @JsonIgnore
//    @OneToMany(mappedBy = "product", fetch = FetchType.EAGER)
//    private List<Price> prices;
//
    @JsonIgnore
    @OneToMany(mappedBy = "product", fetch = FetchType.EAGER)
    private List<OrderDetail> orderDetails;

    @JsonIgnore
    @OneToMany(mappedBy = "product", fetch = FetchType.EAGER)
    private List<Cart> carts;


    public Product() {
    }

    public Product(List<OrderDetail> orderDetails) {
        this.orderDetails = orderDetails;
        this.createAt = new Date(System.currentTimeMillis());
        this.updateAt = new Date(System.currentTimeMillis());
        // TODO Auto-generated constructor stub
    }


    public Product(String productId, String productName, float price, String productImage, String description, Date createAt, Date updateAt, Date exprity, String madeIn, int quantity, boolean status, Category category, List<FeedBack> feedBacks, List<OrderDetail> orderDetails, List<Cart> carts) {
        this.productId = productId;
        this.productName = productName;
        this.price = price;
        this.productImage = productImage;
        this.description = description;
        this.createAt = createAt;
        this.updateAt = updateAt;
        this.exprity = exprity;
        this.madeIn = madeIn;
        this.quantity = quantity;
        this.status = status;
        this.category = category;
        this.feedBacks = feedBacks;
        this.orderDetails = orderDetails;
        this.carts = carts;
    }

    public String getProductId() {
        return productId;
    }

    public void setProductId(String productId) {
        this.productId = productId;
    }

    public String getProductName() {
        return productName;
    }

    public void setProductName(String productName) {
        this.productName = productName;
    }

    public float getPrice() {
        return price;
    }

    public void setPrice(float price) {
        this.price = price;
    }

    public String getProductImage() {
        return productImage;
    }

    public void setProductImage(String productImage) {
        this.productImage = productImage;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public Date getCreateAt() {
        return createAt;
    }

    public void setCreateAt(Date createAt) {
        this.createAt = createAt;
    }

    public Date getUpdateAt() {
        return updateAt;
    }

    public void setUpdateAt(Date updateAt) {
        this.updateAt = updateAt;
    }

    public Date getExprity() {
        return exprity;
    }

    public void setExprity(Date exprity) {
        this.exprity = exprity;
    }

    public String getMadeIn() {
        return madeIn;
    }

    public void setMadeIn(String madeIn) {
        this.madeIn = madeIn;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public boolean isStatus() {
        return status;
    }

    public void setStatus(boolean status) {
        this.status = status;
    }

    public Category getCategory() {
        return category;
    }

    public void setCategory(Category category) {
        this.category = category;
    }

    public List<FeedBack> getFeedBacks() {
        return feedBacks;
    }

    public void setFeedBacks(List<FeedBack> feedBacks) {
        this.feedBacks = feedBacks;
    }

    public List<OrderDetail> getOrderDetails() {
        return orderDetails;
    }

    public void setOrderDetails(List<OrderDetail> orderDetails) {
        this.orderDetails = orderDetails;
    }

    public List<Cart> getCarts() {
        return carts;
    }

    public void setCarts(List<Cart> carts) {
        this.carts = carts;
    }
}
