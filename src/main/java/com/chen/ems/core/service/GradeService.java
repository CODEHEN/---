package com.chen.ems.core.service;

import com.chen.ems.core.model.StudentGradeVO;

import java.util.LinkedList;
import java.util.List;

/**
* @Author: ChenLiHui
* @Description: 描述
* @Date: 创建于21:30 2021-04-17
**/
public interface GradeService {
    void save(List<StudentGradeVO> studentGradeVO, String selectClass, String selectCourse, String person, String semester);

    List<StudentGradeVO> getGradeInfo(StudentGradeVO gradeVO);

    List<LinkedList<String>> ranking(StudentGradeVO studentGradeVO);
}

