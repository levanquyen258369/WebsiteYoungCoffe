//package com.example.DoAnWebsite.entities;
//
//import lombok.AllArgsConstructor;
//import lombok.Data;
//import org.springframework.security.core.GrantedAuthority;
//import org.springframework.security.core.authority.SimpleGrantedAuthority;
//import org.springframework.security.core.userdetails.UserDetails;
//
//import java.util.Collection;
//import java.util.Collections;
//
//@Data
//@AllArgsConstructor
//
//public class UserDetail implements UserDetails {
//
//    private static  final long serialVersionUID = 1L;
//     private Users users;
//     public UserDetail(){
//         super();
//     }
//
////    public UserDetail(Users users){
////        this.users = users;
////    }
//    @Override
//    public Collection<? extends GrantedAuthority> getAuthorities() {
//        return this.users.getAuthorities();
//    }
//
//    @Override
//    public String getPassword() {
//        return users.getPassword();
//    }
//
//    @Override
//    public String getUsername() {
//        return users.getUserName();
//    }
//
//    @Override
//    public boolean isAccountNonExpired() {
//        return true;
//    }
//
//    @Override
//    public boolean isAccountNonLocked() {
//        return true;
//    }
//
//    @Override
//    public boolean isCredentialsNonExpired() {
//        return true;
//    }
//
//    @Override
//    public boolean isEnabled() {
//        return true;
//    }
//
//
//    public Users getUsers() {
//        return users;
//    }
//
//    public void setUsers(Users users) {
//        this.users = users;
//    }
//}
//
//
//
