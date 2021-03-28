package com.chen.ems.core.model;

import java.io.Serializable;
import lombok.Data;

/**
 * ems_classroom
 * @author 
 */
@Data
public class ClassRoomVO implements Serializable {
    private Integer id;

    private Integer teachBuildId;

    private String buildName;

    private String classroomname;

    private String classroomattr;

    private static final long serialVersionUID = 1L;
}