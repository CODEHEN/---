package com.chen.ems.core.model;

import java.io.Serializable;
import lombok.Data;

@Data
public class MajorVO implements Serializable {
    /**
     * 主键
     */
    private Integer id;

    /**
     * 专业名称
     */
    private String majorName;

    /**
     * 所属学院
     */
    private Integer college;

    private Integer studentNum;

    /**
     * 专科/本科
     */
    private String type;

    private static final long serialVersionUID = 1L;
}

