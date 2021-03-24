package com.chen.ems.core.service.impl;

import com.chen.ems.core.mapper.NoticeMapper;
import com.chen.ems.core.model.NoticeVO;
import com.chen.ems.core.service.NoticeControllerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @Author: ChenLiHui
 * @Description: 描述
 * @Date: 创建于22:56 2021-03-22
 **/
@Service
public class NoticeControllerServiceImpl implements NoticeControllerService {
    @Autowired
    private NoticeMapper noticeMapper;

    @Override
    public List<NoticeVO> getNotice(NoticeVO noticeVO) {
        return noticeMapper.getNotice(noticeVO);
    }

    @Override
    public void addNotice(NoticeVO noticeVO) {
        noticeMapper.insert(noticeVO);
    }

    @Override
    public void delNotice(Integer id) {
        noticeMapper.deleteByPrimaryKey(id);
    }
}

