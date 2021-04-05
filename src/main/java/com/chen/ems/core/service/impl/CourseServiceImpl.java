package com.chen.ems.core.service.impl;

import com.chen.ems.core.mapper.*;
import com.chen.ems.core.model.*;
import com.chen.ems.core.service.CourseService;
import com.chen.ems.utils.ClassSchedulUtil;
import com.chen.ems.utils.Constants;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * @Author: ChenLiHui
 * @Description: 描述
 * @Date: 创建于18:44 2021-03-28
 **/
@Service
public class CourseServiceImpl implements CourseService {

    @Autowired
    private CourseMapper courseMapper;

    @Autowired
    private CollegeMapper collegeMapper;

    @Autowired
    private ClassRoomMapper classRoomMapper;

    @Autowired
    private CoursePlanMapper coursePlanMapper;

    @Autowired
    private TeacherCourseMapper teacherCourseMapper;

    @Autowired
    private ElectiveCourseMapper electiveCourseMapper;

    @Override
    public List<CourseVO> getCourseInfo(CourseVO courseVO) {
        return courseMapper.getClassesInfo(courseVO);
    }

    @Override
    public boolean addCourse(CourseVO courseVO) {
        boolean flag = courseMapper.isNullCourseId(courseVO.getCourseId());
        // true 不存在
        if (flag) {
            courseMapper.insert(courseVO);
        }
        return flag;
    }

    @Override
    public void deleteCourse(Integer id) {
        courseMapper.deleteByPrimaryKey(id);
    }

    @Override
    public void putCourse(CourseVO courseVO) {
        courseMapper.updateByPrimaryKey(courseVO);
    }

    @Override
    public List<ClassTaskVO> getClassTask(ClassTaskVO classTaskVO) {
        return courseMapper.getClassTask(classTaskVO);
    }

    @Override
    public List<String> getCourseName(String name) {
        return courseMapper.getCourseName(name);
    }

    @Override
    public void addClassTask(ClassTaskVO classTaskVO) {
        courseMapper.addClassTask(classTaskVO);
    }

    @Transactional(rollbackFor=Exception.class)
    @Override
    public boolean classScheduling(ClassTaskVO classTaskVO) {
            List<ClassTaskVO> classTaskList = courseMapper.selectBySemester(classTaskVO);

            List<String> geneList = coding(classTaskList);

            List<String> resultGeneList = codingTime(geneList);

            Map<String, List<String>> individualMap = transformIndividual(resultGeneList);

            individualMap = geneticEvolution(individualMap);

            //第六步分配教室
            List<String> resultList = finalResult(individualMap);

            //第七步对分配好时间教室的基因进行解码，准备存入数据库
            List<CoursePlanVO> coursePlanList = decoding(resultList);

            for (CoursePlanVO coursePlan : coursePlanList) {
                coursePlanMapper.insert(coursePlan);//将分配好时间和教室的对象更新到数据库中的course_plan数据表中
                teacherCourseMapper.insertTeacherCourse(coursePlan);//将分配好时间和教室的对象更新到数据库中的teacher_course数据表中
            }
            //第八步将开课学期还有上课周数更新进上课计划表(course_plan)，在编码里不包括开课学期以及上课周数所以需要这一步操作
            for (ClassTaskVO classTask1 : classTaskList) {
                coursePlanMapper.updateCoursePlan(classTask1);
            }
            //操作全部完成
            return true;
    }

    @Override
    public List<String> selectSemester(String semester) {
        return courseMapper.selectByColumnName(semester);
    }

    @Override
    public List<ClassTaskVO> studentSchedule(String number) {
        return courseMapper.studentSchedule(number);
    }

    @Override
    public List<ElectiveCourseVO> getElectiveCourseInfo(ElectiveCourseVO courseVO) {
        List<ElectiveCourseVO> courseVOS =  electiveCourseMapper.getElectiveCourseInfo(courseVO);
        for (ElectiveCourseVO course : courseVOS) {
            if (StringUtils.isNotBlank(course.getClassTime())) {
                int classTime = Integer.parseInt(course.getClassTime());
                int weekTime = classTime/5+1;
                int dayTime = classTime%5;
                if (dayTime == 0) {
                    weekTime = classTime/5;
                    dayTime = 5;
                }
                course.setClassTime("周"+weekTime+"第"+dayTime+"节");
            }
        }
        return courseVOS;
    }

