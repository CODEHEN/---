package com.chen.ems.core.model;

import com.alibaba.fastjson.annotation.JSONField;
import com.fasterxml.jackson.annotation.JsonFormat;
import lombok.Data;

import java.io.Serializable;
import java.util.Date;

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

    @JsonFormat(shape = JsonFormat.Shape.STRING, pattern = "yyyy-MM-dd HH:mm:ss", timezone = "GMT+8")
    private Date createdTime;

    private Integer studentNum;

    private Integer teacherNum;

}
