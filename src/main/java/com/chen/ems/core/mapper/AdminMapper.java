package com.chen.ems.core.mapper;


import com.chen.ems.core.model.CollegeVO;
import com.chen.ems.core.model.UserInfoVO;
import com.chen.ems.utils.PageUtils;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import java.util.List;

/**
 * @Author: CHENLIHUI
 * @Description:
 * @Date: Create in 16:09 2021/3/2
 */
@Mapper
public interface AdminMapper {
    /**
     * 管理员获取根据条件学生信息
     */
    List<UserInfoVO> getStudentInfo(UserInfoVO userInfoVO);

    int updateStudent(UserInfoVO userInfoVO);

    int addStudent(UserInfoVO userInfoVO);

    void addStudentAndRole(@Param("id")int id,@Param("roleId") int i);

    List<UserInfoVO> getTeacherInfo(UserInfoVO userInfoVO);

    int updateTeacher(UserInfoVO userInfoVO);

    int addTeacher(UserInfoVO userInfoVO);

    void addTeacherAndRole(@Param("id")int id,@Param("roleId") int i);

    List<CollegeVO> getCollegeInfo(CollegeVO collegeVO);

    List<UserInfoVO> getAdminInfo(UserInfoVO userInfoVO);

    void updateAdmin(UserInfoVO userInfoVO);

    int addAdmin(UserInfoVO userInfoVO);

    void addAdminAndRole(@Param("id")int id,@Param("roleId") int i);
}
