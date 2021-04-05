package com.chen.ems.core.controller.common;

import com.chen.ems.core.model.CourseVO;
import com.chen.ems.core.model.ScheduleVO;
import com.chen.ems.core.service.ScheduleService;
import com.chen.ems.utils.ApiResult;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.Arrays;
import java.util.List;

/**
 * @Author: ChenLiHui
 * @Description: 描述
 * @Date: 创建于16:54 2021-04-04
 **/
@RestController
@RequestMapping("/schedule")
public class ScheduleController {

    @Autowired
    private ScheduleService scheduleService;

    @PostMapping("/student")
    @ApiOperation(value = "学生课表", httpMethod = "POST", response = ApiResult.class, notes = "查询成功")
    public ApiResult studentSchedule(@RequestBody ScheduleVO scheduleVO) {
        List<ScheduleVO> scheduleVOS = scheduleService.studentSchedule(scheduleVO);
        String [][] scheduleTable= new String[7][5];
        for (ScheduleVO schedule : scheduleVOS) {
            int classTime = Integer.parseInt(schedule.getClassTime());
            String sheduleInfo = schedule.getCourseName() + "\n" + schedule.getTeacherName() + "\n" +schedule.getBuildName()+ "\n"+schedule.getRoomName();
            int day = classTime%5 ==0 ?4:classTime%5-1;
            scheduleTable[classTime/5][day] = sheduleInfo;
        }
        return ApiResult.ok(200,"获取成功",scheduleTable);
    }

    @PostMapping("/class")
    @ApiOperation(value = "班级课表", httpMethod = "POST", response = ApiResult.class, notes = "查询成功")
    public ApiResult classSchedule(@RequestBody ScheduleVO scheduleVO) {
        List<ScheduleVO> scheduleVOS = scheduleService.classSchedule(scheduleVO);
        String [][] scheduleTable= new String[7][5];
        for (ScheduleVO schedule : scheduleVOS) {
            int classTime = Integer.parseInt(schedule.getClassTime());
            String sheduleInfo = schedule.getCourseName() + "\n" + schedule.getTeacherName() + "\n" +schedule.getBuildName()+ "\n"+schedule.getRoomName();
            int day = classTime%5 ==0 ?4:classTime%5-1;
            scheduleTable[classTime/5][day] = sheduleInfo;
        }
        return ApiResult.ok(200,"获取成功",scheduleTable);
    }

}

