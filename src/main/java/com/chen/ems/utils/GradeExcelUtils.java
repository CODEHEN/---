package com.chen.ems.utils;

import com.alibaba.excel.context.AnalysisContext;
import com.alibaba.excel.event.AnalysisEventListener;
import com.chen.ems.core.pojo.User;
import com.chen.ems.core.service.UserService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.util.ArrayList;
import java.util.List;

/**
 * @Author: CHENLIHUI
 * @Description:
 * @Date: Create in 19:30 2021/2/20
 */
public class GradeExcelUtils extends AnalysisEventListener<User> {
    private static final Logger LOGGER = LoggerFactory.getLogger(GradeExcelUtils.class);

    /**
     * 每隔5条存储数据库，实际使用中可以3000条，然后清理list ，方便内存回收
     */
    private static final int BATCH_COUNT = 3000;

    private UserService userService;
    private int roleId;

    List<User> list = new ArrayList<>();

    public GradeExcelUtils(UserService userService, int roleId){
        this.userService = userService;
        this.roleId = roleId;
    }

    @Override
    public void invoke(User user, AnalysisContext analysisContext) {
        list.add(user);
        // 达到BATCH_COUNT了，需要去存储一次数据库，防止数据几万条数据在内存，容易OOM
        if (list.size() >= BATCH_COUNT) {
            userService.saveData(list,roleId);
            // 存储完成清理 list
            list.clear();
        }
    }

    @Override
    public void doAfterAllAnalysed(AnalysisContext analysisContext) {
        userService.saveData(list,roleId);
        LOGGER.info("所有数据解析完成！");
    }

}
