package com.chen.ems.core.controller.common;

import com.chen.ems.core.model.ClassTaskVO;
import com.chen.ems.core.model.CourseVO;
import com.chen.ems.core.model.ElectiveCourseVO;
import com.chen.ems.core.model.StudentElectiveVO;
import com.chen.ems.core.service.ClassRoomService;
import com.chen.ems.core.service.CourseService;
import com.chen.ems.utils.ApiResult;
import com.chen.ems.utils.CommonUtil;
import com.chen.ems.utils.Constants;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import io.swagger.annotations.ApiOperation;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

/**
 * @Author: ChenLiHui
 * @Description: 描述
 * @Date: 创建于18:44 2021-03-28
 **/
@RestController
@RequestMapping("/course")
public class CourseController {

    @Autowired
    private CourseService courseService;

    @Autowired
    private ClassRoomService classRoomService;

    private static void accept(ClassTaskVO item) {
        String s = CommonUtil.courseSwitch(item.getCourseAttr());
        item.setCourseAttr(s);
    }

    private static void accept(CourseVO item) {
        String s = CommonUtil.courseSwitch(item.getCourseAttr());
        item.setCourseAttr(s);
    }

    @PostMapping("/info")
    @ApiOperation(value = "管理员获取课程信息", httpMethod = "POST", response = ApiResult.class, notes = "获取成功")
    public ApiResult getCourseInfo(@RequestBody CourseVO courseVO, @RequestParam("pageNum") Integer pageNum, @RequestParam("pageSize") Integer pageSize) {
        PageHelper.clearPage();
        PageHelper.startPage(pageNum, pageSize);
        List<CourseVO> courseVOS = courseService.getCourseInfo(courseVO);
        PageInfo<CourseVO> courseVOPageInfo = new PageInfo<>(courseVOS);
        courseVOPageInfo.getList().forEach(CourseController::accept);
        return ApiResult.ok(200, "获取课程信息成功", courseVOPageInfo);
    }

    @PostMapping
    @ApiOperation(value = "添加课程", httpMethod = "POST", response = ApiResult.class, notes = "添加成功")
    public ApiResult addCourse(@RequestBody CourseVO courseVO) {
        boolean flag = courseService.addCourse(courseVO);
        if (flag) {
            return ApiResult.ok(200, "添加成功");
        }
        return ApiResult.fail(400,"课程编号已存在");
    }

    @PutMapping
    @ApiOperation(value = "修改课程", httpMethod = "Put", response = ApiResult.class, notes = "删除成功")
    public ApiResult putCourse(@RequestBody CourseVO courseVO) {
        if (courseVO.getCourseAttr().length() > 2) {
            switch (courseVO.getCourseAttr()) {
                case "专业课":
                    courseVO.setCourseAttr(Constants.PROFESSIONAL_COURSE);
                    break;
                case "学科基础课":
                    courseVO.setCourseAttr(Constants.BASIC_COURSE);
                    break;
                case "通识教育课":
                    courseVO.setCourseAttr(Constants.GENERAL_EDUCATION_COURSE);
                    break;
                case "专业选修课":
                    courseVO.setCourseAttr(Constants.SPECIALIZED_ELECTIVE_COURSE);
                    break;
                case "公共选修课":
                    courseVO.setCourseAttr(Constants.PUBLIC_ELECTIVE_COURSE);
                    break;
                case "实验课":
                    courseVO.setCourseAttr(Constants.EXPERIMENTAL_COURSE);
                    break;
                default:
                    courseVO.setCourseAttr("错误课程");
                    break;
            }
            courseVO.setCourseAttr(CommonUtil.CourseSwitchReverse(courseVO.getCourseAttr()));
        }
        courseService.putCourse(courseVO);
        return ApiResult.ok(200, "删除成功");
    }

    @PostMapping("/classTask")
    @ApiOperation(value = "管理员获取开课信息", httpMethod = "POST", response = ApiResult.class, notes = "获取成功")
    public ApiResult getClassTask(@RequestBody ClassTaskVO classTaskVO, @RequestParam("pageNum") Integer pageNum, @RequestParam("pageSize") Integer pageSize) {
        PageHelper.clearPage();
        PageHelper.startPage(pageNum, pageSize);
        List<ClassTaskVO> classTask =courseService.getClassTask(classTaskVO);
        PageInfo<ClassTaskVO> classTaskVoPageInfo = new PageInfo<>(classTask);
        classTaskVoPageInfo.getList().forEach(CourseController::accept);
        return ApiResult.ok(200, "获取开课信息成功", classTaskVoPageInfo);
    }

