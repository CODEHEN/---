package com.chen.ems.core.controller.common;

import com.chen.ems.core.model.CollegeVO;
import com.chen.ems.core.service.CollegeService;
import com.chen.ems.utils.ApiResult;
import com.chen.ems.utils.PageUtils;
import io.swagger.annotations.ApiOperation;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

/**
 * @Author: CHENLIHUI
 * @Description:
 * @Date: Create in 16:21 2021/3/3
 */
@RestController
@Slf4j
@RequestMapping("/college")
public class CollegController {
    @Autowired
    private CollegeService collegeService;

    @GetMapping
    @ApiOperation(value = "获取全部学院信息", httpMethod = "GET", response = ApiResult.class, notes = "获取成功")
    public ApiResult getCollege() {
        List<CollegeVO> collegeVOS = collegeService.getCollege();
        return ApiResult.ok(200,"获取成功",collegeVOS);
    }

}
