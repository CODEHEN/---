package com.chen.ems.core.mapper;

import com.chen.ems.core.model.RewardPunishmentVO;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface RewardPunishmentMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(RewardPunishmentVO record);

    int insertSelective(RewardPunishmentVO record);

    RewardPunishmentVO selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(RewardPunishmentVO record);

    int updateByPrimaryKey(RewardPunishmentVO record);

    List<RewardPunishmentVO> selectInfo(RewardPunishmentVO rewardPunishmentVO);
}