package com.chen.ems.core.service.impl;

import com.chen.ems.core.mapper.RoleMapper;
import com.chen.ems.core.mapper.UserMapper;
import com.chen.ems.core.mapper.UserRoleMapper;
import com.chen.ems.core.pojo.Role;
import com.chen.ems.core.pojo.User;
import com.chen.ems.core.pojo.UserRole;
import com.chen.ems.security.dto.SecurityUser;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;
import org.springframework.util.CollectionUtils;

import java.util.LinkedList;
import java.util.List;

/**
 * @Author: CHENLIHUI
 * @Description:
 * @Date: Create in 15:17 2020/8/11
 */
@Service("userDetailsService")
public class UserDetailsServiceImpl implements UserDetailsService {

    @Autowired
    private UserMapper userMapper;
    @Autowired
    private RoleMapper roleMapper;
    @Autowired
    private UserRoleMapper userRoleMapper;


    /***
     * 根据账号获取用户信息
     * @param username:
     * @return:
     */
    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
        // 从数据库中取出用户信息
        User user = userMapper.selectUserByNumber(username);
        // 判断用户是否存在
        if (user == null) {
            throw new UsernameNotFoundException("该账号不存在！");
        }
        // 返回UserDetails实现类
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
        List<Role> roleList = userRoleMapper.selectRoleByUserId(userId);
        return roleList;
    }
}
