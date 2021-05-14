package com.chen.ems.miniProgram.service.impl;

import com.chen.ems.core.mapper.UserRoleMapper;
import com.chen.ems.core.pojo.Role;
import com.chen.ems.core.pojo.User;
import com.chen.ems.miniProgram.mapper.MiniUserMapper;
import com.chen.ems.security.dto.SecurityUser;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @Author: CHENLIHUI
 * @Description:
 * @Date: Create in 9:34 2020/8/31
 */
@Service
public class MiniUserDetailsServiceImpl implements UserDetailsService {

    @Autowired
    private MiniUserMapper userMapper;

    @Autowired
    private UserRoleMapper userRoleMapper;

    @Override
    public UserDetails loadUserByUsername(String s) throws UsernameNotFoundException {
        User user = userMapper.selectById(s);

        if (user == null) {
            return null;
        }
        if (StringUtils.isBlank(user.getNumber())){
            user.setNumber("001");
        }
        return new SecurityUser(user, getUserRoles(user.getNumber()));
    }

    /***
     * 根据token获取用户权限与基本信息
     *
     */
    public SecurityUser getUserByToken(String token) {
        User user  = userMapper.selectUserByToken(token);
        return user != null ? new SecurityUser(user, getUserRoles(user.getOpenId())) : null;
    }

    /**
     * 根据用户id获取角色权限信息
     *
     * @param usernumber
     * @return
     */
    private List<Role> getUserRoles(String usernumber) {
        Integer userId = userMapper.getUserIdByNumber(usernumber);
        return userRoleMapper.selectRoleByUserId(userId);
    }
}
