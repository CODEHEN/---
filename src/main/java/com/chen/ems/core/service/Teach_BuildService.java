package com.chen.ems.core.service;

import com.chen.ems.core.model.TeachBuildVO;

import java.util.List;

/**
* @Author: ChenLiHui
* @Description: 描述
* @Date: 创建于13:00 2021-03-27
**/
public interface Teach_BuildService {
    List<TeachBuildVO> geInfo(TeachBuildVO teachBuildVO);

    void addTeachBuild(TeachBuildVO teachBuildVO);

    void puteachBuild(TeachBuildVO teachBuildVO);
}

