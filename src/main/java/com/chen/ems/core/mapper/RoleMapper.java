package com.chen.ems.core.mapper;

import com.chen.ems.core.pojo.Role;
import io.swagger.models.auth.In;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

/**
 * @Author: CHENLIHUI
 * @Description:
 * @Date: Create in 15:27 2020/8/11
 */
@Mapper
@Repository
public interface RoleMapper {

    @Select("select * from ems_role where id = #{roleId}")
    Role selectRoleByRoleId(Integer roleId);

    @Select("select * from ems_role where id = #{id}")
    Role selectById(Integer id);
}
