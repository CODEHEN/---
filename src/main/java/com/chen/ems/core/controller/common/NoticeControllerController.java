package com.chen.ems.core.controller.common;

import com.chen.ems.core.service.NoticeControllerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * @Author: ChenLiHui
 * @Description: 描述
 * @Date: 创建于22:56 2021-03-22
 **/
@RestController
@RequestMapping("/notice")
public class NoticeControllerController {

    @Autowired
    private NoticeControllerService noticeControllerService;



}

