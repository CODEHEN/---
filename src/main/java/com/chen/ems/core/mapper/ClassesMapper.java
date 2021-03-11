package com.chen.ems.core.mapper;

import com.chen.ems.core.model.ClassesVO;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import java.util.List;

/**
 * @Author: CHENLIHUI
 * @Description:
 * @Date: Create in 20:13 2021/3/3
 */

@Mapper
public interface ClassesMapper {

    /**
     * @Description: 根据学院名字获取该学院的班级
     * @Param: [name]
     * @return: java.util.List<com.chen.ems.core.model.ClassesVO>
     */
    @Select("select * from ems_classes where major = (select id from ems_major where ems_major.major_name = #{name})")
    List<ClassesVO> getClassByCollege(String name);
}
