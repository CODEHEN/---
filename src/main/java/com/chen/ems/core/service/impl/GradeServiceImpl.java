package com.chen.ems.core.service.impl;

import com.chen.ems.core.mapper.StudentGradeMapper;
import com.chen.ems.core.model.StudentGradeVO;
import com.chen.ems.core.service.GradeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.time.LocalDateTime;
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
    public void save(List<StudentGradeVO> studentGradeVO, String selectClass, String selectCourse,String person) {
        for (StudentGradeVO studentGradeVO1 : studentGradeVO) {
            if (studentGradeVO1.getType() == null) {
                studentGradeVO1.setType(0);
            }
            studentGradeVO1.setTime(LocalDateTime.now());
            mapper.insert(studentGradeVO1, selectClass, selectCourse, person);
        }
    }

    @Override
    public List<StudentGradeVO> getGradeInfo(StudentGradeVO gradeVO) {
        return mapper.getGradeInfo(gradeVO);
    }
}

