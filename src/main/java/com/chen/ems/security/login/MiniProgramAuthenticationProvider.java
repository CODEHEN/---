package com.chen.ems.security.login;

import com.alibaba.fastjson.JSONObject;
import com.chen.ems.core.pojo.User;
import com.chen.ems.core.service.impl.UserDetailsServiceImpl;
import com.chen.ems.miniProgram.mapper.MiniUserMapper;
import com.chen.ems.miniProgram.service.impl.MiniUserDetailsServiceImpl;
import com.chen.ems.security.dto.SecurityUser;
import com.chen.ems.security.filter.WxLoginAuthenticationToken;
import com.chen.ems.utils.Constants;
import io.jsonwebtoken.Jwts;
import io.jsonwebtoken.SignatureAlgorithm;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.AuthenticationProvider;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.AuthenticationException;
import org.springframework.stereotype.Component;

import java.util.ArrayList;
import java.util.Date;

/**
 * @Author: CHENLIHUI
 * @Description:
 * @Date: Create in 17:19 2020/8/30
 */
@Component
public class MiniProgramAuthenticationProvider implements AuthenticationProvider {

    @Autowired
    private MiniUserMapper miniUserMapper;

    @Autowired
    MiniUserDetailsServiceImpl miniUserDetailsService;

    @Override
    public Authentication authenticate(Authentication authentication) throws AuthenticationException {
        User user = (User) authentication.getPrincipal();
        String openId = (String) authentication.getCredentials();

        SecurityUser userInfo = (SecurityUser) miniUserDetailsService.loadUserByUsername(openId);

        if (userInfo == null) {
            user.setCreateTime(new Date());
            user.setLastVisitTime(new Date());
            user.setOpenId(openId);
            miniUserMapper.insert(user);
            userInfo = (SecurityUser) miniUserDetailsService.loadUserByUsername(openId);
        }
        String jwt = Jwts.builder()
                // 用户角色
                .claim(Constants.ROLE_LOGIN, "wx")
                // 主题 - 存用户名
                .setSubject(((User) authentication.getPrincipal()).getNickName())
                // 过期时间 - 3分钟
                .setExpiration(new Date(System.currentTimeMillis() + 30 * 60 * 1000))
                // 加密算法和密钥
                .signWith(SignatureAlgorithm.HS512, Constants.SALT)
                .compact();
        user.setToken(jwt);
        user.setOpenId(openId);
        user.setLastVisitTime(new Date());
        miniUserMapper.updateById(user);
        userInfo.getCurrentUserInfo().setToken(jwt);
        return new WxLoginAuthenticationToken(userInfo,openId,userInfo.getAuthorities());
    }

    @Override
    public boolean supports(Class<?> aClass) {
        return WxLoginAuthenticationToken.class.isAssignableFrom(aClass);
    }
}
