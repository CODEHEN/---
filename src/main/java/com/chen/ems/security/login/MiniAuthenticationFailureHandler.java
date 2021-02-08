package com.chen.ems.security.login;

import com.chen.ems.utils.ApiResult;
import com.chen.ems.utils.ResponseUtils;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.web.authentication.AuthenticationFailureHandler;
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
public class MiniAuthenticationFailureHandler implements AuthenticationFailureHandler {
    @Override
    public void onAuthenticationFailure(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, AuthenticationException e) throws IOException, ServletException {
        ResponseUtils.out(httpServletResponse,ApiResult.fail("登录失败!"));
    }
}
