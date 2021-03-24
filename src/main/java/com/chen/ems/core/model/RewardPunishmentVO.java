package com.chen.ems.core.model;

import java.io.Serializable;
import lombok.Data;

/**
 * ems_reward_punishment
 * @author 
 */
@Data
public class RewardPunishmentVO implements Serializable {
    /**
     * 主键
     */
    private Integer id;

    /**
     * 奖惩人
     */
    private String name;

    /**
     * 奖惩内容
     */
    private String content;

    /**
     * 奖惩类别
     */
    private String type;

    private static final long serialVersionUID = 1L;
}