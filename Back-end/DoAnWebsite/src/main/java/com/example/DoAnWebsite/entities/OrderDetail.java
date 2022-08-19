package com.example.DoAnWebsite.entities;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

import javax.persistence.*;
import java.util.Date;

@Entity
@Table(name = "OrderDetail")
@JsonIgnoreProperties(ignoreUnknown = true, value = {"hibernateLazyInitializer", "handler"})

public class OrderDetail {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column (name = "orderDetailId ")
    private int orderDetailId ;

    @ManyToOne
    @JoinColumn(name = "orderId", referencedColumnName = "orderId")
    private Orders orders;

    @ManyToOne
    @JoinColumn(name = "productId", referencedColumnName = "productId ")
    private Product product;

    @Column (name = "quantity")
    private int quantity;

    @Column (name = "price")
    private float price;

    @Column (name = "createAt")
    private Date createAt;

    @Column (name = "updateAt")
    private Date updateAt;

    public OrderDetail() {
        this.createAt = new Date(System.currentTimeMillis());
        this.updateAt = new Date(System.currentTimeMillis());
        // TODO Auto-generated constructor stub
    }

    public OrderDetail(int orderDetailId, Orders orders, Product product, int quantity, float price, Date createAt, Date updateAt) {
        this.orderDetailId = orderDetailId;
        this.orders = orders;
        this.product = product;
        this.quantity = quantity;
        this.price = price;
        this.createAt = createAt;
        this.updateAt = updateAt;
    }

    public int getOrderDetailId() {
        return orderDetailId;
    }

    public void setOrderDetailId(int orderDetailId) {
        this.orderDetailId = orderDetailId;
    }

    public Orders getOrders() {
        return orders;
    }

    public void setOrders(Orders orders) {
        this.orders = orders;
    }

    public Product getProduct() {
        return product;
    }

    public void setProduct(Product product) {
        this.product = product;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public float getPrice() {
        return price;
    }

    public void setPrice(float price) {
        this.price = price;
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
}
