package com.chen.ems.core.service.impl;

import com.chen.ems.core.mapper.StudentGradeMapper;
import com.chen.ems.core.model.StudentGradeVO;
import com.chen.ems.core.service.GradeService;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.time.LocalDate;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.LinkedList;
import java.util.List;

/**
 * @Author: ChenLiHui
 * @Description: 描述
 * @Date: 创建于21:30 2021-04-17
 **/
@Service
public class GradeServiceImpl implements GradeService {
    @Autowired
    private StudentGradeMapper mapper;

    @Override
    @Transactional(rollbackFor=Exception.class)
    public void save(List<StudentGradeVO> studentGradeVO, String selectClass, String selectCourse,String person, String semester) {
        for (StudentGradeVO studentGradeVO1 : studentGradeVO) {
            if (studentGradeVO1.getType() == null) {
                studentGradeVO1.setType(0);
            }
            studentGradeVO1.setTime(LocalDate.now());
            mapper.insert(studentGradeVO1, selectClass, selectCourse, person, semester);
        }
    }

    @Override
    public List<StudentGradeVO> getGradeInfo(StudentGradeVO gradeVO) {
        List<StudentGradeVO> gradeVOS = mapper.getGradeInfo(gradeVO);
        return gradeVOS;
    }

    @Override
    public List<LinkedList<String>> ranking(StudentGradeVO studentGradeVO) {
        List<StudentGradeVO> gradeVOS = mapper.ranking(studentGradeVO);
        List<LinkedList<String>> gradeTable = new ArrayList<>();
        LinkedList<String> header = new LinkedList<>();
        header.add("学号");
        header.add("姓名");
        header.add("班级");
        header.add("总分");
        for (StudentGradeVO gradeVO: gradeVOS) {
            LinkedList<String> list = new LinkedList<>();
            list.add(gradeVO.getNumber());
            list.add(gradeVO.getUsername());
            list.add(gradeVO.getClasses());
            list.add(gradeVO.getScore());
            String [] courses = gradeVO.getCourse().split(",");
            String [] grades = gradeVO.getGrade().split(",");
            for (int i=0;i<courses.length;i++) {
                if (!header.contains(courses[i])) {
                    header.add(courses[i]);
                }
                int index = header.indexOf(courses[i]);
                if (index >= list.size()) {
                    int re = index-list.size();
                    for (int m=0; m<=re; m++) {
                        list.add("");
                    }
                }
                list.set(index,grades[i]);
            }
            gradeTable.add(list);
        }
        gradeTable.add(0,header);
        gradeTable.forEach(g -> {
            while (g.size()<header.size()) {
                g.add("");
            }
            String a = g.get(3);
            g.set(3,g.getLast());
            g.set(g.size()-1,a);
        });
        return gradeTable;
    }

    @Override
    public List<StudentGradeVO> studentCourseGrade(String number, String semester) {
        return mapper.studentCourseGrade(number,semester);
    }
}

