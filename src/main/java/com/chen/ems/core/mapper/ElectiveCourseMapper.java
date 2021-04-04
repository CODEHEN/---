package com.chen.ems.core.mapper;

import com.chen.ems.core.model.ElectiveCourseVO;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface ElectiveCourseMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(ElectiveCourseVO record);

    int insertSelective(ElectiveCourseVO record);

    ElectiveCourseVO selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(ElectiveCourseVO record);

    int updateByPrimaryKey(ElectiveCourseVO record);

    List<ElectiveCourseVO> getElectiveCourseInfo(ElectiveCourseVO courseVO);
}