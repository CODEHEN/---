package com.chen.ems.core.mapper;

import com.chen.ems.core.model.CoursePlanVO;
import com.chen.ems.core.model.TeacherCourseVO;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface TeacherCourseMapper {
    int deleteByPrimaryKey(Long id);

    int insert(TeacherCourseVO record);

    int insertSelective(TeacherCourseVO record);

    TeacherCourseVO selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(TeacherCourseVO record);

    int updateByPrimaryKey(TeacherCourseVO record);

    void insertTeacherCourse(CoursePlanVO coursePlan);
}