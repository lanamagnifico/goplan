package com.goplan.rest;

import com.goplan.dao.UserDao;
import org.springframework.beans.factory.annotation.Autowired;
import com.goplan.model.User;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/users")
public class UserRestController {
    @Autowired
    UserDao userDao;

    @RequestMapping(value="/{name}",method= RequestMethod.GET, produces = "application/json")
    public User showUser(@PathVariable String name){
        User user = userDao.findByName(name);
        return user;
    }

    @RequestMapping(method= RequestMethod.GET, produces = "application/json")
    public List<User> showAllUsers(){
        return userDao.findAll();
    }

    @RequestMapping(method = RequestMethod.POST,consumes = "application/json")
    public void saveUser(@RequestBody User user){
        userDao.save(user);
    }
}
