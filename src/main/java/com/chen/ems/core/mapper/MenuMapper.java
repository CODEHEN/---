package com.chen.ems.core.mapper;

import com.chen.ems.core.pojo.Menu;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * @Author: CHENLIHUI
 * @Description:
 * @Date: Create in 11:55 2020/8/12
 */
@Mapper
@Repository
public interface MenuMapper {

    @Select("select * from ems_menu")
    List<Menu> selectList();

}
