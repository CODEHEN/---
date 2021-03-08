package com.chen.ems.core.service.impl;

import com.chen.ems.core.mapper.CollegeMapper;
import com.chen.ems.core.model.CollegeVO;
import com.chen.ems.core.service.CollegeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @Author: CHENLIHUI
 * @Description:
 * @Date: Create in 16:31 2021/3/3
 */

@Service
public class CollegeServiceImpl implements CollegeService {
    @Autowired
    private CollegeMapper collegeMapper;

    @Override
    public List<CollegeVO> getCollege() {
        return collegeMapper.getCollege();
    }
}
