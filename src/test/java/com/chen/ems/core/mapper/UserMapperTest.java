package com.chen.ems.core.mapper;

import com.chen.ems.core.pojo.User;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;

import static org.junit.jupiter.api.Assertions.*;

/**
 * @Author: CHENLIHUI
 * @Description:
 * @Date: Create in 17:20 2020/8/11
 */

class UserMapperTest {
    @Autowired
    private UserMapper userMapper;

    @Test
   public void test() {
       User user = userMapper.selectUserByNumber("201701420428");
        System.out.println(user);
   }


}