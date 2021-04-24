package com.chen.ems.core.model;

import java.io.Serializable;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.util.Date;

import com.alibaba.excel.annotation.ExcelIgnore;
import com.alibaba.excel.annotation.ExcelProperty;
import com.alibaba.excel.metadata.BaseRowModel;
import lombok.Data;

/**
 * ems_student_grade
 * @author 
 */
@Data
public class StudentGradeVO extends BaseRowModel implements Serializable {
    @ExcelIgnore
    private Integer id;

    /**
     * 学号
     */
    @ExcelProperty("学号")
    private String number;

    @ExcelProperty("姓名")
    private String username;

    @ExcelProperty("班级")
    private String classes;

    @ExcelProperty("课程")
    private String course;

    @ExcelProperty("成绩")
    private String grade;

    @ExcelProperty("考试标志")
    private Integer type;

    @ExcelProperty("学期")
    private String semester;

    private String major;

    @ExcelIgnore
    private String order;

    /**
     * 录入人
     */
    @ExcelProperty("教师")
    private String person;

    @ExcelProperty("总分")
    private String score;

    /**
     * 录入时间
     */
    @ExcelIgnore
    private LocalDate time;

    private static final long serialVersionUID = 1L;
}