package com.chen.ems.security.url;

import com.chen.ems.core.mapper.MenuMapper;
import com.chen.ems.core.mapper.RoleMapper;
import com.chen.ems.core.mapper.RoleMenuMapper;
import com.chen.ems.core.pojo.Menu;
import com.chen.ems.core.pojo.Role;
import com.chen.ems.core.pojo.RoleMenu;
import com.chen.ems.security.bo.MyProperties;
import com.chen.ems.utils.Constants;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.AccessDeniedException;
import org.springframework.security.access.ConfigAttribute;
import org.springframework.security.access.SecurityConfig;
import org.springframework.security.web.FilterInvocation;
import org.springframework.security.web.access.intercept.FilterInvocationSecurityMetadataSource;
import org.springframework.stereotype.Component;
import org.springframework.util.AntPathMatcher;
import org.springframework.util.CollectionUtils;

import java.util.Collection;
import java.util.LinkedList;
import java.util.List;

/**
 * @Author: CHENLIHUI
 * @Description:
 * @Date: Create in 11:41 2020/8/12
 */
@Component
public class UrlFilterInvocationSecurityMetadataSource implements FilterInvocationSecurityMetadataSource {

    @Autowired
    MenuMapper menuMapper;

    @Autowired
    RoleMenuMapper roleMenuMapper;

    @Autowired
    RoleMapper roleMapper;

    @Autowired
    MyProperties myProperties;


    /***
     * 返回该url所需要的用户权限信息
     *
     * @param o: 储存请求url信息
     * @return: null：标识不需要任何权限都可以访问
     */
    @Override
    public Collection<ConfigAttribute> getAttributes(Object o) throws IllegalArgumentException {
        //获取当前请求url
        String url = ((FilterInvocation) o).getRequestUrl();

        AntPathMatcher antPathMatcher = new AntPathMatcher();

        // TODO 忽略url请放在此处进行过滤放行
        for (String ignoreUrl : myProperties.getAuth().getIgnoreUrls()) {
            if (ignoreUrl.equals(url) || antPathMatcher.match(ignoreUrl,url)){
                return null;
            }
        }

        if (url.contains("/login") || url.contains("/groupChat")){
            return null;
        }

        // 数据库中所有url
        List<Menu> permissionList = menuMapper.selectList();
        for (Menu permission : permissionList) {
            // 获取该url所对应的权限
            if (permission.getPath() == null) {
                continue;
            }
            if ((permission.getPath()).equals(url) || antPathMatcher.match(permission.getPath(),url)) {
                List<RoleMenu> permissions = roleMenuMapper.selectList(permission.getId());
                List<String> roles = new LinkedList<>();
                if (!CollectionUtils.isEmpty(permissions)){
                    permissions.forEach( e -> {
                        Integer roleId = e.getRoleId();
                        Role role = roleMapper.selectById(roleId);
                        roles.add(role.getCode());
                    });
                }
                // 保存该url对应角色权限信息
                if (roles.size()==0) {
                    throw new AccessDeniedException("未授权该url！");
                }
                return SecurityConfig.createList(roles.toArray(new String[roles.size()]));
            }
        }
        // 如果数据中没有找到相应url资源则为非法访问，要求用户登录再进行操作
        return SecurityConfig.createList(Constants.ROLE_LOGIN);
    }

    @Override
    public Collection<ConfigAttribute> getAllConfigAttributes() {
        return null;
    }

    @Override
    public boolean supports(Class<?> aClass) {
        return FilterInvocation.class.isAssignableFrom(aClass);
    }
}
