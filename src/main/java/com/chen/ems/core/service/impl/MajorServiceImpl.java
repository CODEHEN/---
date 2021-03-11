package com.chen.ems.core.service.impl;

import com.chen.ems.core.mapper.MajorMapper;
import com.chen.ems.core.model.MajorVO;
import com.chen.ems.core.service.MajorService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @Author: ChenLiHui
 * @Description: 描述
 * @Date: 创建于21:12 2021-03-11
 **/
@Service
public class MajorServiceImpl implements MajorService {

    @Autowired
    private MajorMapper mapper;

    @Override
    public List<MajorVO> getMajorByCollegeName(String name) {
        return mapper.getMajorByCollegeName(name);
    }
}

