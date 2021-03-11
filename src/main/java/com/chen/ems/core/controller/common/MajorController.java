package com.chen.ems.core.controller.common;

import com.chen.ems.core.model.ClassesVO;
import com.chen.ems.core.model.MajorVO;
import com.chen.ems.core.service.MajorService;
import com.chen.ems.utils.ApiResult;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

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



}

