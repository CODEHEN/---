package com.chen.ems.core.service;

import com.chen.ems.core.model.ScheduleVO;

import java.util.List;

/**
* @Author: ChenLiHui
* @Description: 描述
* @Date: 创建于16:54 2021-04-04
**/
public interface ScheduleService {
    List<ScheduleVO> studentSchedule(ScheduleVO scheduleVO);

    List<ScheduleVO> classSchedule(ScheduleVO scheduleVO);

    List<ScheduleVO> teacherSchedule(ScheduleVO scheduleVO);

    List<ScheduleVO> classroomSchedule(ScheduleVO scheduleVO);
}

