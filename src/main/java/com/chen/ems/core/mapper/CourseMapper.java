package com.chen.ems.core.mapper;

import com.chen.ems.core.model.CourseVO;
import com.chen.ems.core.model.ClassTaskVO;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

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

    List<ClassTaskVO> getClassTask(ClassTaskVO classTaskVO);

    @Select("select course_name from ems_course_info where course_name like CONCAT('%',#{name},'%')")
    List<String> getCourseName(String name);

    void addClassTask(ClassTaskVO classTaskVO);
}