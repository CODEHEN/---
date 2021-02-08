package com.chen.ems.core.pojo;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

import java.io.Serializable;

/**
 * @Author: CHENLIHUI
 * @Description:
 * @Date: Create in 12:01 2020/8/12
 */
@Data
@ApiModel(description = "系统管理 - 角色-菜单关联表 ")
public class RoleMenu implements Serializable {

    /**
     * 主键
     */
    @ApiModelProperty(value = "主键")
    private Integer id;

    /**
     * 角色ID
     */
    @ApiModelProperty(value = "角色ID")
    private Integer roleId;

    /**
     * 菜单ID
     */
    @ApiModelProperty(value = "菜单ID")
    private Integer menuId;
}
