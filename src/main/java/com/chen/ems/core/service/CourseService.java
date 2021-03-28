package com.chen.ems.core.service;

import com.chen.ems.core.model.CourseVO;

import java.util.List;

/**
* @Author: ChenLiHui
* @Description: 描述
* @Date: 创建于18:44 2021-03-28
**/
public interface CourseService {
    List<CourseVO> getCourseInfo(CourseVO courseVO);

    void addCourse(CourseVO courseVO);

    void deleteCourse(Integer id);

    void putCourse(CourseVO courseVO);
}

