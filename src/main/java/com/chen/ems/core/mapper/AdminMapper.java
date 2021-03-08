package com.chen.ems.core.mapper;


import com.chen.ems.core.model.UserInfoVO;
import com.chen.ems.utils.PageUtils;
import org.apache.ibatis.annotations.Mapper;
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
}
