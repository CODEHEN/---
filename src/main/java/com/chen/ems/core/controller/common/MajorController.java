package com.chen.ems.core.controller.common;

import com.chen.ems.core.model.ClassesVO;
import com.chen.ems.core.model.CollegeVO;
import com.chen.ems.core.model.MajorVO;
import com.chen.ems.core.service.MajorService;
import com.chen.ems.utils.ApiResult;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

/**
 * @Author: ChenLiHui
 * @Description: 描述
 * @Date: 创建于21:12 2021-03-11
 **/
@RestController
@RequestMapping("/major")
public class MajorController {

    @Autowired
    private MajorService majorService;

    @GetMapping("/{majorName}")
    @ApiOperation(value = "获取某学院下的专业", httpMethod = "GET", response = ApiResult.class, notes = "获取成功")
    public ApiResult getClassesByCollege(@PathVariable("majorName") String name) {
        List<MajorVO> classesVos = majorService.getMajorByCollegeName(name);
        return ApiResult.ok(200,"获取成功",classesVos);
    }

    @PostMapping
    @ApiOperation(value = "添加专业信息", httpMethod = "Post", response = ApiResult.class, notes = "添加成功")
    public ApiResult addMajor(@RequestBody MajorVO majorVO) {
        majorService.addMajor(majorVO);
        return ApiResult.ok(200,"添加成功");
    }

    @PutMapping
    @ApiOperation(value = "修改专业信息", httpMethod = "Put", response = ApiResult.class, notes = "修改成功")
    public ApiResult updateMajor(@RequestBody MajorVO majorVO) {
        majorService.updateMajor(majorVO);
        return ApiResult.ok(200,"修改成功");
    }



}

