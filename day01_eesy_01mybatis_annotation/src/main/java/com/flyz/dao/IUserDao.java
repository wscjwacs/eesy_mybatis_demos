package com.flyz.dao;



import com.flyz.domain.User;
import org.apache.ibatis.annotations.Select;

import java.util.List;

//用户的持久层接口
public interface IUserDao {
    //查询所有操作
    @Select("SELECT *FROM user")
    List<User> findAll();
    //void insert(User user);
    void saveUser(User user);

}