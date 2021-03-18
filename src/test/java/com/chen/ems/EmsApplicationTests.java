package com.chen.ems;

import cn.hutool.core.date.DateUnit;
import cn.hutool.core.date.DateUtil;
import cn.hutool.core.date.format.DateParser;
import org.junit.jupiter.api.Test;
import org.springframework.boot.test.context.SpringBootTest;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

@SpringBootTest
class EmsApplicationTests {

    @Test
    void contextLoads() throws ParseException {
        String s = "2021-03-18T13:01:28.938Z";
        SimpleDateFormat formatter=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        Date date = formatter.parse(s);
        System.out.println(date);
    }

}
