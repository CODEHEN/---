package com.chen.ems.core.service.impl;

import com.chen.ems.core.mapper.ClassRoomMapper;
import com.chen.ems.core.model.ClassRoomVO;
import com.chen.ems.core.service.ClassRoomService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @Author: ChenLiHui
 * @Description: 描述
 * @Date: 创建于12:59 2021-03-27
 **/
@Service
public class ClassRoomServiceImpl implements ClassRoomService {
    @Autowired
    private ClassRoomMapper classRoomMapper;

    @Override
    public List<ClassRoomVO> getClassRoomByTeachBuildName(Integer build_id) {
        return classRoomMapper.getClassRoomByTeachBuildName(build_id);
    }

    @Override
    public void addClassRoom(ClassRoomVO classRoomVO) {
        classRoomMapper.insert(classRoomVO);
    }

    @Override
    public void updateClassRoom(ClassRoomVO classRoomVO) {
        classRoomMapper.updateByPrimaryKeySelective(classRoomVO);
    }

    @Override
    public Integer getId(String classroomId) {
        return classRoomMapper.getId(classroomId);
    }
}

