package com.chen.ems.core.controller.user;

import cn.hutool.core.util.PageUtil;
import com.chen.ems.core.model.UserInfoVO;
import com.chen.ems.core.service.AdminService;
import com.chen.ems.utils.ApiResult;
import com.chen.ems.utils.PageUtils;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import io.swagger.annotations.ApiOperation;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

/**
 * @Author: CHENLIHUI
 * @Description:
 * @Date: Create in 15:41 2021/3/2
 */
@RestController
@RequestMapping("/admin")
@Slf4j
public class AdminController {

    @Autowired
    private AdminService adminService;

    @PostMapping("/student/info" )
    @ApiOperation(value = "管理员分页获取学生信息", httpMethod = "POST", response = ApiResult.class, notes = "获取成功")
    public ApiResult getStudentInfo(@RequestBody UserInfoVO userInfoVO, @RequestParam("pageNum") Integer pageNum, @RequestParam("pageSize") Integer pageSize) {
        PageHelper.clearPage();
        PageHelper.startPage(pageNum, pageSize);
        List<UserInfoVO>  userInfos = adminService.getStudentInfo(userInfoVO);
        PageInfo<UserInfoVO> userInfoVOPageInfo = new PageInfo<>(userInfos);
        return ApiResult.ok(200,"获取学生信息成功",userInfoVOPageInfo);
    }



}
