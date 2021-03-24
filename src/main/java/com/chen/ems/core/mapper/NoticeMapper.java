package com.chen.ems.core.mapper;

import com.chen.ems.core.model.NoticeVO;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface NoticeMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(NoticeVO record);

    List<NoticeVO> getNotice(NoticeVO noticeVO);
}