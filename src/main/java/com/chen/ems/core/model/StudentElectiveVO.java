package com.chen.ems.core.model;

import lombok.Data;

import java.io.Serializable;

/**
 * ems_student_elective
 * @author 
 */
@Data
public class StudentElectiveVO implements Serializable {
    private Integer id;

    private String studentNumber;

    private String courseId;

    private static final long serialVersionUID = 1L;
}