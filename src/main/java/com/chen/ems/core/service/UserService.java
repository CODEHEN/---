package com.chen.ems.core.service;

import com.chen.ems.core.model.UserInfoVO;

/**
 * @Author: CHENLIHUI
 * @Description:
 * @Date: Create in 20:52 2020/8/15
 */
public interface UserService {
    UserInfoVO getCurrentUserInfo(String token);
}
