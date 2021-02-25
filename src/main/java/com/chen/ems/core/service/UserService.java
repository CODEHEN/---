package com.chen.ems.core.service;

import com.chen.ems.core.model.UserInfoVO;
import com.chen.ems.core.pojo.User;
import org.springframework.web.multipart.MultipartFile;

import java.util.List;

/**
 * @Author: CHENLIHUI
 * @Description:
 * @Date: Create in 20:52 2020/8/15
 */
public interface UserService {
    UserInfoVO getCurrentUserInfo(String token);

    int insertUserByExcel(List<User> userList);

    void insertUserRoleByExcel(List<User> list,int roleId);
}
