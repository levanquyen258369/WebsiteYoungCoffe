package com.example.DoAnWebsite.entities;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

import javax.persistence.*;
import java.util.Date;

@Entity
@Table(name = "FeedBack")
@JsonIgnoreProperties(ignoreUnknown = true, value = {"hibernateLazyInitializer", "handler"})

public class FeedBack {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column (name = "feedBackId")
    private int feedBackId;

    @ManyToOne
    @JoinColumn(name = "customerId", referencedColumnName = "customerId")
    private Customer customer;

    @ManyToOne
    @JoinColumn(name = "productId", referencedColumnName = "productId")
    private Product product;


    @Column (name = "content ")
    private String content;

    @Column (name = "feedBackImage")
    private String feedBackImage;

    @Column (name = "createAt")
    private Date createAt;

    @Column (name = "updateAt")
    private Date updateAt;

    @Column (name = "status")
    private boolean status;

    public FeedBack() {
        this.createAt = new Date(System.currentTimeMillis());
        this.updateAt = new Date(System.currentTimeMillis());
        // TODO Auto-generated constructor stub
    }

    public FeedBack(int feedBackId, Customer customer, Product product, String content, String feedBackImage, Date createAt, Date updateAt, boolean status) {
        this.feedBackId = feedBackId;
        this.customer = customer;
        this.product = product;
        this.content = content;
        this.feedBackImage = feedBackImage;
        this.createAt = createAt;
        this.updateAt = updateAt;
        this.status = status;
    }

    public int getFeedBackId() {
        return feedBackId;
    }

    public void setFeedBackId(int feedBackId) {
        this.feedBackId = feedBackId;
    }

    public Customer getCustomer() {
        return customer;
    }

    public void setCustomer(Customer customer) {
        this.customer = customer;
    }

    public Product getProduct() {
        return product;
    }

    public void setProduct(Product product) {
        this.product = product;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getFeedBackImage() {
        return feedBackImage;
    }

    public void setFeedBackImage(String feedBackImage) {
        this.feedBackImage = feedBackImage;
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

    public boolean isStatus() {
        return status;
    }

    public void setStatus(boolean status) {
        this.status = status;
    }
}
