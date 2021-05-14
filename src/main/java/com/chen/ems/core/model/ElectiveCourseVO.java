package com.chen.ems.core.model;

import java.io.Serializable;
import lombok.Data;

/**
 * ems_electivecourse
 * @author 
 */
@Data
public class ElectiveCourseVO implements Serializable {
    private Integer id;

    private String courseId;

    private String courseName;

    private String teacherId;

    private String teacherName;

    private String classroomId;

    private String className;

    private String classTime;

    private String courseAttr;

    private Integer type;

    private Integer totalNum;

    private Integer remaining;

    private String semester;

    private static final long serialVersionUID = 1L;
}