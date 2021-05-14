package com.chen.ems.core.mapper;

import com.chen.ems.core.model.ElectiveCourseVO;
import com.chen.ems.core.model.StudentElectiveVO;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface ElectiveCourseMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(ElectiveCourseVO record);

    int insertSelective(ElectiveCourseVO record);

    ElectiveCourseVO selectByPrimaryKey(String courseId);

    int updateByPrimaryKeySelective(ElectiveCourseVO record);

    int updateByPrimaryKey(ElectiveCourseVO record);

    List<ElectiveCourseVO> getElectiveCourseInfo(ElectiveCourseVO courseVO);

    List<ElectiveCourseVO> getstudentCourseInfo(StudentElectiveVO electiveVO);
}