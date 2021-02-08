package com.chen.ems.core.controller;

import com.alibaba.fastjson.JSON;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.ServletResponse;
import java.io.PrintWriter;

/**
 * @Author: CHENLIHUI
 * @Description:
 * @Date: Create in 14:45 2020/8/8
 */
@Controller
@Slf4j
public class Test {

    @GetMapping("/index")
    @ResponseBody
    public void index(ServletResponse response) {
        PrintWriter out = null;
        try {
            response.setCharacterEncoding("UTF-8");
            response.setContentType("application/json");
            out = response.getWriter();
            out.println(JSON.toJSONString("result"));
        } catch (Exception e) {
            log.error(e + "输出JSON出错");
        } finally {
            if (out != null) {
                out.flush();
                out.close();
            }
        }
    }

    @GetMapping("/home")
    @ResponseBody
    public String home() {
        return "欢迎来到主页 ~";
    }

}
