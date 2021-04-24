package com.chen.ems.core.mapper;

import com.chen.ems.core.model.StudentGradeVO;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

@Mapper
public interface StudentGradeMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(@Param("record") StudentGradeVO record, @Param("class") String selectClass,@Param("course") String selectCourse,@Param("person") String person, @Param("semester") String semester);

    int insertSelective(StudentGradeVO record);

    StudentGradeVO selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(StudentGradeVO record);

    int updateByPrimaryKey(StudentGradeVO record);

    List<StudentGradeVO> getGradeInfo(StudentGradeVO gradeVO);

    void insertGradeExcel(@Param("record") List e,@Param("class") String selectClass,@Param("course") String selectCourse,@Param("person") String person,@Param("semester") String semester);

    List<StudentGradeVO> ranking(StudentGradeVO studentGradeVO);
}