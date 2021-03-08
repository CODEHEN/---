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

    @Select("select * from ems_classes where college = #{id}")
    List<ClassesVO> getClassByCollege(int id);
}
