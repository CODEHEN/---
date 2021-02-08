package com.chen.ems.core.model;

import com.google.common.collect.Sets;
import lombok.Data;

import java.io.Serializable;
import java.util.Set;

/**
 * @Author: CHENLIHUI
 * @Description:
 * @Date: Create in 20:54 2020/8/15
 */
@Data
public class UserInfoVO implements Serializable {

    private static final long serialVersionUID = -2970648879603853827L;

    private Integer id;

    /**
     * 账号
     */
    private String number;

    private String username;

    /**
     * 性别：0是男 1是女
     */
    private String sex;

    /**
     * 手机号码
     */
    private String phone;

    /**
     * 邮箱
     */
    private String email;

    /**
     * 头像
     */
    private String avatar;

    /**
     * 状态
     */
    private String flag;

    private Set<String> roles = Sets.newHashSet();

    private Set<MenuVO> menus = Sets.newHashSet();

}
