package com.chen.ems.core.mapper;

import com.chen.ems.core.model.ClassTaskVO;
import com.chen.ems.core.model.CoursePlanVO;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface CoursePlanMapper {
    int deleteByPrimaryKey(Long id);

    int insert(CoursePlanVO record);

    int insertSelective(CoursePlanVO record);

    CoursePlanVO selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(CoursePlanVO record);

    int updateByPrimaryKey(CoursePlanVO record);

    void updateCoursePlan(ClassTaskVO classTask1);
}