    @Override
    public void addElectiveCourse(ElectiveCourseVO courseVO) {
        electiveCourseMapper.insert(courseVO);
    }

    @Override
    public void putElectiveCourse(ElectiveCourseVO courseVO) {
        electiveCourseMapper.updateByPrimaryKeySelective(courseVO);
    }

    private List<CoursePlanVO> decoding(List<String> resultList) {
        List<CoursePlanVO> coursePlanList = new ArrayList<>();
        for (String gene : resultList) {
            CoursePlanVO coursePlan = new CoursePlanVO();
            coursePlan.setCollegeno(ClassSchedulUtil.cutGene(Constants.COLLEGE_NO, gene));
            coursePlan.setClassno(ClassSchedulUtil.cutGene(Constants.CLASS_NO, gene));
            coursePlan.setCourseno(ClassSchedulUtil.cutGene(Constants.COURSE_NO, gene));
            coursePlan.setTeacherno(ClassSchedulUtil.cutGene(Constants.TEACHER_NO, gene));
            coursePlan.setClassroomno(ClassSchedulUtil.cutGene(Constants.CLASSROOM_NO, gene));
            coursePlan.setClasstime(ClassSchedulUtil.cutGene(Constants.CLASS_TIME, gene));
            coursePlanList.add(coursePlan);

        }
        return coursePlanList;
    }

    public List<String> finalResult(Map<String, List<String>> individualMap) {
        List<String> resultList = new ArrayList<>();//用来存放结果（加上教室编号的基因）
        List<String> resultGeneList = closedGene(individualMap);//合拢个体
        String classroomNo;//教室编号
        List<String> collegeNoList = courseMapper.selectByColumnName(Constants.COLLEGE_NO);//学院编号集合
        Map<String,List<String>> map = geneByCollege(resultGeneList,collegeNoList);//将基因按学院分配
        for (String collegeNo : map.keySet()) {
            String teachBuildNo = collegeMapper.selectBuildNo(collegeNo);//根据教务处划分的教学区域，查询学院对应的教学楼编号
            List<String> tempResultGeneList = map.get(collegeNo);//根据学院编号查询出该学院下的基因准备开始安排教室
            //根据教学楼编号查询出该教学楼下所有的教室来进行随机分配
            List<ClassRoomVO> classroomLocationList = classRoomMapper.selectByTeachBuildNo(teachBuildNo);
            for (String gene : tempResultGeneList) {
                classroomNo = assignClassroom(gene, classroomLocationList, resultList);
                gene = gene +","+ classroomNo;
                resultList.add(gene);
            }
        }

        return resultList;
    }

    public String assignClassroom(String gene, List<ClassRoomVO> classroomLocationList, List<String> resultList) {
//        List<ClassRoomVO> sportsBuildingInfo = classRoomMapper.selectByTeachBuildNo("08");//体育大楼
        List<ClassRoomVO> experimentalBuildingInfo = classRoomMapper.selectByTeachBuildNo("4");//实验大楼
//        List<ClassRoomVO> medicalBuildingInfo = classRoomMapper.selectByTeachBuildNo("10");//医学实验大楼

//        String classNo = ClassSchedulUtil.cutGene(Constants.CLASS_NO, gene);
//        int studentNumber = classInfoDao.selectStudentNumber(classNo);
        String courseAttr = ClassSchedulUtil.cutGene(Constants.COURSE_ATTR, gene);
        //如果课程属性是"03"表示体育课，从体育楼里选择一个教室
        if (courseAttr.equals(Constants.EXPERIMENTAL_COURSE)) {
            return chooseClassroom(gene, experimentalBuildingInfo, resultList);
        }
//        } else if (courseAttr.equals(Constants.ELECTRICITY_CODE) || courseAttr.equals(Constants.COMPUTER_CODE) || courseAttr.equals(ConstantInfo.PHYSICAL_EXPERIMENT_CODE)) {
//            //如果课程属性是"08"、"10"、"12"表示电子实验课、计算机实验课、物理实验课则需要在实验楼里选择一个教室
//            return chooseClassroom(studentNumber, gene, experimentalBuildingInfo, resultList);
//        } else if (courseAttr.equals(Constants.MEDICAL_CODE)) {
//            //如果课程属性是"04"表示医学实验课，需要从医学楼里选择一个教室
//            return chooseClassroom(studentNumber, gene, medicalBuildingInfo, resultList);
        else {
            //理论实验课码值以及其他特殊的码值，不需要在特殊的教学楼里分配。由教务处指定的楼已经可以直接获取
            return chooseClassroom(gene, classroomLocationList, resultList);
        }

    }

