package com.chen.ems.core.controller.common;

import com.chen.ems.core.model.ClassesVO;
import com.chen.ems.core.service.ClassesService;
import com.chen.ems.utils.ApiResult;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

/**
 * @Author: CHENLIHUI
 * @Description: 描述
 * @Date: 创建于20:06 2021-03-03
 **/
@RestController
@RequestMapping("/classes")
public class ClassesController {

    @Autowired
    private ClassesService classesService;

    @GetMapping("/{collegeId}")
    @ApiOperation(value = "获取某学院下的班级", httpMethod = "GET", response = ApiResult.class, notes = "获取成功")
    public ApiResult getClassesByCollege(@PathVariable("collegeId") int id) {
        List<ClassesVO> classesVOS = classesService.getClassByCollege(id);
        return ApiResult.ok(200,"获取成功",classesVOS);
    }

    @GetMapping("/**")
    public ApiResult TEST() {
        return ApiResult.ok(200,"成功");
    }



}

