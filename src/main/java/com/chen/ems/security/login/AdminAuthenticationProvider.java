package com.chen.ems.security.login;

import com.chen.ems.core.mapper.UserMapper;
import com.chen.ems.core.pojo.User;
import com.chen.ems.core.service.impl.UserDetailsServiceImpl;
import com.chen.ems.security.dto.SecurityUser;
import com.chen.ems.security.filter.WxLoginAuthenticationToken;
import com.chen.ems.utils.Constants;
import com.chen.ems.utils.PasswordUtils;
import io.jsonwebtoken.Jwts;
import io.jsonwebtoken.SignatureAlgorithm;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.AuthenticationProvider;
import org.springframework.security.authentication.BadCredentialsException;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.AuthenticationException;
import org.springframework.stereotype.Component;

import java.util.Date;

/**
 * @Author: CHENLIHUI
 * @Description:
 * @Date: Create in 15:13 2020/8/11
 */
@Component
public class AdminAuthenticationProvider implements AuthenticationProvider {

    @Autowired
    UserDetailsServiceImpl userDetailsService;

    @Autowired
    private UserMapper userMapper;

    @Override
    public Authentication authenticate(Authentication authentication) throws AuthenticationException {
        // 获取前端表单中输入后返回的用户名、密码
        String userName = (String) authentication.getPrincipal();
        String password = (String) authentication.getCredentials();

        SecurityUser userInfo = (SecurityUser) userDetailsService.loadUserByUsername(userName);

        // 验证密码
        boolean isValid = PasswordUtils.isValidPassword(password, userInfo.getPassword(), userInfo.getCurrentUserInfo().getSalt());
        if (!isValid) {
            throw new BadCredentialsException("密码错误！");
        }


        // 更新登录令牌
//        String token = PasswordUtils.encodePassword(String.valueOf(System.currentTimeMillis()), Constants.SALT);
        // 当前用户所拥有角色代码
        String roleCodes = userInfo.getRoleCodes();
        // 生成jwt访问令牌
        String jwt = Jwts.builder()
                // 用户角色
                .claim("ROLE",roleCodes)
                // 主题 - 存用户名
                .setSubject(authentication.getName())
                // 过期时间 - 3分钟
                .setExpiration(new Date(System.currentTimeMillis() + 30 * 60 * 1000))
                // 加密算法和密钥
                .signWith(SignatureAlgorithm.HS512, Constants.SALT)
                .compact();
        User user = userMapper.selectUserByNumber(userInfo.getCurrentUserInfo().getNumber());
        user.setToken(jwt);
        userMapper.updateUserByNumber(user);
        userInfo.getCurrentUserInfo().setToken(jwt);
        return new UsernamePasswordAuthenticationToken(userInfo, password, userInfo.getAuthorities());



    }

    @Override
    public boolean supports(Class<?> aClass) {
        return UsernamePasswordAuthenticationToken.class.isAssignableFrom(aClass);
    }
}
