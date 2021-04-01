package com.chen.ems.core.service;

import com.chen.ems.core.model.ClassTaskVO;
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

    List<ClassTaskVO> getClassTask(ClassTaskVO classTaskVO);

    List<String> getCourseName(String name);

    void addClassTask(ClassTaskVO classTaskVO);

    boolean classScheduling(ClassTaskVO classTaskVO);

    List<String> selectSemester(String semester);
}

