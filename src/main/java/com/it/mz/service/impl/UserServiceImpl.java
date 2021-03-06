package com.it.mz.service.impl;

import com.it.mz.mapper.UserMapper;
import com.it.mz.pojo.User;
import com.it.mz.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;

@Service
public class UserServiceImpl implements UserService {
    @Autowired
    UserMapper userMapper;
    @Override
    public List<User> getUsers() {
        return userMapper.getUsers();
    }

    @Override
    public void addUser(User user) {
        userMapper.addUser(user);
    }

    @Override
    public void deleteUser(int id) {
        userMapper.deleteUser(id);
    }

    @Override
    public void updateUser(User user) {
        userMapper.updateUser(user);
    }

    @Override
    public User getUserById(int id) {
        return userMapper.getUserById(id);
    }

    @Override
    public User getUserByNameAndPwd(String username, String password) {
        return userMapper.getUserByNameAndPwd(username,password);
    }

    @Override
    public void autoLogin(User user, HttpServletRequest req, HttpSession session) {
        User u = userMapper.getUserByNameAndPwd(user.getUsername(), user.getPassword());
        System.out.println( "user ==" + u );
        if (u != null){
            session.setAttribute("user",u);
        }
    }
}
