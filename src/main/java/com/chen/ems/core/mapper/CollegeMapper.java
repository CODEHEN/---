package com.chen.ems.core.mapper;

import com.chen.ems.core.model.CollegeVO;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import java.util.List;

/**
 * @Author: CHENLIHUI
 * @Description:
 * @Date: Create in 16:31 2021/3/3
 */
@Mapper
public interface CollegeMapper {

    @Select("select id, name from ems_college")
    List<CollegeVO> getCollege();

    @Insert("insert into ems_college(name, created_time) VALUES (#{name},#{createdTime})")
    void addCollege(CollegeVO collegeVO);


    void putCollege(CollegeVO collegeVO);
}
