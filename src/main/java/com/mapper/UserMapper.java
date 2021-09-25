package com.mapper;

import com.entity.User;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface UserMapper {
    User selectUserByPassword(@Param("username") String username, @Param("password") String password);
    int insertUser(@Param("username") String username, @Param("password") String password);
    List<User> selectAllUsers();
    List<User> likeQueryUser(@Param("name") String name);
    int updateUser(User user);
    int delUser(@Param("id") Integer id);
    int addUser(User user);
    int updatePassword(@Param("id") Integer id,@Param("password") String password);
    User selectUserById(@Param("id") Integer id);
}
