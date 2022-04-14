package com.it.mz.test;

import com.it.mz.pojo.User;
import com.it.mz.service.UserService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.List;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:spring-application.xml")
public class test {
    @Autowired
    private UserService userService;
    @Test
    public void testGetUsers(){
        List<User> users = userService.getUsers();
        System.out.println(users);
    }

    @Test
    public void testAddUser(){
        User user = new User();
        user.setUsername("aaa");
        user.setPassword("bbb");
        userService.addUser(user);
    }

    @Test
    public void testDeleteUser(){
        userService.deleteUser(5);
    }

    @Test
    public void testUpdateUser(){
        User user = new User("zzz","zzz");
        user.setId(4);
        userService.updateUser(user);
    }

    @Test
    public void testGetUserById(){
        User user = userService.getUserById(4);
        System.out.println(user);
    }
}
