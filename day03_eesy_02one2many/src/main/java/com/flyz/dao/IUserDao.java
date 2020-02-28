package com.flyz.dao;



import com.flyz.domain.QueryVo;
import com.flyz.domain.User;

import java.util.List;
import java.util.Map;

//用户的持久层接口
public interface IUserDao {
    //查询所有操作
    List<User> findAll();
    void saveUser(User user);
    void updateUser(User user);

    /**
     * 根据Id删除用户
     * @param userId
     */
    void deleteUser(Integer userId);
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
     * 查询总用户数
     * @return
     */
    int findTotal();

    /**
     * 根据queryVo中的条件查询用户
     * @param vo
     * @return
     */
    List<User> findUserByVo(QueryVo vo);

    /**
     * 分页查询
     * @param map
     * @return
     */
    List<User> findAllWithFy(Map<String,Object> map);


    /**
     * 分页模糊查询
     * @param map
     * @return
     */
    List<User> findAllByNameWithFy(Map<String,Object> map);



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