    private String chooseClassroom(String gene, List<ClassRoomVO> classroomLocationList, List<String> resultList) {
        int min = 0;
        int max = classroomLocationList.size() - 1;
        int temp = min + (int) (Math.random() * (max + 1 - min));//生成一个随机数，用来选取一个教室
        ClassRoomVO classroom = classroomLocationList.get(temp);
        if (isRedundant(gene, resultList, classroom)) {
            return classroom.getId().toString();
        } else {
            return chooseClassroom(gene, classroomLocationList, resultList);
        }
    }

    private Boolean judgingClassroom(String gene, ClassRoomVO classroomLocation, List<String> resultList) {
//        String courseAttr = ClassSchedulUtil.cutGene(Constants.COURSE_ATTR, gene);
        //如果课程属性是"01"或者"02"则表示是理论课教室，则教室属性为"01"即可
//        if (courseAttr.equals(Constants.PROFESSIONAL_COURSE) || courseAttr.equals(Constants.ELECTIVE_CODE)) {
//            //课程属性"01"或者"02"同时教室属性为"01"
//            if (classroomLocation.getClassroomattr().equals("01")) {
//                //教室容量大于学上课人数
//                if (studentNumber <= classroomLocation.getCapacity()) {
//                    //判断教室上课时间是否重复
//                    return isRedundant(gene, resultList, classroomLocation);
//                } else {
//                    return false;
//                }
//            } else {
//                return false;
//            }
//        } else {
            //如果课程属性不为"01或者"02"则课程属性和教室属性一一对应
            if (ClassSchedulUtil.cutGene(Constants.COURSE_ATTR, gene).equals(classroomLocation.getClassroomattr())) {
                //教室容量大于学生容量
//                if (studentNumber <= classroomLocation.getCapacity()) {
                    //判断教室上课时间是否重复
                    return isRedundant(gene, resultList, classroomLocation);
//                } else {
//                    return false;
//                }
            } else {
                return false;
            }
//        }

    }

    private Boolean isRedundant(String gene, List<String> resultList, ClassRoomVO classroomLocation) {
        //当教室还没有开始分配时，第一个分配的班级可以随意分配教室而不会重复
        if (resultList.size() == 0) {
            return true;
        } else {
            for (String resultGene : resultList) {
                //如果分配的教室已经在之前分配了则需要去判断时间是否有冲突
                if (ClassSchedulUtil.cutGene(Constants.CLASSROOM_NO, resultGene).equals(classroomLocation.getId())) {
                    //如果时间一样的话测表示有冲突
                    if (ClassSchedulUtil.cutGene(Constants.CLASS_TIME, gene).equals(ClassSchedulUtil.cutGene(Constants.CLASS_TIME, resultGene))) {
                        return false;
                    }
                }
            }
        }
        return true;
    }

    private Map<String,List<String>> geneByCollege(List<String> resultGeneList,List<String> collegeNoList){
        Map<String,List<String>> map = new HashMap<>();
        for(String collegeNo : collegeNoList){
            List<String> geneList = new ArrayList<>();
            for(String gene : resultGeneList){
                if(ClassSchedulUtil.cutGene(Constants.COLLEGE_NO,gene).equals(collegeNo)){
                    geneList.add(gene);
                }
            }
            if(geneList.size() > 0){
                map.put(collegeNo,geneList);
            }
        }
        return map;
    }

