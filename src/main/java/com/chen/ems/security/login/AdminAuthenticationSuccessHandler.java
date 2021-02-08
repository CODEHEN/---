package com.chen.ems.security.login;

import com.chen.ems.core.pojo.User;
import com.chen.ems.security.dto.SecurityUser;
import com.chen.ems.utils.ApiResult;
import com.chen.ems.utils.ResponseUtils;
import org.springframework.security.core.Authentication;
import org.springframework.security.web.authentication.AuthenticationSuccessHandler;
import org.springframework.stereotype.Component;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * @Author: CHENLIHUI
 * @Description: 认证成功处理
 * @Date: Create in 21:15 2020/8/11
 */
@Component
public class AdminAuthenticationSuccessHandler implements AuthenticationSuccessHandler {
    @Override
    public void onAuthenticationSuccess(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Authentication authentication) throws IOException, ServletException {
        User user = new User();
        SecurityUser securityUser = ((SecurityUser) authentication.getPrincipal());
        user.setToken(securityUser.getCurrentUserInfo().getToken());
        ResponseUtils.out(httpServletResponse, ApiResult.ok("登录成功!", user));
    }
}
