package com.chen.ems.core.service;

import com.chen.ems.core.model.ClassTaskVO;
import com.chen.ems.core.model.CourseVO;
import com.chen.ems.core.model.ElectiveCourseVO;
import com.chen.ems.core.model.StudentElectiveVO;

import java.util.List;

/**
* @Author: ChenLiHui
* @Description: 描述
* @Date: 创建于18:44 2021-03-28
**/
public interface CourseService {
    List<CourseVO> getCourseInfo(CourseVO courseVO);

    boolean addCourse(CourseVO courseVO);

    void deleteCourse(Integer id);

    void putCourse(CourseVO courseVO);

    List<ClassTaskVO> getClassTask(ClassTaskVO classTaskVO);

    List<String> getCourseName(String name);

    void addClassTask(ClassTaskVO classTaskVO);

    boolean classScheduling(ClassTaskVO classTaskVO);

    List<String> selectSemester(String semester);

    List<ClassTaskVO> studentSchedule(String number);

    List<ElectiveCourseVO> getElectiveCourseInfo(ElectiveCourseVO courseVO);

    void addElectiveCourse(ElectiveCourseVO courseVO);

    void putElectiveCourse(ElectiveCourseVO courseVO);

    boolean studentElectiveCourse(StudentElectiveVO electiveVO);

    void studentdelCourse(StudentElectiveVO electiveVO);

    List<ElectiveCourseVO> getstudentCourseInfo(StudentElectiveVO electiveVO);
}

