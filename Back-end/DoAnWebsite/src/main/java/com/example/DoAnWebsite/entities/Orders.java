package com.example.DoAnWebsite.entities;

import com.fasterxml.jackson.annotation.JsonIgnore;

import javax.persistence.*;
import java.util.Date;
import java.util.List;

@Entity
@Table(name = "Orders")
public class Orders {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column (name = "orderId")
    private int orderId;

    @ManyToOne
    @JoinColumn(name = "customerId", referencedColumnName = "customerId")
    private Customer customer;

    @Column(name = "fullName")
    private String fullName;

    @Column(name = "address")
    private  String address;

    @Column(name = "phone")
    private  String phone;

    @Column(name = "email")
    private  String email;

    @ManyToOne
    @JoinColumn(name = "promotionId", referencedColumnName = "promotionId")
    private Promotions promotions;

    @Column(name = "total")
    private float total;

    @Column(name = "createAt")
    private Date createAt;

    @Column(name = "updateAt")
    private  Date updateAt;

    @Column(name = "status")
    private boolean status;

    @JsonIgnore
    @OneToMany(mappedBy = "orders", fetch = FetchType.EAGER)
    private List<OrderDetail> orderDetails;

    public Orders() {
        this.createAt = new Date(System.currentTimeMillis());
        this.updateAt = new Date(System.currentTimeMillis());
        // TODO Auto-generated constructor stub
    }

    public Orders(int orderId, Customer customer, String fullName, String address, String phone, String email, Promotions promotions, float total, Date createAt, Date updateAt, boolean status, List<OrderDetail> orderDetails) {
        this.orderId = orderId;
        this.customer = customer;
        this.fullName = fullName;
        this.address = address;
        this.phone = phone;
        this.email = email;
        this.promotions = promotions;
        this.total = total;
        this.createAt = createAt;
        this.updateAt = updateAt;
        this.status = status;
        this.orderDetails = orderDetails;
    }

    public int getOrderId() {
        return orderId;
    }

    public void setOrderId(int orderId) {
        this.orderId = orderId;
    }

    public Customer getCustomer() {
        return customer;
    }

    public void setCustomer(Customer customer) {
        this.customer = customer;
    }

    public String getFullName() {
        return fullName;
    }

    public void setFullName(String fullName) {
        this.fullName = fullName;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public Promotions getPromotions() {
        return promotions;
    }

    public void setPromotions(Promotions promotions) {
        this.promotions = promotions;
    }

    public float getTotal() {
        return total;
    }

    public void setTotal(float total) {
        this.total = total;
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

    public List<OrderDetail> getOrderDetails() {
        return orderDetails;
    }

    public void setOrderDetails(List<OrderDetail> orderDetails) {
        this.orderDetails = orderDetails;
    }
}
