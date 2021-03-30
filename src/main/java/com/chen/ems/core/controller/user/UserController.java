package com.chen.ems.core.controller.user;

import com.alibaba.excel.EasyExcel;
import com.alibaba.excel.ExcelReader;
import com.alibaba.excel.read.builder.ExcelReaderBuilder;
import com.chen.ems.common.exception.MyException;
import com.chen.ems.core.model.UserInfoVO;
import com.chen.ems.core.pojo.User;
import com.chen.ems.core.service.UserService;
import com.chen.ems.core.service.impl.UserServiceImpl;
import com.chen.ems.utils.ApiResult;
import com.chen.ems.utils.ExcelUtils;
import io.swagger.annotations.ApiOperation;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.annotation.Secured;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
import java.io.InputStream;
import java.util.List;
import java.util.stream.Collectors;

/**
 * @Author: CHENLIHUI
 * @Description:
 * @Date: Create in 20:49 2020/8/15
 */
@RestController
@RequestMapping("/user")
@Slf4j
public class UserController {

    @Autowired
    private UserService userService;

    @PostMapping("/getCurrentUserInfo")
    @ApiOperation(value = "获取当前登录用户信息", httpMethod = "POST", response = ApiResult.class, notes = "获取当前登录用户信息")
    public ApiResult getCurrentUserInfo(@RequestHeader(name = "X-Token") String token) {
        UserInfoVO info = userService.getCurrentUserInfo(token);
        return ApiResult.ok(200, "获取当前登录用户信息成功", info);
    }

    @PostMapping("/userInfoExcel")
    @ApiOperation(value = "用户数据Excel上传批量保存",httpMethod = "POST", response = ApiResult.class, notes = "保存成功")
    public ApiResult userInfoExcel(MultipartFile file, int roleId){

        if (file == null) {
            return ApiResult.fail("未上传文件");
        }

        InputStream inputStream;

        try {
            inputStream  = file.getInputStream();
        }catch (IOException ex) {
            throw new MyException("Excel转换异常");
        }

        EasyExcel.read(inputStream, User.class,new ExcelUtils(userService,roleId)).sheet().doRead();


        return ApiResult.ok(200,"插入成功");
    }

    @GetMapping("/name")
    public ApiResult getName(@RequestParam("value") String value) {
        List<String> names = userService.getName(value).stream().distinct().collect(Collectors.toList());
        return ApiResult.ok(200,"获取成功",names);
    }

    @GetMapping("/teaName")
    public ApiResult getTeaName(@RequestParam("value") String value) {
        List<String> names = userService.getteaName(value).stream().distinct().collect(Collectors.toList());
        return ApiResult.ok(200,"获取成功",names);
    }

}
