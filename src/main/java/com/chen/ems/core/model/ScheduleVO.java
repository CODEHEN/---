package com.chen.ems.core.model;

import lombok.Data;

import java.io.Serializable;

/**
 * @description:
 * @author: ChenLiHui
 * @create: 2021-04-04 16:56
 **/

@Data
public class ScheduleVO implements Serializable {

    private static final long serialVersionUID = -5308311534192006037L;

    private String courseName;

    private String classNo;

    private String teacherName;

    private String buildName;

    private String roomName;

    private String roomId;

    private String classTime;

    private String className;

    private Integer type;

    private String semester;

    private String studentNumber;
}
