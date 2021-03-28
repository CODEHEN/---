package com.chen.ems.core.service.impl;

import com.chen.ems.core.mapper.TeachBuildMapper;
import com.chen.ems.core.model.TeachBuildVO;
import com.chen.ems.core.service.Teach_BuildService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @Author: ChenLiHui
 * @Description: 描述
 * @Date: 创建于13:00 2021-03-27
 **/
@Service
public class Teach_BuildServiceImpl implements Teach_BuildService {
    @Autowired
    private TeachBuildMapper teachBuildMapper;

    @Override
    public List<TeachBuildVO> geInfo(TeachBuildVO teachBuildVO) {
        return teachBuildMapper.selectInfo(teachBuildVO);
    }

    @Override
    public void addTeachBuild(TeachBuildVO teachBuildVO) {
        teachBuildMapper.insert(teachBuildVO);
    }

    @Override
    public void puteachBuild(TeachBuildVO teachBuildVO) {
        teachBuildMapper.updateByPrimaryKeySelective(teachBuildVO);
    }
}

