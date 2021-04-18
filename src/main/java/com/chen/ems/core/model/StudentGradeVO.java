package com.chen.ems.core.model;

import java.io.Serializable;
import java.time.LocalDateTime;
import java.util.Date;
import lombok.Data;

/**
 * ems_student_grade
 * @author 
 */
@Data
public class StudentGradeVO implements Serializable {
    private Integer id;

    /**
     * 学号
     */
    private String number;

    private String username;

    private String classes;

    private String course;

    private Integer grade;

    private Integer type;

    /**
     * 录入人
     */
    private String person;

    /**
     * 录入时间
     */
    private LocalDateTime time;

    private static final long serialVersionUID = 1L;
}