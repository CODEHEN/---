package com.chen.ems.security.url;

import com.chen.ems.common.enumeration.ResultCode;
import com.chen.ems.utils.ApiResult;
import com.chen.ems.utils.ResponseUtils;
import org.springframework.security.access.AccessDeniedException;
import org.springframework.security.web.access.AccessDeniedHandler;
import org.springframework.stereotype.Component;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * @Author: CHENLIHUI
 * @Description: 403无权限处理器
 * @Date: Create in 14:58 2020/8/11
 */
@Component
public class UrlAccessDeniedHandler implements AccessDeniedHandler {
    @Override
    public void handle(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, AccessDeniedException e) throws IOException, ServletException {
        ResponseUtils.out(httpServletResponse, ApiResult.fail(ResultCode.UNAUTHORIZED.getCode(), e.getMessage()));
    }
}
