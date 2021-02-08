package com.chen.ems.core.pojo;

import com.chen.ems.common.validator.FieldRepeatValidator;
import com.chen.ems.core.model.MenuVO;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;
import org.hibernate.validator.constraints.Length;

import javax.validation.constraints.NotBlank;
import java.io.Serializable;

/**
 * @Author: CHENLIHUI
 * @Description:
 * @Date: Create in 11:46 2020/8/12
 */

@Data
@ApiModel(description = "系统管理-菜单表 ")
//@FieldRepeatValidator(field = "resources", message = "菜单编码重复！")
public class Menu implements Serializable {

    private static final long serialVersionUID = -8297185336241547464L;

    /**
     * 主键
     */
    @ApiModelProperty(value = "主键")
    private Integer id;

    /**
     * 上级菜单ID
     */
    @ApiModelProperty(value = "上级菜单ID")
    private String parentId;

    /**
     * path
     */
    @ApiModelProperty(value = "path")
    private String path;

    /**
     * 菜单编码
     */
    @ApiModelProperty(value = "菜单编码")
    @NotBlank(message = "菜单编码不能为空")
    @Length(max = 100, message = "菜单编码不能超过100个字符")
    private String resources;

    /**
     * 菜单名称
     */
    @ApiModelProperty(value = "菜单名称")
    @NotBlank(message = "菜单名称不能为空")
    private String name;

    /**
     * 菜单级别
     */
    @ApiModelProperty(value = "菜单级别")
    private Integer level;

    /**
     * 排序
     */
    @ApiModelProperty(value = "排序")
    private Integer sortNo;

    /**
     * 菜单图标
     */
    @ApiModelProperty(value = "菜单图标")
    private String icon;

    /**
     * 类型 menu、button
     */
    @ApiModelProperty(value = "类型 menu、button")
    @NotBlank(message = "类型不能为空")
    private String type;

    /**
     * 备注
     */
    @ApiModelProperty(value = "备注")
    private String remarks;
    /**
     * 组件
     */
    @ApiModelProperty(value = "组件")
    private String component;
}
