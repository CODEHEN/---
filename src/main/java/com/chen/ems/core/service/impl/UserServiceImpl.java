package com.chen.ems.core.service.impl;

import cn.hutool.core.bean.BeanUtil;
import com.chen.ems.core.mapper.RoleMenuMapper;
import com.chen.ems.core.mapper.UserMapper;
import com.chen.ems.core.mapper.UserRoleMapper;
import com.chen.ems.core.model.MenuVO;
import com.chen.ems.core.model.UserInfoVO;
import com.chen.ems.core.pojo.Menu;
import com.chen.ems.core.pojo.Role;
import com.chen.ems.core.pojo.User;
import com.chen.ems.core.service.UserService;
import com.chen.ems.utils.TreeBuilder;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashSet;
import java.util.List;
import java.util.Objects;
import java.util.Set;

/**
 * @Author: CHENLIHUI
 * @Description:
 * @Date: Create in 21:07 2020/8/15
 */
@Service
public class UserServiceImpl implements UserService {

    @Autowired
    private UserMapper userMapper;

    @Autowired
    private UserRoleMapper userRoleMapper;

    @Autowired
    private RoleMenuMapper roleMenuMapper;

    @Override
    public UserInfoVO getCurrentUserInfo(String token) {
        User user = userMapper.selectUserByToken(token);
        UserInfoVO userInfoVO = new UserInfoVO();
        BeanUtil.copyProperties(user, userInfoVO);

        Set<String> roles = new HashSet();
        Set<MenuVO> menuVOS = new HashSet();

        //查询某个用户的角色
        List<Role> roleList = userRoleMapper.selectRoleByUserId(user.getId());
        if(roleList != null && !roleList.isEmpty() ){
            roles.add( roleList.get(0).getCode() );

            //查询某个角色的菜单
            List<Menu> menuList = roleMenuMapper.selectMenusByRoleId( roleList.get(0).getId() );
            if(menuList != null && !menuList.isEmpty() ){
                menuList.stream().filter(Objects::nonNull).forEach(menu -> {
                    if ("menu".equals(menu.getType().toLowerCase())) {
                        //如果权限是菜单，就添加到菜单里面
                        MenuVO menuVO = new MenuVO();
                        BeanUtil.copyProperties(menu, menuVO);
                        menuVOS.add(menuVO);
                    }
                });
            }
        }
        userInfoVO.getRoles().addAll( roles );
        userInfoVO.getMenus().addAll( TreeBuilder.buildTree(menuVOS) );

        return userInfoVO;
    }
}
