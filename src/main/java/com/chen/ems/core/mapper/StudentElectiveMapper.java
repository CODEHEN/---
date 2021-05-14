package com.chen.ems.core.mapper;

import com.chen.ems.core.model.StudentElectiveVO;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface StudentElectiveMapper {
    int deleteByPrimaryKey(String id);

    int insert(StudentElectiveVO record);

    int insertSelective(StudentElectiveVO record);

    StudentElectiveVO selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(StudentElectiveVO record);

    int updateByPrimaryKey(StudentElectiveVO record);
}