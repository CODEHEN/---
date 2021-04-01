package com.chen.ems.core.model;

import java.io.Serializable;
import lombok.Data;

/**
 * ems_course_plan
 * @author 
 */
@Data
public class CoursePlanVO implements Serializable {
    private Long id;

    private String collegeno;

    private String classno;

    private String courseno;

    private String teacherno;

    private String classroomno;

    private String classtime;

    private Integer weekssum;

    private String semester;

    private static final long serialVersionUID = 1L;
}