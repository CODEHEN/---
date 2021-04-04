package com.chen.ems.core.controller.common;

import com.chen.ems.core.model.CollegeVO;
import com.chen.ems.core.model.RewardPunishmentVO;
import com.chen.ems.core.model.TeachBuildVO;
import com.chen.ems.core.service.Teach_BuildService;
import com.chen.ems.utils.ApiResult;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

/**
 * @Author: ChenLiHui
 * @Description: 描述
 * @Date: 创建于13:00 2021-03-27
 **/
@RestController
@RequestMapping("/teach_build")
public class Teach_BuildController {

    @Autowired
    private Teach_BuildService teachBuildService;

    @PostMapping("/info")
    public ApiResult RaPInfo(@RequestBody TeachBuildVO teachBuildVO, @RequestParam("pageNum") Integer pageNum, @RequestParam("pageSize") Integer pageSize) {
        PageHelper.clearPage();
        PageHelper.startPage(pageNum, pageSize);
        List<TeachBuildVO> teachBuildVOS = teachBuildService.geInfo(teachBuildVO);
        PageInfo<TeachBuildVO> teachBuildVOPageInfo = new PageInfo<>(teachBuildVOS);
        return ApiResult.ok(200,"获取教学楼信息成功",teachBuildVOPageInfo);
    }

    @GetMapping("/info")
    public ApiResult RaPInfoo() {
        TeachBuildVO teachBuildVO = new TeachBuildVO();
        List<TeachBuildVO> teachBuildVOS = teachBuildService.geInfo(teachBuildVO);
        return ApiResult.ok(200,"获取教学楼信息成功",teachBuildVOS);
    }

    @PostMapping
    @ApiOperation(value = "添加教学楼信息", httpMethod = "Post", response = ApiResult.class, notes = "添加成功")
    public ApiResult addTeachBuild(@RequestBody TeachBuildVO teachBuildVO) {
        teachBuildService.addTeachBuild(teachBuildVO);
        return ApiResult.ok(200,"添加成功");
    }

    @PutMapping
    @ApiOperation(value = "修改教学楼信息", httpMethod = "Put", response = ApiResult.class, notes = "修改成功")
    public ApiResult puteachBuild(@RequestBody TeachBuildVO teachBuildVO) {
        teachBuildService.puteachBuild(teachBuildVO);
        return ApiResult.ok(200,"修改成功");
    }


}

