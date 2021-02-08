package com.chen.ems.core.pojo;

import com.chen.ems.common.validator.Create;
import com.chen.ems.common.validator.FieldRepeatValidator;
import com.chen.ems.common.validator.Update;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;
import org.hibernate.validator.constraints.Length;
import org.springframework.format.annotation.DateTimeFormat;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;
import java.io.Serializable;
import java.util.Date;

/**
 * @Author: CHENLIHUI
 * @Description:
 * @Date: Create in 15:55 2020/8/11
 */
@Data
@ApiModel(description = "用户信息表")
//@FieldRepeatValidator(field = "number", message = "账号重复，请重新输入账号！")  // 这个注解用来进行字段是否重复判断
public class User implements Serializable {

    private static final long serialVersionUID = -676268320955065133L;

    /**
     * 主键ID  groups:标识在更新的时候才能验证非空
     */
    @ApiModelProperty(value = "主键ID")
    private Integer id;

    /**
     * 学号user
     */
    @ApiModelProperty(value = "学号")
    @NotBlank(message = "学号不能为空", groups = {Create.class, Update.class})
    @Pattern(regexp = "^[0-9]$", message = "只能包含数字")
    private String number;

    /**
     * 姓名
     */
    @ApiModelProperty(value = "姓名")
    @NotBlank(message = "姓名不能为空", groups = {Create.class, Update.class})
    @Length(min = 2, message = "姓名最少两个字符")
    private String username;

    /**
     * 登录密码
     */
    @ApiModelProperty(value = "登录密码")
    @NotBlank(message = "密码不能为空", groups = {Create.class, Update.class})
    @Length(min = 6,max = 12, message = "密码长度6-12位")
    private String password;

    /**
     * 盐值
     */
    @ApiModelProperty(value = "盐值")
    private String salt;

    /**
     * token
     */
    @ApiModelProperty(value = "token")
    private String token;

    /**
     * open_id
     */
    private String openId;
    /**
     * skey
     */
    private String skey;
    /**
     * 创建时间
     */
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date createTime;
    /**
     * 最后登录时间
     */
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date lastVisitTime;
    /**
     * session_key
     */
    private String sessionKey;
    /**
     * 市
     */
    private String city;
    /**
     * 省
     */
    private String province;
    /**
     * 国
     */
    private String country;
    /**
     * 头像
     */
    private String avatarUrl;
    /**
     * 性别
     */
    private Integer gender;
    /**
     * 网名
     */
    private String nickName;


}
