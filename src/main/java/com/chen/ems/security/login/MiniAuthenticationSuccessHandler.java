package com.chen.ems.security.login;

import com.chen.ems.core.model.UserInfoVO;
import com.chen.ems.core.pojo.User;
import com.chen.ems.core.service.UserService;
import com.chen.ems.security.dto.SecurityUser;
import com.chen.ems.utils.ApiResult;
import com.chen.ems.utils.ResponseUtils;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.web.authentication.AuthenticationSuccessHandler;
import org.springframework.stereotype.Component;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * @Author: CHENLIHUI
 * @Description:
 * @Date: Create in 17:55 2020/8/30
 */
@Component
public class MiniAuthenticationSuccessHandler implements AuthenticationSuccessHandler {
    @Autowired
    private UserService userService;

    @Override
    public void onAuthenticationSuccess(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Authentication authentication) throws IOException, ServletException {
        SecurityUser securityUser = ((SecurityUser) authentication.getPrincipal());
        User user = securityUser.getCurrentUserInfo();
        user.setToken(securityUser.getCurrentUserInfo().getToken());
        user.setOpenId(securityUser.getCurrentUserInfo().getOpenId());
        if (StringUtils.isBlank(securityUser.getCurrentUserInfo().getNumber())) {
            ResponseUtils.out(httpServletResponse, ApiResult.ok(201,"未绑定用户!", user));
        }
        User info = userService.getCurrentUserInfoByNumber(securityUser.getCurrentUserInfo().getNumber());
        info.setToken(securityUser.getCurrentUserInfo().getToken());
        ResponseUtils.out(httpServletResponse, ApiResult.ok("登录成功!", info));
    }
}
