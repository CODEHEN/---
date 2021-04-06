package com.chen.ems.core.mapper;

import com.chen.ems.core.model.ScheduleVO;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface ScheduleMapper {
    List<ScheduleVO> studentSchedule(ScheduleVO scheduleVO);

    List<ScheduleVO> classSchedule(ScheduleVO scheduleVO);

    List<ScheduleVO> teacherSchedule(ScheduleVO scheduleVO);

    List<ScheduleVO> classroomSchedule(ScheduleVO scheduleVO);
}
