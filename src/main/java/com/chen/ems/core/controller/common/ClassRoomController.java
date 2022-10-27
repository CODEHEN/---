package com.chen.ems.core.controller.common;

import com.chen.ems.core.model.ClassRoomVO;
import com.chen.ems.core.model.MajorVO;
import com.chen.ems.core.service.ClassRoomService;
import com.chen.ems.utils.ApiResult;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

/**
 * @Author: ChenLiHui
 * @Description: 描述
 * @Date: 创建于12:59 2021-03-27
 **/
@RestController
@RequestMapping("/classRoom")
public class ClassRoomController {

    @Autowired
    private ClassRoomService classRoomService;

    @GetMapping("/{build_id}")
    @ApiOperation(value = "获取某教学楼下的教室", httpMethod = "GET", response = ApiResult.class, notes = "获取成功")
    public ApiResult getClassRoomByTeachBuildName(@PathVariable("build_id") Integer build_id) {
        List<ClassRoomVO> classRoomVOS = classRoomService.getClassRoomByTeachBuildName(build_id);
        return ApiResult.ok(200,"获取成功",classRoomVOS);
    }

    @PostMapping
    @ApiOperation(value = "添加教室信息", httpMethod = "Post", response = ApiResult.class, notes = "添加成功")
    public ApiResult addClassRoom(@RequestBody ClassRoomVO classRoomVO) {
        classRoomService.addClassRoom(classRoomVO);
        return ApiResult.ok(200,"添加成功");
    }

    @PutMapping
    @ApiOperation(value = "修改教室信息", httpMethod = "Put", response = ApiResult.class, notes = "修改成功")
    public ApiResult updateClassRoom(@RequestBody ClassRoomVO classRoomVO) {
        classRoomService.updateClassRoom(classRoomVO);
        return ApiResult.ok(200,"修改成功");
    }

    @GetMapping("/nullroom")
    public ApiResult getNullClassRoom(@RequestParam("time") String time, @RequestParam("build") String build) {
        List<String> nullClassRoome = classRoomService.getNullClassRoom(time,build);
        return ApiResult.ok(200,"查询成功", nullClassRoome);

    }



}

