package com.flyz.dao;



import com.flyz.domain.QueryVo;
import com.flyz.domain.User;

import java.util.List;
import java.util.Map;

//用户的持久层接口
public interface IUserDao {


    /**
     * 根据id查询用户信息
     * @param id
     * @return
     */
    User findById(Integer id);

    /**
     * 根据名称模糊查询用户信息
     * @param username
     * @return
     */
    List<User> findByName(String username);

    /**
     * 根据queryVo中的条件查询用户
     * @param vo
     * @return
     */
    List<User> findUserByVo(QueryVo vo);

    /**
     * 根据传入参数的条件查询用户
     * @param user  有可能有用户名，可能有性别，可能有地址，也可能什么都没有
     * @return
     */
    List<User> findUserByCondition(User user);


    /**
     * 根据queryvo中提供的id集合，查询用户信息
     * @param vo
     * @return
     */
    List<User> findUserInIds(QueryVo vo);
}