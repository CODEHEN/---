package com.chen.ems.utils;

import org.springframework.stereotype.Component;

import java.util.List;
import java.util.Map;

@Component
public interface ExcelConsumer<E> {
    void excute(List<E> e, Map<String,String> map);
}
