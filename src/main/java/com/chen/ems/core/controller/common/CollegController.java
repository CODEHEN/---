package com.chen.ems.core.controller.common;

import com.chen.ems.core.model.CollegeVO;
import com.chen.ems.core.service.CollegeService;
import com.chen.ems.utils.ApiResult;
import com.chen.ems.utils.PageUtils;
import io.swagger.annotations.ApiOperation;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

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

    @PostMapping
    @ApiOperation(value = "添加学院信息", httpMethod = "Post", response = ApiResult.class, notes = "添加成功")
    public ApiResult addCollege(@RequestBody CollegeVO collegeVO) {
        collegeService.addCollege(collegeVO);
        return ApiResult.ok(200,"添加成功");
    }

    @PutMapping
    @ApiOperation(value = "修改学院信息", httpMethod = "Put", response = ApiResult.class, notes = "修改成功")
    public ApiResult putCollege(@RequestBody CollegeVO collegeVO) {
        collegeService.putCollege(collegeVO);
        return ApiResult.ok(200,"修改成功");
    }


}
