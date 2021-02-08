package com.chen.ems.core.mapper;

import com.chen.ems.core.pojo.Role;
import com.chen.ems.core.pojo.UserRole;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * @Author: CHENLIHUI
 * @Description:
 * @Date: Create in 15:27 2020/8/11
 */
@Mapper
@Repository
public interface UserRoleMapper {
//    @Select("SELECT r.* FROM  ems_user_role ur LEFT JOIN ems_role r ON ur.role_id = r.id \n" +
//            "        where ur.user_id = #{userId}")
    List<Role> selectRoleByUserId(@Param("userId") Integer userId);

}
