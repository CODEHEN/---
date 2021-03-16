package com.chen.ems.core.model;

import com.alibaba.excel.annotation.ExcelProperty;
import com.google.common.collect.Sets;
import lombok.Data;

import java.io.Serializable;
import java.util.LinkedHashSet;
import java.util.Set;
import java.util.TreeSet;

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
     * 班级
     */
    private String classes;

    /**
     * 学院
     */
    private String college;

    /**
     * 专业
     */
    private String major;

    /**
     * 性别
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

    /**
     * 生源地
     */
    private String origin;

    /**
     * 家庭地址
     */
    private String address;

    /**
     * 政治面貌
     */
    private String political;

    private Set<String> roles = Sets.newHashSet();

    private Set<MenuVO> menus = new LinkedHashSet<>();

}