    private List<String> coding(List<ClassTaskVO> classTaskList) {
        List<Map<String, List<String>>> geneList = new ArrayList<>();
        Map<String, List<String>> geneListMap = new HashMap<>();
        List<String> unFixedTimeGeneList = new ArrayList<>();//不固定时间的编码基因组
        for (ClassTaskVO classTask : classTaskList) {
                //计算一周的上课次数，一次对应一个基因，2次对应两个基因。依此类推
                int size = classTask.getWeeksNumber();
                for (int i = 0; i < size; i++) {
                    String gene = classTask.getIsFix()+"," + classTask.getCollegeNo()+"," + classTask.getClassNo()+"," + classTask.getTeacherNo()+"," + classTask.getCourseNo()+"," + classTask.getCourseAttr();
                    unFixedTimeGeneList.add(gene);
                }
        }
        return unFixedTimeGeneList;
    }

    //获取基因数组为基因分配时间，完成完整版的基因编码
    private List<String> codingTime(List<String> geneList) {
        List<String> resultGeneList = new ArrayList<>();
        //时间不固定的基因由程序进行随机分配
        for (String gene : geneList) {
            //获取一个不重复的时间片值
            String classTime = ClassSchedulUtil.randomTime(gene, resultGeneList);
            gene = gene +","+classTime;
            resultGeneList.add(gene);
        }
        return resultGeneList;
    }

    public Map<String, List<String>> transformIndividual(List<String> resultGeneList) {
        Map<String, List<String>> individualMap = new HashMap<>();
        List<String> classNoList = courseMapper.selectByColumnName(Constants.CLASS_NO);
        for (String classNo : classNoList) {
            List<String> geneList = new ArrayList<>();
            for (String gene : resultGeneList) {
                if (classNo.equals(ClassSchedulUtil.cutGene(Constants.CLASS_NO, gene))) {
                    geneList.add(gene);
                }
            }

            if (geneList.size() > 1) {
                individualMap.put(classNo, geneList);
            }
        }
        return individualMap;
    }

    public Map<String, List<String>> geneticEvolution(Map<String, List<String>> individualMap) {
        int generation = Constants.GENERATION;//进化代数设为100
        List<String> resultGeneList;
        for (int i = 0; i < generation; ++i) {
            //第一步完成交叉操作,产生新一代的父本
            individualMap = hybridization(individualMap);
            //第二步合拢个体准备变异
            closedGene(individualMap);
            //第三步开始变异
            resultGeneList = geneticMutation(closedGene(individualMap));
            //第四步进行冲突检测并消除
            conflictResolution(resultGeneList);
            //第五步将冲突消除后的个体再次进行分割，按班级进行分配准备进入下一次的进化
            individualMap = transformIndividual(conflictResolution(resultGeneList));

        }
        return individualMap;
    }

    private List<String> conflictResolution(List<String> resultGeneList) {
        exit:
        for (int i = 0; i < resultGeneList.size(); ++i) {
            String gene = resultGeneList.get(i);
            String teacherNo = ClassSchedulUtil.cutGene(Constants.TEACHER_NO, gene);
            String classTime = ClassSchedulUtil.cutGene(Constants.CLASS_TIME, gene);
            for (int j = i + 1; j < resultGeneList.size(); ++j) {
                String tempGene = resultGeneList.get(j);
                String tempTeacherNo = ClassSchedulUtil.cutGene(Constants.TEACHER_NO, tempGene);
                String tempClassTime = ClassSchedulUtil.cutGene(Constants.CLASS_TIME, tempGene);
                if (teacherNo.equals(tempTeacherNo) && classTime.equals(tempClassTime)) {
                    String newClassTime = ClassSchedulUtil.randomTime(gene, resultGeneList);
                    gene = gene.substring(0,gene.lastIndexOf(",")) +"," + newClassTime;
                    // 这里不确定
                    resultGeneList.set(i,gene);
                    continue exit;
                }

            }
        }
        return resultGeneList;
    }

