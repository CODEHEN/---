package com.chen.ems.core.service.impl;

import com.chen.ems.core.mapper.RewardPunishmentMapper;
import com.chen.ems.core.model.RewardPunishmentVO;
import com.chen.ems.core.service.Reward_PunishmentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @Author: ChenLiHui
 * @Description: 描述
 * @Date: 创建于20:00 2021-03-25
 **/
@Service
public class Reward_PunishmentServiceImpl implements Reward_PunishmentService {

    @Autowired
    private RewardPunishmentMapper rewardPunishmentMapper;

    @Override
    public List<RewardPunishmentVO> geInfo(RewardPunishmentVO rewardPunishmentVO) {
        return rewardPunishmentMapper.selectInfo(rewardPunishmentVO);
    }

    @Override
    public void addRepu(RewardPunishmentVO rewardPunishmentVO) {
        rewardPunishmentMapper.insert(rewardPunishmentVO);
    }

    @Override
    public void delRepu(Integer id) {
        rewardPunishmentMapper.deleteByPrimaryKey(id);
    }
}

