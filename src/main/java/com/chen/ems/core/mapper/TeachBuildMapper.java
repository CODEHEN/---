package com.chen.ems.core.mapper;

import com.chen.ems.core.model.TeachBuildVO;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface TeachBuildMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(TeachBuildVO record);

    int insertSelective(TeachBuildVO record);

    TeachBuildVO selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(TeachBuildVO record);

    int updateByPrimaryKey(TeachBuildVO record);

    List<TeachBuildVO> selectInfo(TeachBuildVO teachBuildVO);
}