    @GetMapping("/name")
    public ApiResult getCourseName(@RequestParam("value") String name) {
        List<String> courseNames = courseService.getCourseName(name);
        return ApiResult.ok(200,"获取成功",courseNames);
    }

    @PostMapping("/classTask/add")
    public ApiResult addClassTask(@RequestBody ClassTaskVO classTaskVO) {
        courseService.addClassTask(classTaskVO);
        return ApiResult.ok(200,"添加成功",classTaskVO);
    }

    @PostMapping("/classScheduling")
    public ApiResult classScheduling(@RequestBody ClassTaskVO classTaskVO){
        if(courseService.classScheduling(classTaskVO)){
            return ApiResult.ok(200,"排课成功");
        }
        return ApiResult.fail("排课失败");
    }

    @GetMapping("/semester")
    public ApiResult semester() {
        List<String> semesters = courseService.selectSemester("semester");
        return ApiResult.ok(200,"获取成功",semesters);
    }

    @GetMapping("/studentSchedule")
    public ApiResult studentSchedule(@RequestParam("number") String number) {
        List<ClassTaskVO> classTasks = courseService.studentSchedule(number);
        return ApiResult.ok(200,"获取成功",classTasks);
    }

    @PostMapping("/elective/info")
    @ApiOperation(value = "管理员获取选修课程信息", httpMethod = "POST", response = ApiResult.class, notes = "获取成功")
    public ApiResult getElectiveCourseInfo(@RequestBody ElectiveCourseVO courseVO, @RequestParam("pageNum") Integer pageNum, @RequestParam("pageSize") Integer pageSize) {
        PageHelper.clearPage();
        PageHelper.startPage(pageNum, pageSize);
        List<ElectiveCourseVO> courseVOS = courseService.getElectiveCourseInfo(courseVO);
        PageInfo<ElectiveCourseVO> courseVOPageInfo = new PageInfo<>(courseVOS);
        return ApiResult.ok(200, "获取课程信息成功", courseVOPageInfo);
    }

    @PostMapping("/elective")
    @ApiOperation(value = "添加选修课程", httpMethod = "POST", response = ApiResult.class, notes = "添加成功")
    public ApiResult addElectiveCourse(@RequestBody ElectiveCourseVO courseVO) {
        courseService.addElectiveCourse(courseVO);
        return ApiResult.ok(200, "添加成功");
    }

    @PutMapping("/elective")
    @ApiOperation(value = "修改选修课程", httpMethod = "Put", response = ApiResult.class, notes = "修改成功")
    public ApiResult putElectiveCourse(@RequestBody ElectiveCourseVO courseVO) {
        if (StringUtils.isNotBlank(courseVO.getClassroomId())&&courseVO.getClassroomId().contains("-")){
            Integer classRoomId = classRoomService.getId(courseVO.getClassroomId());
            courseVO.setClassroomId(Integer.toString(classRoomId));
        }
        courseService.putElectiveCourse(courseVO);
        return ApiResult.ok(200, "修改成功");
    }

    @PostMapping("/elective/student")
    @ApiOperation(value = "学生选修课程", httpMethod = "Post", response = ApiResult.class, notes = "修改成功")
    public ApiResult studentElectiveCourse(@RequestBody StudentElectiveVO electiveVO) {
        boolean flag = courseService.studentElectiveCourse(electiveVO);
        if (!flag) {
            return ApiResult.fail(201, "课程已选满");
        }
        return ApiResult.ok(200, "选课成功");
    }

    @DeleteMapping("/elective/student")
    @ApiOperation(value = "学生退课", httpMethod = "Post", response = ApiResult.class, notes = "修改成功")
    public ApiResult studentdelCourse(@RequestBody StudentElectiveVO electiveVO) {
        courseService.studentdelCourse(electiveVO);
        return ApiResult.ok(200, "退课成功");
    }

    @PostMapping("/elective/student/info")
    @ApiOperation(value = "学生选课结果", httpMethod = "Post", response = ApiResult.class, notes = "修改成功")
    public ApiResult studentCourseInfo(@RequestBody StudentElectiveVO electiveVO,@RequestParam("pageNum") Integer pageNum, @RequestParam("pageSize") Integer pageSize) {
        PageHelper.clearPage();
        PageHelper.startPage(pageNum, pageSize);
        List<ElectiveCourseVO> electiveCourseVOS = courseService.getstudentCourseInfo(electiveVO);
        PageInfo<ElectiveCourseVO> courseVOPageInfo = new PageInfo<>(electiveCourseVOS);
        return ApiResult.ok(200, "获取课程信息成功", courseVOPageInfo);
    }


}

