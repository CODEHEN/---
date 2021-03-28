package com.chen.ems.utils;

import java.util.HashMap;
import java.util.Map;

/**
 * @Author: CHENLIHUI
 * @Description: 全局
 * @Date: Create in 20:06 2020/8/11
 */
public class Constants {
    /**
     * 接口url
     */
    public static Map<String,String> URL_MAPPING_MAP = new HashMap<>();

    /**
     *  获取项目根目录
     */
    public static String PROJECT_ROOT_DIRECTORY = System.getProperty("user.dir");

    /**
     * 密码加密相关
     */
    public static String SALT = "zhengqing";
    public static final int HASH_ITERATIONS = 1;

    /**
     * 请求头 - token
     */
    public static final String REQUEST_HEADER = "X-Token";

    /**
     * 请求头类型：
     * application/x-www-form-urlencoded ： form表单格式
     * application/json ： json格式
     */
    public static final String REQUEST_HEADERS_CONTENT_TYPE = "application/json";

    /**
     * 登录者角色
     */
    public static final String ROLE_LOGIN = "role_login";

    /**
     * 专业课
     */
    public static final String PROFESSIONAL_COURSE = "01";

    /**
     * 学科基础课
     */
    public static final String BASIC_COURSE = "02";

    /**
     * 通识教育课
     */
    public static final String GENERAL_EDUCATION_COURSE="03";

    /**
     * 专业选修课
     */
    public static final String SPECIALIZED_ELECTIVE_COURSE="04";

    /**
     * 公共选修课
     */
    public static final String PUBLIC_ELECTIVE_COURSE="05";
}
