package com.chen.ems.core.mapper;

import com.chen.ems.core.model.ClassesVO;
import com.chen.ems.core.model.MajorVO;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import java.util.List;

/**
 * @Author: CHENLIHUI
 * @Description:
 * @Date: Create in 21:46 2021/3/11
 */
@Mapper
public interface MajorMapper {

    /**
     * 根据学院名称查找该学院下的专业
     * @param name 学院名称
     * @return java.util.List<com.chen.ems.core.model.MajorVO>
     */
    @Select("select * from ems_major where college = (select id from ems_college where ems_college.name = #{name})")
    List<MajorVO> getMajorByCollegeName(String name);
}
