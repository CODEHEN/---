package com.chen.ems.core.controller.common;

import com.alibaba.excel.EasyExcel;
import com.alibaba.excel.ExcelWriter;
import com.alibaba.excel.support.ExcelTypeEnum;
import com.alibaba.fastjson.JSON;
import com.chen.ems.common.exception.MyException;
import com.chen.ems.core.mapper.ExcelMapper;
import com.chen.ems.core.model.ClassesVO;
import com.chen.ems.core.model.StudentGradeVO;
import com.chen.ems.core.pojo.User;
import com.chen.ems.core.service.GradeService;
import com.chen.ems.utils.*;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import io.swagger.annotations.ApiOperation;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletResponse;
import java.io.*;
import java.net.URLEncoder;
import java.nio.charset.StandardCharsets;
import java.util.*;

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

    @Autowired
    private ExcelConsumer<StudentGradeVO> excelConsumer;

    @PostMapping
    public ApiResult grade(@RequestBody List<StudentGradeVO> studentGradeVOs, @RequestParam String selectClass, @RequestParam String selectCourse, @RequestParam String person, @RequestParam String semester) {
        try {
            gradeService.save(studentGradeVOs, selectClass, selectCourse, person,semester);
            return ApiResult.ok(200, "保存成功");
        }catch (Exception e){
            e.printStackTrace();
            throw new MyException("500,保存失败,请重试");
        }
    }

    @PostMapping("/info")
    public ApiResult gradeInfo(@RequestBody StudentGradeVO gradeVO, @RequestParam("pageNum") Integer pageNum, @RequestParam("pageSize") Integer pageSize) {
        PageHelper.clearPage();
        if (StringUtils.isNotBlank(gradeVO.getOrder())) {
            PageHelper.startPage(pageNum, pageSize, "g.grade "+gradeVO.getOrder()+",u.number asc");
        }
        else {
            PageHelper.startPage(pageNum, pageSize, "u.number asc");
        }
        List<StudentGradeVO> gradeVOS = gradeService.getGradeInfo(gradeVO);
        PageInfo<StudentGradeVO> studentGradeVOPageInfo = new PageInfo<>(gradeVOS);
        return ApiResult.ok(200,"获取班级成绩信息成功",studentGradeVOPageInfo);
    }

    @PostMapping("/gradeExcel")
    public ApiResult gradeExcel(MultipartFile file, @RequestParam("selectClass") String selectClass, @RequestParam("selectCourse") String selectCourse, @RequestParam("person") String person, @RequestParam String semester){

        if (file == null) {
            return ApiResult.fail("未上传文件");
        }

        InputStream inputStream;

        try {
            inputStream  = file.getInputStream();
        }catch (IOException ex) {
            throw new MyException("Excel转换异常");
        }
        Map<String,String> maps = new HashMap<>();
        maps.put("type","grade"); // 批量操作的类型
        maps.put("selectClass",selectClass);
        maps.put("selectCourse",selectCourse);
        maps.put("person",person);
        maps.put("semester",semester);
        EasyExcel.read(inputStream, StudentGradeVO.class,new ExcelListener(excelConsumer,maps)).sheet().doRead();
        return ApiResult.ok(200,"插入成功");
    }

    @PostMapping("rankExport")
    public void exportRank(@RequestBody StudentGradeVO gradeVO, HttpServletResponse response){
        try {
            String fileName = "成绩排名.xlsx";
            File file = new File(fileName);
            List<LinkedList<String>> studentGradeVOS = gradeService.ranking(gradeVO);
            List<List<String>> head = new ArrayList<>();
            studentGradeVOS.get(0).forEach(s -> {
                List<String> head0 = new ArrayList<>();
                head0.add(s);
                head.add(head0);
            });
            List<List<Object>> data = new ArrayList<>();
            for (int i =1;i<studentGradeVOS.size();i++) {
                List<Object> data0 = new ArrayList<Object>();
                studentGradeVOS.get(i).forEach(s -> {
                    data0.add(s);
                });
                data.add(data0);
            }
            EasyExcel.write(fileName).head(head).sheet("排名").doWrite(data);
            downexcel(response,file);
            file.delete();
        }catch (Exception e) {
            throw new MyException("操作失败，请重试");
        }
    }

    @PostMapping("export")
    public void exportGrade(@RequestBody StudentGradeVO gradeVO, HttpServletResponse response){
        try {
            String fileName = gradeVO.getClasses()+gradeVO.getCourse()+"成绩.xlsx";
            File file = new File(fileName);
            List<StudentGradeVO> gradeVOS = gradeService.getGradeInfo(gradeVO);
            EasyExcel.write(fileName,StudentGradeVO.class).sheet(gradeVO.getCourse()).registerConverter(new LocalDateConverter()).doWrite(gradeVOS);
            downexcel(response,file);
            file.delete();
        }catch (Exception e) {
            throw new MyException("操作失败，请重试");
        }
    }

    @RequestMapping("download")
    public void downexcel(HttpServletResponse response,File file){
        try {
            // 要下载的文件的全路径名
            String filePath = file.getPath();
            // 获取文件名
            String filename = file.getName();
            //通过流把文件内容写入到客户端
            InputStream fis = new BufferedInputStream(new FileInputStream(filePath));
            byte[] buffer = new byte[fis.available()];
            fis.read(buffer);
            fis.close();
            // 清空response
            response.reset();
            // 设置response的Header
            response.addHeader("Content-Disposition", "attachment;filename=" + new String(filename.getBytes(), StandardCharsets.UTF_8));
            response.addHeader("Content-Length", "" + file.length());
            OutputStream toClient = new BufferedOutputStream(response.getOutputStream());
            response.setContentType("application/octet-stream");
            toClient.write(buffer);
            toClient.flush();
            toClient.close();
        } catch (IOException ex) {
            ex.printStackTrace();
        }
    }

    @PostMapping("/ranking")
    public ApiResult ranking(@RequestBody StudentGradeVO studentGradeVO) {
        List<LinkedList<String>> studentGradeVOS = gradeService.ranking(studentGradeVO);
        return ApiResult.ok(200,"成功",studentGradeVOS);
    }
    



}

