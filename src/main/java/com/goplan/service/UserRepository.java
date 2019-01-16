package com.goplan.service;

import com.goplan.model.User;
import org.springframework.data.repository.PagingAndSortingRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;

public interface UserRepository extends PagingAndSortingRepository<User,Long> {
    User findByName(@Param("name") String name);
}