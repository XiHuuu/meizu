package com.it.mz.mapper;

import com.it.mz.pojo.User;

import java.util.List;

public interface UserMapper {
    List<User> getUsers();

    void addUser(User user);

    void deleteUser(int id);

    void updateUser(User user);

    User getUserById(int id);

    User getUserByNameAndPwd(String username, String password);
}
