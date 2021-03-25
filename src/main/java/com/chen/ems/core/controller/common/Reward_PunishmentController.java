package com.chen.ems.core.controller.common;

import com.chen.ems.core.model.ClassesVO;
import com.chen.ems.core.model.RewardPunishmentVO;
import com.chen.ems.core.service.Reward_PunishmentService;
import com.chen.ems.utils.ApiResult;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import springfox.documentation.service.ApiInfo;

import java.util.List;

/**
 * @Author: ChenLiHui
 * @Description: 描述
 * @Date: 创建于20:00 2021-03-25
 **/
@RestController
@RequestMapping("/rap")
public class Reward_PunishmentController {

    @Autowired
    private Reward_PunishmentService reward_PunishmentService;

    @PostMapping("/info")
    public ApiResult RaPInfo(@RequestBody RewardPunishmentVO rewardPunishmentVO, @RequestParam("pageNum") Integer pageNum, @RequestParam("pageSize") Integer pageSize) {
        PageHelper.clearPage();
        PageHelper.startPage(pageNum, pageSize);
        List<RewardPunishmentVO> rewardPunishmentVOS = reward_PunishmentService.geInfo(rewardPunishmentVO);
        PageInfo<RewardPunishmentVO> rewardPunishmentVOPageInfo = new PageInfo<>(rewardPunishmentVOS);
        return ApiResult.ok(200,"获取管理员信息成功",rewardPunishmentVOPageInfo);
    }

    @PostMapping
    public ApiResult addRepu(@RequestBody RewardPunishmentVO rewardPunishmentVO) {
        reward_PunishmentService.addRepu(rewardPunishmentVO);
        return ApiResult.ok(200,"保存成功");
    }

    @DeleteMapping
    @ApiOperation(value = "删除奖惩", httpMethod = "DELETE", response = ApiResult.class, notes = "删除成功")
    public ApiResult deleteNotice(@RequestParam("id") Integer id) {
        reward_PunishmentService.delRepu(id);
        return ApiResult.ok(200,"删除成功");
    }


}

