package com.chen.ems.core.model;

import com.fasterxml.jackson.annotation.JsonIgnore;
import lombok.Data;

import java.io.Serializable;

/**
 * @Author: CHENLIHUI
 * @Description:
 * @Date: Create in 20:09 2021/3/3
 */
@Data
public class ClassesVO implements Serializable {

    private static final long serialVersionUID = 3493713094919774446L;

    private Integer id;

    private String name;

    private String major;

    private Integer studentNum;
}
