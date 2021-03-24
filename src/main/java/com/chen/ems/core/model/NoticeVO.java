package com.chen.ems.core.model;

import java.io.Serializable;
import java.util.Date;

import com.fasterxml.jackson.annotation.JsonFormat;
import lombok.Data;

/**
 * ems_notice
 * @author 
 */
@Data
public class NoticeVO implements Serializable {
    /**
     * 主键
     */
    private Integer id;

    /**
     * 创建人ID
     */
    private Integer createdId;

    /**
     * 创建人姓名
     */
    private String createdName;

    /**
     * 创建时间
     */
    @JsonFormat(shape = JsonFormat.Shape.STRING, pattern = "yyyy-MM-dd HH:mm:ss", timezone = "UTC")
    private Date createdTime;

    /**
     * 内容
     */
    private String content;

    /**
     * 标题
     */
    private String title;

    private static final long serialVersionUID = 1L;
}