package com.chen.ems.core.mapper;

import com.chen.ems.core.model.CourseVO;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface CourseMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(CourseVO record);

    int insertSelective(CourseVO record);

    CourseVO selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(CourseVO record);

    int updateByPrimaryKey(CourseVO record);

    List<CourseVO> getClassesInfo(CourseVO courseVO);
}