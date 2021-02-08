package com.chen.ems.miniProgram.mapper;

import com.chen.ems.core.pojo.User;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

/**
 * @Author: CHENLIHUI
 * @Description:
 * @Date: Create in 21:29 2020/8/29
 */
@Mapper
@Repository
public interface MiniUserMapper {

    @Select("select * from ems_mini_user where open_id = #{id}")
    User selectById(String id);

    void insert(User user);

    void updateById(User user);

    @Select("select * from ems_mini_user where token = #{token}")
    User selectUserByToken(String token);
}
