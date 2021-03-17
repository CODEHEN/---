package com.chen.ems.core.controller.user;

import com.alibaba.excel.EasyExcel;
import com.chen.ems.common.exception.MyException;
import com.chen.ems.core.model.UserInfoVO;
import com.chen.ems.core.pojo.User;
import com.chen.ems.core.service.AdminService;
import com.chen.ems.utils.ApiResult;
import com.chen.ems.utils.ExcelUtils;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import io.swagger.annotations.ApiOperation;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
import java.io.InputStream;
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

    @PutMapping("/student")
    @ApiOperation(value = "管理员更新学生信息", httpMethod = "Put", response = ApiResult.class, notes = "更新成功")
    public ApiResult updateStudent(@RequestBody UserInfoVO userInfoVO){
        try{
            adminService.updateStudent(userInfoVO);
            return ApiResult.ok(200,"更新成功");
        }catch (Exception e){
            throw new MyException(500,"服务错误，请重试");
        }

    }

    @PostMapping("/student")
    @ApiOperation(value = "管理员添加学生信息", httpMethod = "POST", response = ApiResult.class, notes = "添加成功")
    public ApiResult addStudent(@RequestBody UserInfoVO userInfoVO) {
        try {
            int id = adminService.addStudent(userInfoVO);
            return ApiResult.ok(200,id+"添加成功");
        } catch (Exception e) {
            throw  new MyException(500,"服务错误，请重试");
        }

    }

    @PostMapping("/teacher/info" )
    @ApiOperation(value = "管理员分页获取教师信息", httpMethod = "POST", response = ApiResult.class, notes = "获取成功")
    public ApiResult getTeacherInfo(@RequestBody UserInfoVO userInfoVO, @RequestParam("pageNum") Integer pageNum, @RequestParam("pageSize") Integer pageSize) {
        PageHelper.clearPage();
        PageHelper.startPage(pageNum, pageSize);
        List<UserInfoVO>  userInfos = adminService.getTeacherInfo(userInfoVO);
        PageInfo<UserInfoVO> userInfoVOPageInfo = new PageInfo<>(userInfos);
        return ApiResult.ok(200,"获取教师信息成功",userInfoVOPageInfo);
    }


    @PutMapping("/teacher")
    @ApiOperation(value = "管理员更新教师信息", httpMethod = "Put", response = ApiResult.class, notes = "更新成功")
    public ApiResult updateTeacher(@RequestBody UserInfoVO userInfoVO){
        try{
            adminService.updateTeacher(userInfoVO);
            return ApiResult.ok(200,"更新成功");
        }catch (Exception e){
            throw new MyException(500,"服务错误，请重试");
        }

    }

    @PostMapping("/teacher")
    @ApiOperation(value = "管理员添加学生信息", httpMethod = "POST", response = ApiResult.class, notes = "添加成功")
    public ApiResult addTeacher(@RequestBody UserInfoVO userInfoVO) {
        try {
            int id = adminService.addTeacher(userInfoVO);
            return ApiResult.ok(200,id+"添加成功");
        } catch (Exception e) {
            throw  new MyException(500,e.getMessage());
        }

    }

}
