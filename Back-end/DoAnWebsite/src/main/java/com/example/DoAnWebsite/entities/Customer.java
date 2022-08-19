package com.example.DoAnWebsite.entities;

import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

import javax.persistence.*;
import java.util.Date;
import java.util.List;

@Entity
@Table(name = "Customer")

@JsonIgnoreProperties(ignoreUnknown = true, value = {"hibernateLazyInitialier", "handler"})
public class Customer {


    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column (name = "customerId")
    private  int customerId;
    
    @Column (name = "fullName")
    private String fullName;
    
    @Column (name = "password")
    private  String password;
    
    @Column (name = "phone")
    private  String phone;
    
    @Column (name = "address")
    private  String address;
    
    @Column (name = "email")
    private  String email;
    
    @Column (name = "avatar")
    private  String avatar;
    
    @Column (name = "status")
    private  boolean status;

    @Column (name = "createAt")
    private  Date createAt;

    @Column (name = "updateAt")
    private  Date updateAt;

    @JsonIgnore
    @OneToMany(mappedBy = "customer", fetch = FetchType.EAGER)
    private List<Cart> carts;

    @JsonIgnore
    @OneToMany(mappedBy = "customer", fetch = FetchType.EAGER)
    private List<FeedBack> feedBacks;



//
    public Customer(){
        this.createAt = new Date(System.currentTimeMillis());
        this.updateAt = new  Date(System.currentTimeMillis());
    }


    public Customer(int customerId, String fullName, String password, String phone, String address, String email, String avatar, boolean status, Date createAt, Date updateAt) {
        this.customerId = customerId;
        this.fullName = fullName;
        this.password = password;
        this.phone = phone;
        this.address = address;
        this.email = email;
        this.avatar = avatar;
        this.status = status;
        this.createAt = createAt;
        this.updateAt = updateAt;
    }

    public int getCustomerId() {
        return customerId;
    }

    public void setCustomerId(int customerId) {
        this.customerId = customerId;
    }

    public String getFullName() {
        return fullName;
    }

    public void setFullName(String fullName) {
        this.fullName = fullName;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getAvatar() {
        return avatar;
    }

    public void setAvatar(String avatar) {
        this.avatar = avatar;
    }

    public boolean isStatus() {
        return status;
    }

    public void setStatus(boolean status) {
        this.status = status;
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
