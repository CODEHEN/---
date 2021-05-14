package com.chen.ems.core.controller.miniProgramer;

import com.chen.ems.core.mapper.UserMapper;
import com.chen.ems.core.model.UserInfoVO;
import com.chen.ems.core.pojo.User;
import com.chen.ems.core.service.UserService;
import com.chen.ems.miniProgram.mapper.MiniUserMapper;
import com.chen.ems.utils.ApiResult;
import com.chen.ems.utils.PasswordUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * @description:
 * @author: ChenLiHui
 * @create: 2021-05-07 23:10
 **/

@RestController
@RequestMapping("/wx")
public class BaseController {

    @Autowired
    private MiniUserMapper mapper;

    @Autowired
    private UserMapper userMapper;

    @Autowired
    private UserService userService;

    @PostMapping("/bind")
    public ApiResult bind(@RequestBody User user) {
        String number = user.getNumber();
        User userInfo = userMapper.selectUserByNumber(number);
        if (userInfo == null) {
            return ApiResult.fail(202,"账户不存在");
        }
        String encodePassword = PasswordUtils.encodePassword(user.getPassword(),"zhengqing");
        if (!userInfo.getPassword().equalsIgnoreCase(encodePassword)) {
            return ApiResult.ok(201,"密码错误");
        }
        user.setNumber(userInfo.getNumber());
        mapper.updateNumberById(user);
        User info = userService.getCurrentUserInfoByNumber(number);
        return ApiResult.ok(200, "绑定成功", info);
    }
}
