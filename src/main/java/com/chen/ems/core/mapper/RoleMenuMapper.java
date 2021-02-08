package com.chen.ems.core.mapper;

import com.chen.ems.core.pojo.Menu;
import com.chen.ems.core.pojo.RoleMenu;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * @Author: CHENLIHUI
 * @Description:
 * @Date: Create in 12:05 2020/8/12
 */
@Mapper
@Repository
public interface RoleMenuMapper {

    @Select("select * from ems_role_menu where menu_id = #{id}")
    List<RoleMenu> selectList(Integer id);

    /**
     * @Description: 根据角色ID查询关联菜单
     * @Param: [roleId]
     * @return: java.util.List<com.chen.ems.core.pojo.Menu>
     */
    List<Menu> selectMenusByRoleId(@Param("roleId") Integer roleId);
}
