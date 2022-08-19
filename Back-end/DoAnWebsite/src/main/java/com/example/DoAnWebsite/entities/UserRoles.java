package com.example.DoAnWebsite.entities;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

import javax.persistence.*;

@Entity
@Table(name = "UserRoles")
@JsonIgnoreProperties(value = {"hibernateLazyInitializer", "handler"})
public class UserRoles {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "userRoleId")
    private int userRoleId;

    @ManyToOne
    @JoinColumn(name = "userId", referencedColumnName = "userId")
    private Users users;

    @ManyToOne
    @JoinColumn(name ="roleId", referencedColumnName = "roleId")
    private Roles roles;

    public UserRoles(){
        super();
    }

    public UserRoles(int userRoleId, Users users, Roles roles) {
        super();
        this.userRoleId = userRoleId;
        this.users = users;
        this.roles = roles;
    }

    public int getUserRoleId() {
        return userRoleId;
    }

    public void setUserRoleId(int userRoleId) {
        this.userRoleId = userRoleId;
    }

    public Users getUsers() {
        return users;
    }

    public void setUsers(Users users) {
        this.users = users;
    }

    public Roles getRoles() {
        return roles;
    }

    public void setRoles(Roles roles) {
        this.roles = roles;
    }
}
