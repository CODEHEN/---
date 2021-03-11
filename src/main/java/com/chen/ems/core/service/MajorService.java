package com.chen.ems.core.service;

import com.chen.ems.core.model.ClassesVO;
import com.chen.ems.core.model.MajorVO;

import java.util.List;

/**
* @Author: ChenLiHui
* @Description: 描述
* @Date: 创建于21:12 2021-03-11
**/
public interface MajorService {
    /***
    * 根据学院名称查找该学院下的专业
    * @param name 学院名称
    * @return: java.util.List<com.chen.ems.core.model.MajorVO>
    * @Date: 2021/3/11
    */
    List<MajorVO> getMajorByCollegeName(String name);
}

