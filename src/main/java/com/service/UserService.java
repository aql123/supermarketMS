package com.service;

import com.entity.User;

import java.util.List;

public interface UserService {

    User selectUserByPassword(String username,String password);
    int insertUser(String username,String password);
    List<User> selectAllUsers();
    List<User> queryLikeUser(String name);
    int updateUser(User user);
    int delUser(Integer id);
    int addUser(User user);
    int updatePassword(Integer id,String oldPassword,String newPassword);
}
