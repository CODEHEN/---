package com.chen.ems.core.service;

import com.chen.ems.core.model.RewardPunishmentVO;

import java.util.List;

/**
* @Author: ChenLiHui
* @Description: 描述
* @Date: 创建于20:00 2021-03-25
**/
public interface Reward_PunishmentService {
    List<RewardPunishmentVO> geInfo(RewardPunishmentVO rewardPunishmentVO);

    void addRepu(RewardPunishmentVO rewardPunishmentVO);

    void delRepu(Integer id);
}

