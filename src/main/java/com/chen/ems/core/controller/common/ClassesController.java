package com.chen.ems.core.controller.common;

import com.chen.ems.core.model.ClassesVO;
import com.chen.ems.core.model.UserInfoVO;
import com.chen.ems.core.service.ClassesService;
import com.chen.ems.utils.ApiResult;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

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

    @GetMapping("/{collegeName}")
    @ApiOperation(value = "获取某学院下的班级", httpMethod = "GET", response = ApiResult.class, notes = "获取成功")
    public ApiResult getClassesByCollege(@PathVariable("collegeName") String name) {
        List<ClassesVO> classesVOS = classesService.getClassByCollege(name);
        return ApiResult.ok(200,"获取成功",classesVOS);
    }

    @PostMapping("/info")
    @ApiOperation(value = "管理员获取班级信息", httpMethod = "POST", response = ApiResult.class, notes = "获取成功")
    public ApiResult getClassesInfo(@RequestBody ClassesVO classesVO, @RequestParam("pageNum") Integer pageNum, @RequestParam("pageSize") Integer pageSize){
        PageHelper.clearPage();
        PageHelper.startPage(pageNum, pageSize);
        List<ClassesVO>  classesVOS = classesService.getClassesInfo(classesVO);
        PageInfo<ClassesVO> classesVOPageInfo = new PageInfo<>(classesVOS);
        return ApiResult.ok(200,"获取管理员信息成功",classesVOPageInfo);
    }



}

