package com.chen.ems.core.service;

import com.chen.ems.core.model.CollegeVO;
import com.chen.ems.core.model.UserInfoVO;
import com.chen.ems.utils.PageUtils;

import java.util.List;

/**
 * @Author: CHENLIHUI
 * @Description:
 * @Date: Create in 16:05 2021/3/2
 */
public interface AdminService {
     List<UserInfoVO> getStudentInfo(UserInfoVO userInfoVO);

    int updateStudent(UserInfoVO userInfoVO);

    int addStudent(UserInfoVO userInfoVO);

    List<UserInfoVO> getTeacherInfo(UserInfoVO userInfoVO);

    int updateTeacher(UserInfoVO userInfoVO);

    int addTeacher(UserInfoVO userInfoVO);

    List<CollegeVO> getCollegeInfo(CollegeVO collegeVO);

    List<UserInfoVO> getAdminInfo(UserInfoVO userInfoVO);

    void updateAdmin(UserInfoVO userInfoVO);

    int addAdmin(UserInfoVO userInfoVO);
}
