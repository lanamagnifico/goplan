package com.goplan.service.abstraction;

import com.goplan.model.User;

public interface UserService {
    void save(User user);
    User findByName(String name);
}
