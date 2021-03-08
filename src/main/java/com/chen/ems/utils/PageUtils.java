package com.chen.ems.utils;

import lombok.Data;

/**
 * @Author: CHENLIHUI
 * @Description:
 * @Date: Create in 14:11 2021/3/3
 */
@Data
public class PageUtils {
    private int pageNum;

    private int pageSize;

    /**
     * 学号
     */
    private String number;

    private String username;


}
