package com.chen.ems.core.model;

import java.io.Serializable;
import lombok.Data;

/**
 * ems_teach_build
 * @author 
 */
@Data
public class TeachBuildVO implements Serializable {
    private Integer id;

    private String buildName;

    private Integer classRoomNum;

    private static final long serialVersionUID = 1L;
}