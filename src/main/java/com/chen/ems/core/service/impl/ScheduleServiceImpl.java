package com.chen.ems.core.service.impl;

import com.chen.ems.core.mapper.ScheduleMapper;
import com.chen.ems.core.model.ScheduleVO;
import com.chen.ems.core.service.ScheduleService;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @Author: ChenLiHui
 * @Description: 描述
 * @Date: 创建于16:54 2021-04-04
 **/
@Service
public class ScheduleServiceImpl implements ScheduleService {
    @Autowired
    private ScheduleMapper scheduleMapper;

    @Override
    public List<ScheduleVO> studentSchedule(ScheduleVO scheduleVO) {
        return scheduleMapper.studentSchedule(scheduleVO);
    }

    @Override
    public List<ScheduleVO> classSchedule(ScheduleVO scheduleVO) {
        return scheduleMapper.classSchedule(scheduleVO);
    }
}

