package com.chen.ems.core.mapper;

import com.chen.ems.core.model.UserInfoVO;
import com.chen.ems.core.pojo.User;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * @Author: CHENLIHUI
 * @Description:
 * @Date: Create in 15:26 2020/8/11
 */
@Mapper
@Repository
public interface UserMapper {

    @Select("select * from ems_user where number = #{number} ")
    User selectUserByNumber(String number);

    @Select("select * from ems_user where token = #{token} ")
    User selectUserByToken(String token);

    @Update("update ems_user set token = #{token} where number = #{number}")
    void updateUserByNumber(User user);

    int insertUserByExcel(List<User> users);

    void insertUserRoleByExcel(@Param("users") List<User> users,@Param("roleId") int roleId);
}
