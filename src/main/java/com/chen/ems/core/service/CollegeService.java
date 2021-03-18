package com.chen.ems.core.service;

import com.chen.ems.core.model.CollegeVO;

import java.util.List;

/**
 * @Author: CHENLIHUI
 * @Description:
 * @Date: Create in 16:22 2021/3/3
 */
public interface CollegeService {
    /**
     * @Description: 获取全部的学院信息
     * @Param: []
     * @return: java.util.List<com.chen.ems.core.model.CollegeVO>
     */
    List<CollegeVO> getCollege();

    void addCollege(CollegeVO collegeVO);

    void putCollege(CollegeVO collegeVO);
}
