package com.chen.ems.core.pojo;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;
import org.hibernate.validator.constraints.Length;

import javax.validation.constraints.NotBlank;
import java.io.Serializable;

/**
 * @Author: CHENLIHUI
 * @Description:    角色表
 * @Date: Create in 17:36 2020/8/11
 */
@Data
@ApiModel(description = "角色表 ")
public class Role implements Serializable {

    private static final long serialVersionUID = 7214111743234242612L;

    /**
     * 主键ID
     */
    @ApiModelProperty(value = "主键ID")
    private Integer id;

    /**
     * 角色编码
     */
    @ApiModelProperty(value = "角色编码")
    @NotBlank(message = "角色编码不能为空")
    @Length(max = 32, message = "角色编码不能超过32个字符")
    private String code;

    /**
     * 角色名称
     */
    @ApiModelProperty(value = "角色名称")
    @NotBlank(message = "角色名称不能为空")
    private String name;


}
