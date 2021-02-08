package com.chen.ems.core.controller.user;

import com.chen.ems.core.model.UserInfoVO;
import com.chen.ems.core.service.UserService;
import com.chen.ems.utils.ApiResult;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestHeader;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * @Author: CHENLIHUI
 * @Description:
 * @Date: Create in 20:49 2020/8/15
 */
@RestController
@RequestMapping("/user")
public class UserController {

    @Autowired
    private UserService userService;

    @PostMapping("/getCurrentUserInfo")
    @ApiOperation(value = "获取当前登录用户信息", httpMethod = "POST", response = ApiResult.class, notes = "获取当前登录用户信息")
    public ApiResult getCurrentUserInfo(@RequestHeader(name = "X-Token") String token) {
        UserInfoVO info = userService.getCurrentUserInfo(token);
        return ApiResult.ok(200, "获取当前登录用户信息成功", info);
    }

}
