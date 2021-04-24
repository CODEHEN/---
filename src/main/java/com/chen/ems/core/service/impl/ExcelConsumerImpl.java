package com.chen.ems.core.service.impl;

import com.chen.ems.core.mapper.StudentGradeMapper;
import com.chen.ems.utils.ExcelConsumer;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.Map;

/**
 * @description:
 * @author: ChenLiHui
 * @create: 2021-04-20 00:35
 **/

@Service
public class ExcelConsumerImpl implements ExcelConsumer {
    @Autowired
    private StudentGradeMapper studentGradeMapper;

    @Override
    @Transactional(rollbackFor=Exception.class)
    public void excute(List e, Map map) {
        String type = (String) map.get("type");
        String selectClass = (String) map.get("selectClass");
        String selectCourse = (String) map.get("selectCourse");
        String person = (String) map.get("person");
        String semester = (String) map.get("semester");
        if (StringUtils.isNotBlank(type) && "grade".equals(type)) {
            studentGradeMapper.insertGradeExcel(e,selectClass,selectCourse,person,semester);
        }
    }
}
