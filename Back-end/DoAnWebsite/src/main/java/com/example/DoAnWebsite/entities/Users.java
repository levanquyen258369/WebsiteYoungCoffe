package com.example.DoAnWebsite.entities;

import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

//import org.springframework.security.core.GrantedAuthority;
//import org.springframework.security.core.authority.SimpleGrantedAuthority;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
//import lombok.Data;

@Entity
@Table(name = "Users")
//@Data
@JsonIgnoreProperties(ignoreUnknown = true, value = {"hibernateLazyInitializer", "handler"})
public class Users {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "userId")
    private int userId;

    @Column (name = "userName")
    private String userName;

    @Column (name = "password")
    private String password;

    @Column (name = "isAdmin")
    private boolean isAdmin;

    @Column(name = "createAt")
    private Date createAt;

    @Column(name = "updateAt")
    private  Date updateAt;

    @Column(name = "status")
    private boolean status;

    @JsonIgnore
    @OneToMany(mappedBy = "users", fetch = FetchType.EAGER)
    private List<UserRoles> userRoles;



    public Users() {
        this.createAt = new Date(System.currentTimeMillis());
        this.updateAt = new Date(System.currentTimeMillis());

        // TODO Auto-generated constructor stub
    }

    public Users(int userId, String userName, String password, boolean isAdmin, Date createAt, Date updateAt, boolean status, List<UserRoles> userRoles) {
        this.userId = userId;
        this.userName = userName;
        this.password = password;
        this.isAdmin = isAdmin;
        this.createAt = createAt;
        this.updateAt = updateAt;
        this.status = status;
        this.userRoles = userRoles;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public boolean getIsAdmin() {
        return isAdmin;
    }

    public void setIsAdmin(boolean isAdmin) {
        this.isAdmin = isAdmin;
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

    public List<UserRoles> getUserRoles() {
        return userRoles;
    }

    public void setUserRoles(List<UserRoles> userRoles) {
        this.userRoles = userRoles;
    }

//    @Transient
//    public List<GrantedAuthority> getAuthorities(){
//        List<GrantedAuthority> authorities = new ArrayList<GrantedAuthority>();
//        for (UserRoles ur : userRoles){
//            authorities.add(new SimpleGrantedAuthority(ur.getRoles().getRoleName()));
//
//        }
//        return authorities;
//    }

}
