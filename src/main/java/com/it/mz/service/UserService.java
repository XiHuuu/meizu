package com.it.mz.service;

import com.it.mz.pojo.User;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;

public interface UserService {
    List<User> getUsers();

    void addUser(User user);

    void deleteUser(int id);

    void updateUser(User user);

    User getUserById(int id);

    User getUserByNameAndPwd(String username, String password);

    void autoLogin(User user, HttpServletRequest req, HttpSession session);
}
