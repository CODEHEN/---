package com.chen.ems.core.service.impl;

import com.chen.ems.core.mapper.ClassesMapper;
import com.chen.ems.core.model.ClassesVO;
import com.chen.ems.core.service.ClassesService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @Author: CHENLIHUI
 * @Description: 描述
 * @Date: 创建于20:06 2021-03-03
 **/
@Service
public class ClassesServiceImpl implements ClassesService {

    @Autowired
    private ClassesMapper classesMapper;

    @Override
    public List<ClassesVO> getClassByCollege(String name) {
        return classesMapper.getClassByCollege(name);
    }
}

