package com.service.impl;

import com.entity.User;
import com.mapper.UserMapper;
import com.service.UserService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class UserServiceImpl implements UserService {
    //自动注入
    @Resource
    private UserMapper userMapper;
    @Override
    public User selectUserByPassword(String username,String password) {
        //调用dao层查询数据
        return userMapper.selectUserByPassword(username,password);
    }

    @Override
    public int insertUser(String username, String password) {
        //调用dao层添加数据
        return userMapper.insertUser(username,password);
    }

    @Override
    public List<User> selectAllUsers() {
        return userMapper.selectAllUsers();
    }

    @Override
    public List<User> queryLikeUser(String name) {
        return userMapper.likeQueryUser(name);
    }

    @Override
    public int updateUser(User user) {
        return userMapper.updateUser(user);
    }

    @Override
    public int delUser(Integer id) {
        return userMapper.delUser(id);
    }

    @Override
    public int addUser(User user) {
        return userMapper.addUser(user);
    }

    @Override
    public int updatePassword(Integer id, String oldPassword, String newPassword) {
        //查询密码是否一致
        User user = userMapper.selectUserById(id);
        //如果密码一致，则修改密码
        if (user.getPassword().equals(oldPassword)){
            return userMapper.updatePassword(id,newPassword);
        }
        return 0;
    }
}
