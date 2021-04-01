package com.chen.ems.core.model;

import java.io.Serializable;
import lombok.Data;

/**
 * ems_teacher_course
 * @author 
 */
@Data
public class TeacherCourseVO implements Serializable {
    private Long id;

    private String teacherno;

    private String courseno;

    private String classno;

    private String classroomno;

    private String classtime;

    private static final long serialVersionUID = 1L;
}