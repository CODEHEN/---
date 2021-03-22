package com.chen.ems.core.mapper;

import com.chen.ems.core.model.NoticeVO;

public interface NoticeMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(NoticeVO record);

    int insertSelective(NoticeVO record);

    NoticeVO selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(NoticeVO record);

    int updateByPrimaryKey(NoticeVO record);
}