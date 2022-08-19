package com.example.DoAnWebsite.services;

//import com.example.DoAnWebsite.entities.UserDetail;
import com.example.DoAnWebsite.entities.Users;
import com.example.DoAnWebsite.repositories.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.security.core.userdetails.UserDetails;
//import org.springframework.security.core.userdetails.UserDetailsService;
//import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UserServiceImpl implements UserService {
    @Autowired
    private  UserRepository userRepository;

    @Override
    public List<Users> getAll() {
        return userRepository.findAll();
    }

    @Override
    public Users getById(int id) {
        return userRepository.findById(id).get();
    }

    @Override
    public Users save(Users users) {
        return userRepository.save(users);
    }

    @Override
    public void deleteById(int id) {
            userRepository.deleteById(id);
    }

//    public UserDetails loadUserById(int id) throws UsernameNotFoundException{
//        Users users = userRepository.getById(id);
//        if (users == null){
//            throw new UsernameNotFoundException(Integer.toString(id));
//        }
//        return new UserDetail(users);
//    }
//
//    @Override
//    public UserDetails loadUserByUsername(String userName) throws UsernameNotFoundException {
//        Users users = userRepository.findByUserName(userName);
//        if (users == null)
//            throw new UsernameNotFoundException(userName);
//        return new UserDetail(users);
//    }
}
