package com.chen.ems.miniProgram.service.impl;

import com.chen.ems.core.pojo.Role;
import com.chen.ems.core.pojo.User;
import com.chen.ems.miniProgram.mapper.MiniUserMapper;
import com.chen.ems.security.dto.SecurityUser;
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

    @Override
    public UserDetails loadUserByUsername(String s) throws UsernameNotFoundException {
        User user = userMapper.selectById(s);

        if (user == null) {
            return null;
        }
        return new SecurityUser(user, getUserRoles(user.getId()));
    }

    /***
     * 根据token获取用户权限与基本信息
     *
     */
    public SecurityUser getUserByToken(String token) {
        User user  = userMapper.selectUserByToken(token);
        return user != null ? new SecurityUser(user, getUserRoles(user.getId())) : null;
    }

    /**
     * 根据用户id获取角色权限信息
     *
     * @param userId
     * @return
     */
    private List<Role> getUserRoles(Integer userId) {
//        List<Role> roleList = userRoleMapper.selectRoleByUserId(userId);
        // 以后处理
        return null;
    }
}
