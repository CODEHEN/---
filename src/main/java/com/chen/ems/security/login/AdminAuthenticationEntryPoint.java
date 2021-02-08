package com.chen.ems.security.login;

import com.chen.ems.utils.ApiResult;
import com.chen.ems.utils.ResponseUtils;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.web.AuthenticationEntryPoint;
import org.springframework.stereotype.Component;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * @Author: CHENLIHUI
 * @Description: 认证权限入口 - 未登录的情况下访问所有接口都会拦截到此
 * @Date: Create in 11:03 2020/8/11
 */
@Component
public class AdminAuthenticationEntryPoint implements AuthenticationEntryPoint {

    @Override
    public void commence(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, AuthenticationException e) throws IOException, ServletException {

        if (e!=null){
            ResponseUtils.out(httpServletResponse, ApiResult.expired(e.getMessage()));    // 未登录
        } else {
            ResponseUtils.out(httpServletResponse, ApiResult.expired("jwtToken过期!"));  //  token过期
        }
    }
}
