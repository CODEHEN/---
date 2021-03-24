package com.chen.ems.core.service;

import com.chen.ems.core.model.NoticeVO;

import java.util.List;

/**
* @Author: ChenLiHui
* @Description: 描述
* @Date: 创建于22:56 2021-03-22
**/
public interface NoticeControllerService {
    List<NoticeVO> getNotice(NoticeVO noticeVO);

    void addNotice(NoticeVO noticeVO);

    void delNotice(Integer id);
}

