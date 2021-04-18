package com.chen.ems.core.controller.common;

import com.chen.ems.common.exception.MyException;
import com.chen.ems.core.model.ClassesVO;
import com.chen.ems.core.model.StudentGradeVO;
import com.chen.ems.core.service.GradeService;
import com.chen.ems.utils.ApiResult;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

/**
 * @Author: ChenLiHui
 * @Description: 描述
 * @Date: 创建于21:30 2021-04-17
 **/
@RestController
@RequestMapping("grade")
public class GradeController {

    @Autowired
    private GradeService gradeService;

    @PostMapping
    public ApiResult grade(@RequestBody List<StudentGradeVO> studentGradeVOs, @RequestParam String selectClass, @RequestParam String selectCourse, @RequestParam String person) {
        try {
            gradeService.save(studentGradeVOs, selectClass, selectCourse, person);
            return ApiResult.ok(200, "保存成功");
        }catch (Exception e){
            e.printStackTrace();
            throw new MyException("500,保存失败,请重试");
        }
    }

    @PostMapping("/info")
    public ApiResult gradeInfo(@RequestBody StudentGradeVO gradeVO, @RequestParam("pageNum") Integer pageNum, @RequestParam("pageSize") Integer pageSize) {
        PageHelper.clearPage();
        PageHelper.startPage(pageNum, pageSize);
        List<StudentGradeVO> gradeVOS = gradeService.getGradeInfo(gradeVO);
        PageInfo<StudentGradeVO> studentGradeVOPageInfo = new PageInfo<>(gradeVOS);
        return ApiResult.ok(200,"获取班级成绩信息成功",studentGradeVOPageInfo);
    }



}

