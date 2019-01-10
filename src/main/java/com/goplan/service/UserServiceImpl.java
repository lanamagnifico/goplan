package com.goplan.service;

import com.goplan.dao.UserDao;
import com.goplan.model.User;
import com.goplan.service.abstraction.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

@Service
public class UserServiceImpl implements UserService {
    @Autowired
    UserDao userDao;
    @Autowired
    private PasswordEncoder passwordEncoder;
    @Override
    public void save(User user) {
        user.setPassword(passwordEncoder.encode(user.getPassword()));
        userDao.save(user);
    }

    @Override
    public User findByName(String name) {
        return userDao.findByName(name);
    }

}
