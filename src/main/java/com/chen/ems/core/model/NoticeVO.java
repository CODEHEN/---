package com.chen.ems.core.model;

import java.io.Serializable;
import java.util.Date;
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
     * 创建人
     */
    private String createdName;

    /**
     * 创建时间
     */
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