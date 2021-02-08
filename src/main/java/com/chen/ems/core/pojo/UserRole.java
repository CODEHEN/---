package com.chen.ems.core.pojo;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

import java.io.Serializable;

/**
 * @Author: CHENLIHUI
 * @Description:  用户角色关联表
 * @Date: Create in 19:43 2020/8/11
 */
@Data
@ApiModel(description = "用户角色关联表 ")
public class UserRole implements Serializable {

    private static final long serialVersionUID = 8836550914900194991L;

    /**
     * 主键
     */
    @ApiModelProperty(value = "主键")
    private Integer id;
    /**
     * 用户ID
     */
    @ApiModelProperty(value = "用户ID")
    private Integer userId;
    /**
     * 角色ID
     */
    @ApiModelProperty(value = "角色ID")
    private Integer roleId;
}
