package com.chen.ems.core.model;

import java.io.Serializable;
import lombok.Data;

/**
 * ems_course_info
 * @author 
 */
@Data
public class CourseVO implements Serializable {
    private Integer id;

    private String courseId;

    private String courseName;

    private String courseAttr;

    private static final long serialVersionUID = 1L;
}