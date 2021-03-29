package com.chen.ems.core.service.impl;

import com.chen.ems.core.mapper.CourseMapper;
import com.chen.ems.core.model.ClassTaskVO;
import com.chen.ems.core.model.CourseVO;
import com.chen.ems.core.service.CourseService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @Author: ChenLiHui
 * @Description: 描述
 * @Date: 创建于18:44 2021-03-28
 **/
@Service
public class CourseServiceImpl implements CourseService {

    @Autowired
    private CourseMapper courseMapper;

    @Override
    public List<CourseVO> getCourseInfo(CourseVO courseVO) {
        return courseMapper.getClassesInfo(courseVO);
    }

    @Override
    public void addCourse(CourseVO courseVO) {
        courseMapper.insert(courseVO);
    }

    @Override
    public void deleteCourse(Integer id) {
        courseMapper.deleteByPrimaryKey(id);
    }

    @Override
    public void putCourse(CourseVO courseVO) {
        courseMapper.updateByPrimaryKey(courseVO);
    }

    @Override
    public List<ClassTaskVO> getClassTask(ClassTaskVO classTaskVO) {
        return courseMapper.getClassTask(classTaskVO);
    }
}

