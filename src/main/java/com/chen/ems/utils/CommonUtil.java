package com.chen.ems.utils;

import com.github.pagehelper.PageInfo;
import org.apache.poi.ss.formula.functions.T;

/**
 * @description:
 * @author: ChenLiHui
 * @create: 2021-03-29 20:35
 **/

public class CommonUtil {

    public static String courseSwitch(String obj) {
        switch (obj) {
            case Constants.PROFESSIONAL_COURSE:
                return "专业课";
            case Constants.BASIC_COURSE:
                return "学科基础课";
            case Constants.GENERAL_EDUCATION_COURSE:
                return "通识教育课";
            case Constants.SPECIALIZED_ELECTIVE_COURSE:
                return "专业选修课";
            case Constants.PUBLIC_ELECTIVE_COURSE:
                return "公共选修课";
            case Constants.EXPERIMENTAL_COURSE:
                return "实验课";
            default:
                return "错误课程";
        }
    }

    public static String CourseSwitchReverse(String obj) {
        switch (obj) {
            case "专业课":
                return Constants.PROFESSIONAL_COURSE;
            case "学科基础课":
                return Constants.BASIC_COURSE;
            case "通识教育课":
                return Constants.GENERAL_EDUCATION_COURSE;
            case "专业选修课":
                return Constants.SPECIALIZED_ELECTIVE_COURSE;
            case "公共选修课":
                return Constants.PUBLIC_ELECTIVE_COURSE;
            default:
                return "错误课程";
        }
    }
}
