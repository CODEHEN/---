package com.chen.ems.core.controller.common;

import com.chen.ems.core.model.ClassesVO;
import com.chen.ems.core.model.NoticeVO;
import com.chen.ems.core.service.NoticeControllerService;
import com.chen.ems.utils.ApiResult;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

/**
 * @Author: ChenLiHui
 * @Description: 描述
 * @Date: 创建于22:56 2021-03-22
 **/
@RestController
@RequestMapping("/notice")
public class NoticeController {

    @Autowired
    private NoticeControllerService noticeControllerService;

    @PostMapping("/info")
    @ApiOperation(value = "获取全部通知", httpMethod = "post", response = ApiResult.class, notes = "获取成功")
    public ApiResult noticeInfo(@RequestBody NoticeVO noticeVO, @RequestParam("pageNum") Integer pageNum, @RequestParam("pageSize") Integer pageSize) {
        PageHelper.clearPage();
        PageHelper.startPage(pageNum, pageSize);
        List<NoticeVO> noticeVOS = noticeControllerService.getNotice(noticeVO);
        PageInfo<NoticeVO> noticeVOPageInfo = new PageInfo<>(noticeVOS);
        return ApiResult.ok(200,"获取成功",noticeVOPageInfo);
    }

    @PostMapping
    @ApiOperation(value = "添加通知", httpMethod = "POST", response = ApiResult.class, notes = "添加成功")
    public ApiResult notice(@RequestBody NoticeVO noticeVO) {
        noticeControllerService.addNotice(noticeVO);
        return ApiResult.ok(200,"添加成功");
    }

    @DeleteMapping
    @ApiOperation(value = "删除通知", httpMethod = "DELETE", response = ApiResult.class, notes = "删除成功")
    public ApiResult deleteNotice(@RequestParam("id") Integer id) {
        noticeControllerService.delNotice(id);
        return ApiResult.ok(200,"删除成功");
    }

}

