package com.chen.ems.core.model;

import com.fasterxml.jackson.annotation.JsonIgnore;
import com.google.common.collect.Lists;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

import java.io.Serializable;
import java.util.List;

/**
 * @Author: CHENLIHUI
 * @Description: 权限-菜单
 * @Date: Create in 21:01 2020/8/15
 */
@Data
public class MenuVO implements Serializable {

    @JsonIgnore
    private transient Integer id;

    /**
     * 上级菜单ID
     */
    @JsonIgnore
    private transient String parentId;

    /**
     * 菜单编码
     */
//    private String resources;

    /**
     * 菜单名称
     */
    private String name;

    /**
     * 菜单级别
     */
//    private Integer level;

    /**
     * 菜单图标
     */
//    private String icon;

    /**
     * 组件
     */
    @ApiModelProperty(value = "组件")
    private String component;

    /**
     * path
     */
    @ApiModelProperty(value = "path")
    private String path;

    List<MenuVO> children = Lists.newArrayList();

}
