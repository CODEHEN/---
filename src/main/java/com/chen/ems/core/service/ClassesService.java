package com.chen.ems.core.service;

import com.chen.ems.core.model.ClassesVO;

import java.util.List;

/**
* @Author: CHENLIHUI
* @Description: 描述
* @Date: 创建于20:06 2021-03-03
**/
public interface ClassesService {
    List<ClassesVO> getClassByCollege(int id);
}

