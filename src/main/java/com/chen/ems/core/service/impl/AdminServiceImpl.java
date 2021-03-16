package com.chen.ems.core.service.impl;

import com.chen.ems.core.mapper.AdminMapper;
import com.chen.ems.core.model.UserInfoVO;
import com.chen.ems.core.service.AdminService;
import com.chen.ems.utils.PageUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * @Author: CHENLIHUI
 * @Description:
 * @Date: Create in 16:05 2021/3/2
 */
@Service
public class AdminServiceImpl implements AdminService {

    @Autowired
    private AdminMapper adminMapper;

    @Override
    public List<UserInfoVO> getStudentInfo(UserInfoVO userInfoVO) {
        return adminMapper.getStudentInfo(userInfoVO);
    }

    @Override
    public int updateStudent(UserInfoVO userInfoVO) {
        return adminMapper.updateStudent(userInfoVO);
    }

    @Override
    public int addStudent(UserInfoVO userInfoVO) {
        int id = adminMapper.addStudent(userInfoVO);
        adminMapper.addStudentAndRole(userInfoVO.getId(),2);
        return id;
    }

    @Override
    public List<UserInfoVO> getTeacherInfo(UserInfoVO userInfoVO) {
        return adminMapper.getTeacherInfo(userInfoVO);
    }
}
