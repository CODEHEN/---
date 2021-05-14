package com.chen.ems.core.service;

import com.chen.ems.core.model.UserInfoVO;
import com.chen.ems.core.pojo.User;
import org.springframework.web.multipart.MultipartFile;

import java.util.Arrays;
import java.util.List;

/**
 * @Author: CHENLIHUI
 * @Description:
 * @Date: Create in 20:52 2020/8/15
 */
public interface UserService {
    UserInfoVO getCurrentUserInfo(String token);

    void saveData(List<User> list, int roleId);

    List<String> getName(String value);

    List<String> getteaName(String value);

    void updateInfo(UserInfoVO userInfoVO);

    String getPwd(String number);

    void updatePwd(String newPwd, String number);

    User getCurrentUserInfoByNumber(String number);
}
