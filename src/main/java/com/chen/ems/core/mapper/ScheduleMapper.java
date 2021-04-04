package com.chen.ems.core.mapper;

import com.chen.ems.core.model.ScheduleVO;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface ScheduleMapper {
    List<ScheduleVO> studentSchedule(String studentNumber);
}
