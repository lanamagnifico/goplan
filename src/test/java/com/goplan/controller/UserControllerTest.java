package com.goplan.controller;

import com.goplan.config.TestDataBaseConfig;
import com.goplan.dao.UserDao;
import com.goplan.model.User;
import com.goplan.service.UserServiceImpl;
import org.junit.Assert;
import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.web.servlet.view.InternalResourceViewResolver;

import java.util.Map;

import static org.junit.Assert.*;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.get;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.view;
import static org.springframework.test.web.servlet.setup.MockMvcBuilders.standaloneSetup;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(classes = TestDataBaseConfig.class)
public class UserControllerTest {
    @Autowired
    private JdbcTemplate jdbcTemplate;
    final UserController controller = new UserController();
    private MockMvc mockMvc;

    @Before
    public void init(){
        InternalResourceViewResolver resolver = new InternalResourceViewResolver();
        resolver.setPrefix("/WEB-INF/view/");
        resolver.setSuffix(".jsp");
        mockMvc = standaloneSetup(controller).setViewResolvers(resolver).build();
    }
    @Test
    public void testLoginPage() throws Exception {
        mockMvc.perform(get("/login"))
                .andExpect(view().name("login"));
    }

    @Test
    public void testLogoutPage() throws Exception {

    }

    @Test
    public void testShowRegistrationForm() throws Exception {
        mockMvc.perform(get("/register"))
                .andExpect(view().name("registerForm"));
    }

    @Test
    public void testAddUser() throws Exception {
        User user = new User();
        user.setName("Mike");
        user.setPassword("12345");
        String query="insert into users values(1,'"+user.getName()+"','"+user.getPassword()+"')";
        int status =  jdbcTemplate.update(query);
        Assert.assertEquals("Check save status:", 1,status);
        query="select * from users where name='Mike' ";
        Map<String, Object> mapUser = jdbcTemplate.queryForMap(query);
        Assert.assertEquals("Check new user:", "Mike",mapUser.get("name").toString());
    }
}