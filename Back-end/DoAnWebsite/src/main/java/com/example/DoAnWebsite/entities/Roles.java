package com.example.DoAnWebsite.entities;

import javax.management.relation.Role;
import javax.persistence.*;
import java.util.List;

@Entity
@Table(name = "Roles")
public class Roles {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column (name = "roleId")
    private int roleId;

    @Column (name = "roleName")
    private String roleName;

    @Column (name = "status")
    private boolean status;

    @OneToMany(mappedBy = "roles", fetch = FetchType.EAGER)
    private List<UserRoles> userRoles;
    public Roles (){

    }

    public Roles(int roleId, String roleName, boolean status, List<UserRoles> userRoles) {
        this.roleId = roleId;
        this.roleName = roleName;
        this.status = status;
    }

    public int getRoleId() {
        return roleId;
    }

    public void setRoleId(int roleId) {
        this.roleId = roleId;
    }

    public String getRoleName() {
        return roleName;
    }

    public void setRoleName(String roleName) {
        this.roleName = roleName;
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
}
