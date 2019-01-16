package com.goplan.dao;

import com.goplan.model.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;

public interface UserDao extends JpaRepository<User, Long> {
    @Query("select u from User u where u.name =:name")
    User findByName(@Param("name") String name);
}
