package com.chen.ems.core.service.impl;

import cn.hutool.core.bean.BeanUtil;
import com.alibaba.excel.EasyExcel;
import com.alibaba.excel.ExcelReader;
import com.chen.ems.common.exception.MyException;
import com.chen.ems.core.mapper.RoleMenuMapper;
import com.chen.ems.core.mapper.UserMapper;
import com.chen.ems.core.mapper.UserRoleMapper;
import com.chen.ems.core.model.MenuVO;
import com.chen.ems.core.model.UserInfoVO;
import com.chen.ems.core.pojo.Menu;
import com.chen.ems.core.pojo.Role;
import com.chen.ems.core.pojo.User;
import com.chen.ems.core.service.UserService;
import com.chen.ems.utils.ExcelUtils;
import com.chen.ems.utils.TreeBuilder;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.util.*;

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

    @Override
    @Transactional(rollbackFor=Exception.class)
    public void saveData(List<User> list, int roleId) {
        if(roleId == 2) {
            int id = userMapper.insertStudentUserByExcel(list);
        }
        else if (roleId == 3) {
            int id = userMapper.insertTeacherUserByExcel(list);
        }
        userMapper.insertUserRoleByExcel(list,roleId);
    }

    @Override
    public List<String> getName(String value) {
        return userMapper.getName(value);
    }

    @Override
    public List<String> getteaName(String value) {
        return userMapper.getTeacherName(value);
    }

    @Override
    public void updateInfo(UserInfoVO userInfoVO) {
        userMapper.updateUserInfo(userInfoVO);
    }

    @Override
    public String getPwd(String number) {
        return userMapper.getPwd(number);
    }

    @Override
    public void updatePwd(String newPwd, String number) {
        userMapper.updatePwd(newPwd,number);
    }

    @Override
    public User getCurrentUserInfoByNumber(String number) {
        return userMapper.selectUserInfoByNumber(number);
    }
}