    private List<String> geneticMutation(List<String> resultGeneList) {
        int min = 0;
        int max = resultGeneList.size() - 1;
        double mutationRate = 0.01;//变异概率
        int mutationNumber = (int) (resultGeneList.size() * mutationRate);//每一代所要选取的变异个数,计算公式为基因数量*变异率
        if (mutationNumber < 1) {
            mutationNumber = 1;
        }
        for (int i = 0; i < mutationNumber; ) {
            int temp = min + (int) (Math.random() * (max + 1 - min));//生成随机数
            String gene = resultGeneList.get(temp);
            if (ClassSchedulUtil.cutGene(Constants.IS_FIX, gene).equals("2")) {
                break;
            } else {
                String newClassTime = ClassSchedulUtil.randomTime(gene, resultGeneList);
                gene = gene.substring(0,gene.lastIndexOf(",")) +"," + newClassTime;
                resultGeneList.remove(temp);
                resultGeneList.add(temp, gene);
                i = i + 1;
            }

        }
        return resultGeneList;
    }

    private List<String> closedGene(Map<String, List<String>> individualMap) {
        List<String> resultGeneList = new ArrayList<>();
        for (List<String> individualList : individualMap.values()) {
            resultGeneList.addAll(individualList);
        }
        return resultGeneList;
    }

    private Map<String, List<String>> hybridization(Map<String, List<String>> individualMap) {
        for (String classNo : individualMap.keySet()) {
            List<String> individualList = individualMap.get(classNo);
            List<String> oldIndividualList = individualList;
            individualList = selectiveGene(individualList);//进行基因的交叉操作生成新个体
            //对父代的适应度值和新生成的子代适应值进行对比，选择适应度值高的一个进入下一代的遗传
            if (ClassSchedulUtil.alculateExpectedValue(individualList) >= ClassSchedulUtil.alculateExpectedValue(oldIndividualList)) {
                individualMap.put(classNo, individualList);
            } else {
                individualMap.put(classNo, oldIndividualList);
            }

        }
        return individualMap;
    }

    private List<String> selectiveGene(List<String> individualList) {
        int min = 0;
        int max = individualList.size() - 1;
        boolean flag;
        do {
            //随机生成0到individualList.size - 1的两个数，用来选取基因
            int firstTemp = min + (int) (Math.random() * (max + 1 - min));//选取第一个随机数
            int secondTemp = min + (int) (Math.random() * (max + 1 - min));//选取第二个随机数
            String firstGene = individualList.get(firstTemp);//获取第一条基因
            String secondGene = individualList.get(secondTemp);//获取第二条基因
            //判断选择的两个随机数为否相同，确保不会选择同一条基因进行交叉操作
            if (firstTemp == secondTemp) {
                flag = false;
            } else if (ClassSchedulUtil.cutGene(Constants.IS_FIX, firstGene).equals("2") || ClassSchedulUtil.cutGene(Constants.IS_FIX, secondGene).equals("2")) {
                //判断选择的两条基因对应的时间值是否固定，如果固定则重新选择两条
                flag = false;
            } else {
                //分别获取所选的两条基因的时间片值
                String firstClassTime = ClassSchedulUtil.cutGene(Constants.CLASS_TIME, firstGene);
                String secondClassTime = ClassSchedulUtil.cutGene(Constants.CLASS_TIME, secondGene);
                //将它们的时间进行交换
                firstGene = firstGene.substring(0,firstGene.lastIndexOf(",")) +","+ secondClassTime;
                secondGene = secondGene.substring(0,firstGene.lastIndexOf(",")) +","+ firstClassTime;
                //对原有的基因进行移除，然后将交换过时间的两条基因添加进去
                individualList.remove(firstTemp);
                individualList.add(firstTemp, firstGene);
                individualList.remove(secondTemp);
                individualList.add(secondTemp, secondGene);
                flag = true;
            }
        } while (!flag);
        return individualList;
    }


}

