package com.chen.ems.core.mapper;

import com.chen.ems.core.model.ClassRoomVO;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface ClassRoomMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(ClassRoomVO record);

    int insertSelective(ClassRoomVO record);

    ClassRoomVO selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(ClassRoomVO record);

    int updateByPrimaryKey(ClassRoomVO record);

    List<ClassRoomVO> getClassRoomByTeachBuildName(Integer build_id);

    List<ClassRoomVO> selectByTeachBuildNo(String teachBuildNo);

    Integer getId(String classroomId);
}