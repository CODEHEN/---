package com.chen.ems.core.service;

import com.chen.ems.core.model.ClassRoomVO;

import java.util.List;

/**
* @Author: ChenLiHui
* @Description: 描述
* @Date: 创建于12:59 2021-03-27
**/
public interface ClassRoomService {
    List<ClassRoomVO> getClassRoomByTeachBuildName(Integer build_id);

    void addClassRoom(ClassRoomVO classRoomVO);

    void updateClassRoom(ClassRoomVO classRoomVO);

    Integer getId(String classroomId);
}

