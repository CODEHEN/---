package com.chen.ems.core.model;

import lombok.Data;

import java.io.Serializable;

/**
 * @Author: CHENLIHUI
 * @Description:
 * @Date: Create in 16:25 2021/3/3
 */
@Data
public class CollegeVO implements Serializable {

    private static final long serialVersionUID = -4620497778305963494L;

    private Integer id;

    private String name;
}
