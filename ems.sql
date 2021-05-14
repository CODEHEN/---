-- MySQL dump 10.13  Distrib 8.0.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: ems
-- ------------------------------------------------------
-- Server version	8.0.17

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `ems_build_college`
--

DROP TABLE IF EXISTS `ems_build_college`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ems_build_college` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `teachBuildNo` varchar(2) NOT NULL,
  `collegeNo` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ems_build_college`
--

LOCK TABLES `ems_build_college` WRITE;
/*!40000 ALTER TABLE `ems_build_college` DISABLE KEYS */;
INSERT INTO `ems_build_college` (`id`, `teachBuildNo`, `collegeNo`) VALUES (1,'1','1'),(2,'5','3'),(3,'2','4'),(4,'3','5');
/*!40000 ALTER TABLE `ems_build_college` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ems_class_task`
--

DROP TABLE IF EXISTS `ems_class_task`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ems_class_task` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `semester` varchar(20) NOT NULL,
  `collegeNo` int(20) NOT NULL,
  `classNo` int(20) NOT NULL,
  `courseNo` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `majorNo` int(4) NOT NULL,
  `teacherNo` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `courseAttr` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `studentNumber` int(4) NOT NULL DEFAULT '53',
  `weeksSum` int(4) NOT NULL DEFAULT '11',
  `weeksNumber` int(4) NOT NULL,
  `isFix` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '1',
  `classTime` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ems_class_task`
--

LOCK TABLES `ems_class_task` WRITE;
/*!40000 ALTER TABLE `ems_class_task` DISABLE KEYS */;
INSERT INTO `ems_class_task` (`id`, `semester`, `collegeNo`, `classNo`, `courseNo`, `majorNo`, `teacherNo`, `courseAttr`, `studentNumber`, `weeksSum`, `weeksNumber`, `isFix`, `classTime`) VALUES (37,'2020-2021-1',1,4,'012217',1,'2017010007','02',53,11,2,'1',NULL),(38,'2020-2021-1',1,5,'012217',1,'2017010007','02',53,11,2,'1',NULL),(39,'2020-2021-1',1,4,'200005',1,'2017010007','01',53,11,2,'1',NULL),(40,'2019-2020-2',1,4,'012217',1,'2017010007','02',53,11,2,'1',NULL),(41,'2019-2020-1',1,5,'012217',1,'2017010007','02',53,11,2,'1',NULL),(42,'2018-2019-2',1,4,'200005',1,'2017010007','01',53,11,2,'1',NULL);
/*!40000 ALTER TABLE `ems_class_task` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ems_classes`
--

DROP TABLE IF EXISTS `ems_classes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ems_classes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL COMMENT '班级名',
  `major` int(11) NOT NULL COMMENT '所属专业',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ems_classes`
--

LOCK TABLES `ems_classes` WRITE;
/*!40000 ALTER TABLE `ems_classes` DISABLE KEYS */;
INSERT INTO `ems_classes` (`id`, `name`, `major`) VALUES (1,'2017软件本1班',1),(2,'2017软件本2班',1),(3,'2017软件本3班',1),(4,'2017软件本4班',1),(5,'2017软件本5班',1),(6,'2017软件本6班',1),(7,'2017软件本7班',1),(8,'2017网络工程本1班',2),(9,'电子商务本1班',21),(13,'物联网1班',3);
/*!40000 ALTER TABLE `ems_classes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ems_classroom`
--

DROP TABLE IF EXISTS `ems_classroom`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ems_classroom` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `teach_build_id` int(11) NOT NULL,
  `classroomName` varchar(255) NOT NULL,
  `classroomAttr` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '01',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ems_classroom`
--

LOCK TABLES `ems_classroom` WRITE;
/*!40000 ALTER TABLE `ems_classroom` DISABLE KEYS */;
INSERT INTO `ems_classroom` (`id`, `teach_build_id`, `classroomName`, `classroomAttr`) VALUES (1,1,'01-101','01'),(2,1,'01-102','01'),(3,1,'01-103','01'),(4,1,'01-104','01'),(5,1,'01-105','01'),(6,2,'02-101','01'),(7,2,'02-102','01'),(8,2,'02-103','01'),(9,1,'01-105','01'),(10,2,'02-106','01'),(11,5,'05-101','01'),(12,5,'05-102','01'),(13,5,'05-103','01'),(14,5,'05-104','01'),(15,5,'05-105','01'),(16,5,'05-106','01'),(17,4,'04-101','02'),(18,4,'04-102','02'),(19,4,'04-103','02'),(20,4,'04-104','02'),(21,4,'04-105','02'),(22,4,'04-106','02');
/*!40000 ALTER TABLE `ems_classroom` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ems_college`
--

DROP TABLE IF EXISTS `ems_college`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ems_college` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(255) NOT NULL COMMENT '学院名称',
  `created_time` datetime NOT NULL DEFAULT '2000-01-11 00:00:00' COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ems_college`
--

LOCK TABLES `ems_college` WRITE;
/*!40000 ALTER TABLE `ems_college` DISABLE KEYS */;
INSERT INTO `ems_college` (`id`, `name`, `created_time`) VALUES (1,'计算机科学与工程学院','2021-03-19 02:54:52'),(2,'国际商学院','2021-03-21 06:28:42'),(3,'艺术学院','2000-01-06 00:00:00'),(4,'电子科学与工程学院','2000-01-11 00:00:00'),(5,'管理学院','2000-01-11 00:00:00'),(6,'通识教育学院','2000-01-11 00:00:00'),(10,'测试学院','2021-03-21 08:29:31'),(11,'测试 学院','2021-03-21 12:30:34'),(12,'陈利辉','2021-03-21 12:33:39'),(13,'admin','2021-03-21 12:33:55');
/*!40000 ALTER TABLE `ems_college` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ems_course_info`
--

DROP TABLE IF EXISTS `ems_course_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ems_course_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `course_id` varchar(11) NOT NULL,
  `course_name` varchar(255) NOT NULL,
  `course_attr` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ems_course_info`
--

LOCK TABLES `ems_course_info` WRITE;
/*!40000 ALTER TABLE `ems_course_info` DISABLE KEYS */;
INSERT INTO `ems_course_info` (`id`, `course_id`, `course_name`, `course_attr`) VALUES (1,'200001','Java程序设计','01'),(2,'200002','数据结构与算法','01'),(3,'200003','军事理论','01'),(4,'200004','计算机基础','01'),(5,'200005','C语言程序设计','01'),(6,'021120120','结构力学','01'),(7,'200008','测试课程','03'),(8,'897658','测试','04'),(9,'345678','测试课程','03'),(10,'200009','测试课程9','03'),(11,'200010','测试课程','03'),(12,'012210','离散数学','02'),(13,'012218','数字逻辑','02'),(14,'012217','JAVA高级编程','02'),(15,'051119','马克思主义基本原理','03'),(16,'051116','大学英语（3）','03'),(17,'051115','概率论与数理统计','02');
/*!40000 ALTER TABLE `ems_course_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ems_course_plan`
--

DROP TABLE IF EXISTS `ems_course_plan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ems_course_plan` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `collegeNo` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `classNo` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `courseNo` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `teacherNo` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `classroomNo` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `classTime` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `weeksSum` int(4) DEFAULT NULL,
  `semester` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `un` (`classroomNo`,`classTime`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1326 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ems_course_plan`
--

LOCK TABLES `ems_course_plan` WRITE;
/*!40000 ALTER TABLE `ems_course_plan` DISABLE KEYS */;
INSERT INTO `ems_course_plan` (`id`, `collegeNo`, `classNo`, `courseNo`, `teacherNo`, `classroomNo`, `classTime`, `weeksSum`, `semester`) VALUES (1320,'1','4','012217','2017010007','9','18',NULL,'2020-2021-1'),(1321,'1','4','012217','2017010007','4','06',NULL,'2020-2021-1'),(1322,'1','4','200005','2017010007','2','24',NULL,'2020-2021-1'),(1323,'1','4','200005','2017010007','4','16',NULL,'2020-2021-1'),(1324,'1','5','012217','2017010007','4','14',NULL,'2020-2021-1'),(1325,'1','5','012217','2017010007','3','21',NULL,'2020-2021-1');
/*!40000 ALTER TABLE `ems_course_plan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ems_electivecourse`
--

DROP TABLE IF EXISTS `ems_electivecourse`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ems_electivecourse` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `course_id` varchar(20) NOT NULL,
  `course_name` varchar(30) NOT NULL,
  `teacher_id` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `classroom_id` int(20) DEFAULT NULL,
  `class_time` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `course_attr` varchar(20) NOT NULL,
  `type` int(10) NOT NULL,
  `totalNum` int(10) NOT NULL,
  `remaining` int(10) NOT NULL,
  `semester` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ujn` (`course_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ems_electivecourse`
--

LOCK TABLES `ems_electivecourse` WRITE;
/*!40000 ALTER TABLE `ems_electivecourse` DISABLE KEYS */;
INSERT INTO `ems_electivecourse` (`id`, `course_id`, `course_name`, `teacher_id`, `classroom_id`, `class_time`, `course_attr`, `type`, `totalNum`, `remaining`, `semester`) VALUES (1,'A0740024','世界地理',NULL,NULL,NULL,'专业选修课',0,45,44,'2020-2021-1'),(2,'A0370022','民歌鉴赏',NULL,NULL,NULL,'通识教育课',0,50,49,'2020-2021-1'),(3,'A0200024','隋唐史',NULL,NULL,NULL,'通识教育课',0,50,50,'2020-2021-1'),(4,'001121430','星海求知：天文学的奥秘',NULL,NULL,NULL,'通识教育课',0,50,50,'2020-2021-1'),(5,'001121050','探索发现：生命',NULL,NULL,NULL,'通识教育课',0,50,50,'2020-2021-1'),(6,'0211201202','结构力学','2015010005',7,'5','通识教育课',1,45,45,'2020-2021-1'),(7,'001120190','重说中国近代史','2015010005',4,'4','通识教育课',1,50,50,'2020-2021-1'),(10,'A0893921','测试课程','2015010005',4,'15','专业选修课',1,45,45,'2020-2021-1'),(11,'A0893567','线上测试',NULL,NULL,NULL,'通识教育课',0,56,56,'2020-2021-1'),(12,'A08945671','测试课程2','2015010005',7,'6','通识教育课',1,50,50,'2020-2021-1'),(13,'A08939211','测试课程3','2015010005',8,'5','通识教育课',1,56,56,'2020-2021-1'),(14,'A0893922','上单带线技术','2017010003',7,'13','通识教育课',1,50,48,'2020-2021-1'),(15,'A0893929','学期测试课程','2017010004',4,'01','通识教育课',1,50,50,'2020-2021-1'),(16,'A0893913','测试课程搜索','2017010002',8,'1','通识教育课',1,50,50,'2020-2021-1'),(18,'A0893654','Java程序设计3','2017010001',7,'18','通识教育课',1,50,49,'2020-2021-1');
/*!40000 ALTER TABLE `ems_electivecourse` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ems_major`
--

DROP TABLE IF EXISTS `ems_major`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ems_major` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `major_name` varchar(255) NOT NULL COMMENT '专业名称',
  `college` int(11) NOT NULL COMMENT '所属学院',
  `type` varchar(255) NOT NULL COMMENT '专科/本科',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ems_major`
--

LOCK TABLES `ems_major` WRITE;
/*!40000 ALTER TABLE `ems_major` DISABLE KEYS */;
INSERT INTO `ems_major` (`id`, `major_name`, `college`, `type`) VALUES (1,'软件工程',1,'本科'),(2,'网络工程',1,'本科'),(3,'物联网工程',1,'本科'),(4,'数据科学与大数据技术',1,'本科'),(5,'计算机网络技术',1,'专科'),(6,'软件技术',1,'专科'),(7,'自动化',4,'本科'),(8,'通信工程',4,'本科'),(9,'人工智能',4,'本科'),(10,'电子信息工程',4,'本科'),(11,'电子信息工程技术',4,'专科'),(12,'电气自动化技术',4,'专科'),(14,'旅游管理',5,'本科'),(15,'财务管理',5,'本科'),(16,'会计学',5,'本科'),(17,'工程造价',5,'本科'),(18,'旅游管理(专科)',5,'专科'),(19,'财务管理(专科)',5,'专科'),(20,'会计(专科)',5,'专科'),(21,'电子商务',2,'本科'),(22,'物流管理',2,'本科'),(23,'金融工程',2,'本科'),(24,'国际经济与贸易',2,'本科'),(25,'互联网金融',2,'本科'),(26,'商务英语',2,'本科'),(27,'电子商务(专科)',2,'专科'),(28,'国际经济与贸易(专科)',2,'专科'),(29,'商务英语(专科)',2,'专科'),(30,'数字媒体艺术',3,'本科'),(31,'播音与主持',3,'本科'),(32,'舞蹈表演',3,'本科'),(33,'音乐表演',3,'本科'),(34,'环境设计',3,'本科'),(35,'视觉传达设计',3,'本科'),(36,'播音与主持(专科)',3,'专科'),(37,'舞蹈表演(专科)',3,'专科'),(38,'音乐表演(专科)',3,'专科'),(39,'艺术设计',3,'专科'),(40,'平面设计',3,'专科'),(41,'软件工程2',1,'本科'),(42,'软件工程3',1,'专科'),(43,'软件工程4',1,'本科'),(44,'软件工程8',1,'本科');
/*!40000 ALTER TABLE `ems_major` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ems_menu`
--

DROP TABLE IF EXISTS `ems_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ems_menu` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `parent_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '上级资源ID',
  `path` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT 'url',
  `resources` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '资源编码',
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '资源名称',
  `level` int(11) DEFAULT NULL COMMENT '资源级别',
  `sort_no` int(11) DEFAULT NULL COMMENT '排序',
  `icon` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '资源图标',
  `type` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '类型 menu、button',
  `remarks` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '备注',
  `gmt_create` datetime DEFAULT NULL COMMENT '创建时间',
  `gmt_modified` datetime DEFAULT NULL COMMENT '更新时间',
  `component` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '组件',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=144 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='系统管理-权限资源表 ';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ems_menu`
--

LOCK TABLES `ems_menu` WRITE;
/*!40000 ALTER TABLE `ems_menu` DISABLE KEYS */;
INSERT INTO `ems_menu` (`id`, `parent_id`, `path`, `resources`, `name`, `level`, `sort_no`, `icon`, `type`, `remarks`, `gmt_create`, `gmt_modified`, `component`) VALUES (1,'2','/info/stu/basic','stuInfo','基本信息',2,1,'bxAnaalyse','menu',NULL,'2021-02-18 16:33:12','2021-02-18 16:33:14','                                                                                                                                                                                                                                                               '),(2,'18','/info','userInfo','个人信息',1,1,'bxAnaalyse','menu',NULL,'2021-02-18 16:00:42','2021-02-18 16:00:52','RouteView'),(3,'2','/info/stu/rewardspunishments','stuInfo','奖惩信息',2,2,'bxAnaalyse','menu',NULL,'2021-02-18 16:19:40','2021-02-18 16:19:42','RouteView'),(5,'4','/course/tercourse','course','学期课表',2,1,'bxAnaalyse','menu',NULL,'2021-02-18 21:19:44','2021-02-18 21:19:46','RouteView'),(6,'18','/selectcourse','selectcourse','选课中心',1,3,'bxAnaalyse','menu',NULL,'2021-02-18 21:31:41','2021-02-18 21:31:43','RouteView'),(7,'6','/selectcourse/stu','/selectcourse/stu','学生选课',2,1,'bxAnaalyse','menu',NULL,'2021-02-18 21:35:44','2021-02-18 21:35:47','RouteView'),(8,'6','/selectcourse/stu/result','/selectcourse/stu/result','选课结果',2,3,'bxAnaalyse','menu',NULL,'2021-02-18 21:36:57','2021-02-18 21:36:59','RouteView'),(9,'18','/grade','grade','我的成绩',1,4,'bxAnaalyse','menu',NULL,'2021-02-19 16:27:53','2021-02-19 16:27:56','RouteView'),(10,'9','/grade/course','grade','课程成绩查询',2,1,'bxAnaalyse','menu',NULL,'2021-02-19 16:29:30','2021-02-19 16:29:32','RouteView'),(11,'9','/grade/level','grade','等级考试查询',2,2,'bxAnaalyse','menu',NULL,'2021-02-19 16:31:32','2021-02-19 16:31:34','RouteView'),(12,'4','/course/class','course','班级课表',2,2,'bxAnaalyse','menu',NULL,'2021-02-19 17:11:49','2021-02-19 17:11:51','RouteView'),(13,'4','/course/teacher','course','教师课表',2,3,'bxAnaalyse','menu',NULL,'2021-02-19 17:11:49','2021-02-19 17:11:51','RouteView'),(14,'4','/course/classroom','course','教室课表',2,4,'bxAnaalyse','menu',NULL,'2021-02-19 17:11:49','2021-02-19 17:11:51','RouteView'),(15,'18','/info/admin','adminInfo','信息管理',1,1,'bxAnaalyse','menu',NULL,'2021-02-20 12:51:15','2021-02-20 12:51:19','RouteView'),(16,'15','/info/damin/stu','adminInfo','学生信息',2,1,'bxAnaalyse','menu',NULL,'2021-02-20 13:02:54','2021-02-20 13:02:56','RouteView'),(17,'16','/user/userInfoExcel','adminInfo:add','信息导入',3,3,'bxAnaalyse','button',NULL,NULL,NULL,NULL),(18,'0','/','index','index',1,1,'bxAnaalyse','menu',NULL,NULL,NULL,'BasicLayout'),(19,'18','/dashboard','dashboard','dashboard',1,1,'bxAnaalyse','menu',NULL,NULL,NULL,'RouteView'),(20,'19','/dashboard/workplace','/dashboard/workplace','Workplace',3,1,'bxAnaalyse','menu',NULL,NULL,NULL,'dashboard/Workplace'),(106,'18','/admin/student/**','/admin/student/info','查询学生信息',3,3,NULL,'menu',NULL,NULL,NULL,NULL),(107,'18','/college','/college','获取学院信息',1,1,NULL,'botton',NULL,NULL,NULL,NULL),(108,'18','/classes/**','/classes/**','获取班级信息',1,1,NULL,'botton',NULL,NULL,NULL,NULL),(109,'18','/major/**','/major/**','获取专业信息',1,1,NULL,'botton',NULL,NULL,NULL,NULL),(110,'18','/admin/teacher/**','/admin/teacher/**','查询教师信息',1,1,NULL,'botton',NULL,NULL,NULL,NULL),(111,'18','/admin/college/**','/admin/college/**','查询学院信息',2,2,NULL,'botton',NULL,NULL,NULL,NULL),(112,'18','/admin/admin/**','/admin/admin/info','查询管理员信息',1,1,NULL,'botton',NULL,NULL,NULL,NULL),(113,'18','/notice/info?**','/notice/info','获取公告',1,1,NULL,'botton',NULL,NULL,NULL,NULL),(114,'18','/admin','/admin','获取所有管理员信息',NULL,NULL,NULL,'botton',NULL,NULL,NULL,NULL),(115,'18','/notice','/notice','添加公告',NULL,NULL,NULL,'botton',NULL,NULL,NULL,NULL),(116,'18','/notice?**','/notice?**','删除公告',NULL,NULL,NULL,'botton',NULL,NULL,NULL,NULL),(117,'18','/rap/info?**','/rap/info?**','获取惩罚信息',1,1,NULL,'botton',NULL,NULL,NULL,NULL),(118,'18','/user/name?**','/user/name','获取姓名',1,1,'1','botton',NULL,NULL,NULL,NULL),(119,'18','/rap','/rap','添加奖惩',1,1,'1','botton',NULL,NULL,NULL,NULL),(120,'18','/rap?**','/rap?**','删除奖惩',NULL,1,'1','botton',NULL,NULL,NULL,NULL),(121,'18','/teach_build/info?**','/teach_build/info','获取教学楼信息',NULL,1,'1','botton',NULL,NULL,NULL,NULL),(122,'18','/classRoom/**','/classRoom/**','获取教室信息',NULL,1,'1','botton',NULL,NULL,NULL,NULL),(123,'18','/teach_build','/teach_build','教学楼操作',NULL,1,'1','botton',NULL,NULL,NULL,NULL),(124,'18','/course/**','/course/**','课程操作',NULL,11,'1','botton',NULL,NULL,NULL,NULL),(125,'18','/course','/course','课程操作',NULL,1,'1','bottotn',NULL,NULL,NULL,NULL),(126,'18','/course?**','/course?**','删除课程',NULL,1,'1','botton',NULL,NULL,NULL,NULL),(127,'18','/user/teaName?**','/user/teaName?**','模糊查询教师姓名',NULL,1,'1','botton',NULL,NULL,NULL,NULL),(128,'18','/course/classScheduling','/course/classScheduling','排课',NULL,1,'1','botton',NULL,NULL,NULL,NULL),(129,'18','/teach_build/info','teach_build/info','教学楼信息',NULL,1,'1','botton',NULL,NULL,NULL,NULL),(130,'18','/schedule/**','/schedule/**','课表查询',NULL,1,'1','botton',NULL,NULL,NULL,NULL),(131,'18','/course/classTask?**','/course/classTask?**','教师获取课程安排',NULL,1,'1','botton',NULL,NULL,NULL,NULL),(132,'18','/grade?**','/grade','成绩',NULL,1,'1','botton',NULL,NULL,NULL,NULL),(133,'18','/grade/info?**','/grade/info?**','成绩',NULL,1,'1','botton',NULL,NULL,NULL,NULL),(134,'18','/grade/gradeExcel','/grade/gradeExcel','导入',NULL,1,'1','botton',NULL,NULL,NULL,NULL),(135,'18','/grade/export','/grade/export','导出',NULL,1,'1','botton',NULL,NULL,NULL,NULL),(137,'18','/grade/download','/grade/download','下载',NULL,1,'1','botton',NULL,NULL,NULL,NULL),(138,'18','/grade/ranking','/grade/ranking','排名',NULL,1,'1','botton',NULL,NULL,NULL,NULL),(139,'18','/grade/rankExport','/grade/rankExport','排名下载',NULL,1,'1','botton',NULL,NULL,NULL,NULL),(140,'18','/user/info','/user/info','用户修改个人信息',NULL,1,'1','botton',NULL,NULL,NULL,NULL),(141,'18','/user/pwd?**','/user/pwd','用户修改密码',NULL,1,'1','botton',NULL,NULL,NULL,NULL),(142,'18','/grade/student/course?**','/grade/student/course?**','学生成绩',NULL,1,'1','botton',NULL,NULL,NULL,NULL),(143,'18','/grade/student/cet?**','/grade/student/cet','四六级考试',NULL,1,'1','botton',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `ems_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ems_mini_user`
--

DROP TABLE IF EXISTS `ems_mini_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ems_mini_user` (
  `open_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'open_id',
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'skey',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `last_visit_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '最后登录时间',
  `session_key` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'session_key',
  `city` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '市',
  `province` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '省',
  `country` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '国',
  `avatar_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '头像',
  `gender` tinyint(11) DEFAULT NULL COMMENT '性别',
  `nick_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '网名',
  `number` varchar(255) DEFAULT NULL COMMENT '学工号',
  PRIMARY KEY (`open_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='微信用户信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ems_mini_user`
--

LOCK TABLES `ems_mini_user` WRITE;
/*!40000 ALTER TABLE `ems_mini_user` DISABLE KEYS */;
INSERT INTO `ems_mini_user` (`open_id`, `token`, `create_time`, `last_visit_time`, `session_key`, `city`, `province`, `country`, `avatar_url`, `gender`, `nick_name`, `number`) VALUES ('oweAo4ylhkiImWd3WR7XVErA6ttY','eyJhbGciOiJIUzUxMiJ9.eyJyb2xlX2xvZ2luIjoid3giLCJzdWIiOiLlvq7kv6HnlKjmiLciLCJleHAiOjE2MjA4MzM4OTZ9.i2bxSJls2T0jYtbiU3zkLlyfWIBy_4H1cu-P-7zMIgiQseufsVi9U0Ke9fl5JwYwBkfY_7yyCTVLx_Txt2di6A','2021-05-07 03:56:56','2021-05-12 07:08:16','rYLz70HaF1cJlyFNY6EiRQ==','Shaoyang','Hunan','China','https://thirdwx.qlogo.cn/mmopen/vi_32/apln1GQuM3FAL1oQeeUbL6WEV0WL5uYQbPYiaB42YAHAqQn8pc7LZXCz2sbh8hIlA4g8ehbumFgXic9lrLjvxCvg/132',1,'Alohomora','201701420428');
/*!40000 ALTER TABLE `ems_mini_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ems_notice`
--

DROP TABLE IF EXISTS `ems_notice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ems_notice` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `created_id` int(11) NOT NULL COMMENT '创建人id',
  `created_time` datetime DEFAULT CURRENT_TIMESTAMP,
  `content` varchar(255) NOT NULL COMMENT '内容',
  `title` varchar(255) NOT NULL COMMENT '标题',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ems_notice`
--

LOCK TABLES `ems_notice` WRITE;
/*!40000 ALTER TABLE `ems_notice` DISABLE KEYS */;
INSERT INTO `ems_notice` (`id`, `created_id`, `created_time`, `content`, `title`) VALUES (4,3,'2021-03-24 11:19:24','啊十大大苏打实打实大苏打','SpringBoot项目部署到Linux(Jar包方式)'),(6,3,'2021-05-02 19:27:11','请在2021-5-3日之前完成成绩录入','成绩录入通知');
/*!40000 ALTER TABLE `ems_notice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ems_reward_punishment`
--

DROP TABLE IF EXISTS `ems_reward_punishment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ems_reward_punishment` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(255) NOT NULL COMMENT '奖惩人',
  `content` varchar(255) NOT NULL COMMENT '奖惩内容',
  `type` varchar(255) NOT NULL COMMENT '奖惩类别',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ems_reward_punishment`
--

LOCK TABLES `ems_reward_punishment` WRITE;
/*!40000 ALTER TABLE `ems_reward_punishment` DISABLE KEYS */;
INSERT INTO `ems_reward_punishment` (`id`, `name`, `content`, `type`) VALUES (2,'陈利辉','整夜未归','0'),(3,'李欢欢','扶老人','1'),(4,'刘泽洋','solo三连胜','1');
/*!40000 ALTER TABLE `ems_reward_punishment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ems_role`
--

DROP TABLE IF EXISTS `ems_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ems_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ems_role`
--

LOCK TABLES `ems_role` WRITE;
/*!40000 ALTER TABLE `ems_role` DISABLE KEYS */;
INSERT INTO `ems_role` (`id`, `code`, `name`) VALUES (1,'admin','管理员'),(2,'student','学生'),(3,'teacher','教师');
/*!40000 ALTER TABLE `ems_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ems_role_menu`
--

DROP TABLE IF EXISTS `ems_role_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ems_role_menu` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `role_id` int(10) DEFAULT NULL COMMENT '角色ID',
  `menu_id` int(10) DEFAULT NULL COMMENT '菜单ID',
  `gmt_create` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
  `gmt_modified` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1732 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='系统管理 - 角色-权限资源关联表 ';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ems_role_menu`
--

LOCK TABLES `ems_role_menu` WRITE;
/*!40000 ALTER TABLE `ems_role_menu` DISABLE KEYS */;
INSERT INTO `ems_role_menu` (`id`, `role_id`, `menu_id`, `gmt_create`, `gmt_modified`) VALUES (1666,2,18,NULL,NULL),(1667,2,19,NULL,NULL),(1668,2,20,NULL,NULL),(1670,1,107,NULL,NULL),(1671,1,108,NULL,NULL),(1672,1,110,NULL,NULL),(1673,1,111,'2021-03-19 11:17:33','2021-03-19 11:17:33'),(1674,1,106,NULL,NULL),(1675,1,112,NULL,NULL),(1676,1,109,NULL,NULL),(1677,1,17,'2021-03-21 16:15:07','2021-03-21 16:15:07'),(1678,1,113,'2021-03-23 22:18:47',NULL),(1679,1,114,NULL,NULL),(1680,1,115,NULL,NULL),(1681,1,116,NULL,NULL),(1682,1,117,NULL,NULL),(1683,1,118,NULL,NULL),(1684,1,119,NULL,NULL),(1685,1,120,NULL,NULL),(1686,1,121,NULL,NULL),(1687,1,122,NULL,NULL),(1688,1,123,NULL,NULL),(1689,1,124,NULL,NULL),(1690,1,125,NULL,NULL),(1691,1,126,NULL,NULL),(1692,1,127,'2021-03-30 21:49:16','2021-03-30 21:49:16'),(1693,1,128,NULL,NULL),(1694,1,129,NULL,NULL),(1695,1,130,NULL,NULL),(1696,2,130,NULL,NULL),(1697,3,130,NULL,NULL),(1698,3,131,NULL,NULL),(1699,3,124,NULL,NULL),(1700,3,106,'2021-04-12 21:27:51','2021-04-12 21:27:51'),(1701,3,132,NULL,NULL),(1702,3,133,NULL,NULL),(1703,3,134,NULL,NULL),(1704,1,134,NULL,NULL),(1705,3,135,NULL,NULL),(1706,3,137,NULL,NULL),(1707,3,138,NULL,NULL),(1708,3,107,'2021-04-23 22:40:56','2021-04-23 22:40:56'),(1709,3,109,NULL,NULL),(1710,3,108,NULL,NULL),(1711,3,139,NULL,NULL),(1712,2,140,NULL,NULL),(1713,3,140,NULL,NULL),(1714,1,140,NULL,NULL),(1715,1,141,NULL,NULL),(1716,2,141,NULL,NULL),(1717,3,141,NULL,NULL),(1718,2,113,NULL,NULL),(1719,3,113,'2021-05-03 12:16:08','2021-05-03 12:16:08'),(1720,2,139,NULL,NULL),(1722,2,107,NULL,NULL),(1723,2,124,NULL,NULL),(1724,2,129,'2021-05-03 12:55:12','2021-05-03 12:55:12'),(1725,2,122,NULL,NULL),(1726,2,127,NULL,NULL),(1727,2,142,NULL,NULL),(1728,2,143,NULL,NULL),(1729,2,117,NULL,NULL),(1730,3,129,'2021-05-06 12:53:51','2021-05-06 12:53:51'),(1731,3,122,NULL,NULL);
/*!40000 ALTER TABLE `ems_role_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ems_student_elective`
--

DROP TABLE IF EXISTS `ems_student_elective`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ems_student_elective` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `student_number` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `course_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `student_number` (`student_number`,`course_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ems_student_elective`
--

LOCK TABLES `ems_student_elective` WRITE;
/*!40000 ALTER TABLE `ems_student_elective` DISABLE KEYS */;
INSERT INTO `ems_student_elective` (`id`, `student_number`, `course_id`) VALUES (6,'201701420428','A0370022'),(5,'201701420428','A0740024'),(8,'201701420428','A0893654');
/*!40000 ALTER TABLE `ems_student_elective` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ems_student_grade`
--

DROP TABLE IF EXISTS `ems_student_grade`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ems_student_grade` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `number` varchar(255) NOT NULL COMMENT '学号',
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `classes` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `course` varchar(255) NOT NULL,
  `grade` varchar(11) NOT NULL,
  `type` int(11) NOT NULL DEFAULT '0',
  `person` varchar(255) NOT NULL COMMENT '录入人',
  `time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `semester` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_t_2` (`number`,`course`,`semester`)
) ENGINE=InnoDB AUTO_INCREMENT=988 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ems_student_grade`
--

LOCK TABLES `ems_student_grade` WRITE;
/*!40000 ALTER TABLE `ems_student_grade` DISABLE KEYS */;
INSERT INTO `ems_student_grade` (`id`, `number`, `username`, `classes`, `course`, `grade`, `type`, `person`, `time`, `semester`) VALUES (975,'201701420401','允玉枝','2017软件本4班','JAVA高级编程','25',0,'计算机科学与工程学院老师一号','2021-05-01 00:00:00','2020-2021-1'),(976,'201701420402','雍温','2017软件本4班','JAVA高级编程','23',0,'计算机科学与工程学院老师一号','2021-05-01 00:00:00','2020-2021-1'),(977,'201701420403','秦云德','2017软件本4班','JAVA高级编程','87',0,'计算机科学与工程学院老师一号','2021-05-01 00:00:00','2020-2021-1'),(978,'201701420404','隗望亭','2017软件本4班','JAVA高级编程','55',0,'计算机科学与工程学院老师一号','2021-05-01 00:00:00','2020-2021-1'),(979,'201701420405','求楚','2017软件本4班','JAVA高级编程','67',0,'计算机科学与工程学院老师一号','2021-05-01 00:00:00','2020-2021-1'),(980,'201701420406','司空富贵','2017软件本4班','JAVA高级编程','87',0,'计算机科学与工程学院老师一号','2021-05-01 00:00:00','2020-2021-1'),(981,'201701420407','终染','2017软件本4班','JAVA高级编程','90',0,'计算机科学与工程学院老师一号','2021-05-01 00:00:00','2020-2021-1'),(982,'201701420408','蒙德','2017软件本4班','JAVA高级编程','58',0,'计算机科学与工程学院老师一号','2021-05-01 00:00:00','2020-2021-1'),(983,'201701420409','声汀兰','2017软件本4班','JAVA高级编程','67',0,'计算机科学与工程学院老师一号','2021-05-01 00:00:00','2020-2021-1'),(984,'201701420410','蓟德文','2017软件本4班','JAVA高级编程','89',0,'计算机科学与工程学院老师一号','2021-05-01 00:00:00','2020-2021-1'),(985,'201701420428','陈利辉','2017软件本4班','JAVA高级编程','89',0,'计算机科学与工程学院老师一号','2021-05-01 00:00:00','2020-2021-1'),(986,'201701420428','陈利辉','2017软件本4班','JAVA高级编程2','89',1,'计算机科学与工程学院老师一号','2021-05-01 00:00:00','2020-2021-1'),(987,'201701420428','陈利辉','2017软件本4班','JAVA高级编程2','89',1,'计算机科学与工程学院老师一号','2021-05-01 00:00:00','2019-2020-2');
/*!40000 ALTER TABLE `ems_student_grade` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ems_teach_build`
--

DROP TABLE IF EXISTS `ems_teach_build`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ems_teach_build` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `build_name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ems_teach_build`
--

LOCK TABLES `ems_teach_build` WRITE;
/*!40000 ALTER TABLE `ems_teach_build` DISABLE KEYS */;
INSERT INTO `ems_teach_build` (`id`, `build_name`) VALUES (1,'格物楼'),(2,'致用楼'),(3,'汇智楼'),(4,'知行楼'),(5,'艺美楼'),(6,'第一报告厅1'),(7,'第二报告厅'),(8,'第三报告厅'),(9,'第四报告厅'),(10,'双创楼');
/*!40000 ALTER TABLE `ems_teach_build` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ems_teacher_course`
--

DROP TABLE IF EXISTS `ems_teacher_course`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ems_teacher_course` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `teacherNo` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `courseNo` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `classNo` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `classroomNo` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `classTime` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1197 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ems_teacher_course`
--

LOCK TABLES `ems_teacher_course` WRITE;
/*!40000 ALTER TABLE `ems_teacher_course` DISABLE KEYS */;
INSERT INTO `ems_teacher_course` (`id`, `teacherNo`, `courseNo`, `classNo`, `classroomNo`, `classTime`) VALUES (1169,'2017010007','200001','1','9','12'),(1170,'2017010007','200001','1','9','17'),(1171,'2017010007','200001','2','2','08'),(1172,'2017010007','200001','2','2','14'),(1173,'2017010007','200001','3','2','05'),(1174,'2017010007','200001','3','9','15'),(1175,'2017010007','200005','8','1','20'),(1176,'2017010007','200005','8','1','01'),(1177,'2017010007','200001','1','1','01'),(1178,'2017010007','200001','1','9','23'),(1179,'2017010007','200001','2','3','09'),(1180,'2017010007','200001','2','5','08'),(1181,'2017010007','200001','3','5','17'),(1182,'2017010007','200001','3','4','18'),(1183,'2017010007','012217','4','4','22'),(1184,'2017010007','012217','4','3','07'),(1185,'2017010007','012217','5','4','20'),(1186,'2017010007','012217','5','2','14'),(1187,'2017010007','012217','6','5','16'),(1188,'2017010007','012217','6','4','21'),(1189,'2017010007','200005','8','5','24'),(1190,'2017010007','200005','8','1','04'),(1191,'2017010007','012217','4','9','18'),(1192,'2017010007','012217','4','4','06'),(1193,'2017010007','200005','4','2','24'),(1194,'2017010007','200005','4','4','16'),(1195,'2017010007','012217','5','4','14'),(1196,'2017010007','012217','5','3','21');
/*!40000 ALTER TABLE `ems_teacher_course` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ems_user`
--

DROP TABLE IF EXISTS `ems_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ems_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `number` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '学号',
  `username` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '姓名',
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '97ba1ef7f148b2aec1c61303a7d88d0967825495' COMMENT '密码',
  `token` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT 'token验证',
  `salt` varchar(59) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'zhengqing' COMMENT '盐',
  `sex` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '性别',
  `origin` varchar(255) DEFAULT NULL COMMENT '生源地',
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '联系电话',
  `email` varchar(255) DEFAULT NULL COMMENT '邮箱',
  `political` varchar(255) DEFAULT NULL COMMENT '政治面貌',
  `address` varchar(255) DEFAULT NULL COMMENT '家庭住址',
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '头像',
  `college` int(11) NOT NULL DEFAULT '0' COMMENT '学院ID',
  `classes` int(11) NOT NULL DEFAULT '0' COMMENT '班级ID',
  `major` int(11) NOT NULL DEFAULT '0' COMMENT '专业ID',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_t_1` (`number`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5950 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ems_user`
--

LOCK TABLES `ems_user` WRITE;
/*!40000 ALTER TABLE `ems_user` DISABLE KEYS */;
INSERT INTO `ems_user` (`id`, `number`, `username`, `password`, `token`, `salt`, `sex`, `origin`, `phone`, `email`, `political`, `address`, `avatar`, `college`, `classes`, `major`) VALUES (3,'201701420000','管理员测试','97ba1ef7f148b2aec1c61303a7d88d0967825495','eyJhbGciOiJIUzUxMiJ9.eyJST0xFIjoiW2FkbWluXSIsInN1YiI6IjIwMTcwMTQyMDAwMCIsImV4cCI6MTYyMDcxNTg4NX0.7_DZ-Bqp7K6qobZ1QF98B0F6m7rnBujtH_gfUUpSW6eDuYjTr8dgNZ4lQ--69x7DHv-bIuJVyZZc48NzJs6qKg','zhengqing','男','','15074084007','1932916647@qq.com','中共预备党员','湖南省平江县向家镇金石村322号','https://pic3.zhimg.com/v2-57021d8415152dd28243a7cd127e3921_r.jpg?source=1940ef5c',0,0,0),(5841,'201701000001','管理员测试1','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男',NULL,'18373297080','54882@8w9t.com',NULL,'湖南省长沙市',NULL,0,0,0),(5842,'2017010007','计算机科学与工程学院老师一号','97ba1ef7f148b2aec1c61303a7d88d0967825495','eyJhbGciOiJIUzUxMiJ9.eyJST0xFIjoiW3RlYWNoZXJdIiwic3ViIjoiMjAxNzAxMDAwNyIsImV4cCI6MTYyMDcxNTU4NX0.IrnPUZyA_nQhFyVjE2GegRqwAxNplD9-cBEr7xZra3_Fs2ZwdCQSEb2IKaB5F4liRjhMLjnLUoJRdb_T24H0Sw','zhengqing','女',NULL,'18373297080','54882@8w9t.com','中共党员','湖南省长沙市','https://ss2.bdstatic.com/70cFvnSh_Q1YnxGkpoWK1HF6hhy/it/u=1004953359,2131419137&fm=11&gp=0.jpg',1,0,0),(5843,'2017010001','计算机科学与工程学院老师2','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','女',NULL,'18373297080','420211582@qq.com','中共预备党员','湖南省长沙市',NULL,1,0,0),(5844,'2017010003','计科院老师3','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','女',NULL,'18373297080','420211581@qq.com','中共党员','湖南省长沙市',NULL,1,0,0),(5845,'2017010004','通识教育学院老师1','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','女',NULL,'18373297080','420211581@qq.com','共青团员','湖南省长沙市','https://ss2.bdstatic.com/70cFvnSh_Q1YnxGkpoWK1HF6hhy/it/u=1004953359,2131419137&fm=11&gp=0.jpg',6,0,0),(5846,'2017010002','通识教育学院老师2','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','女',NULL,'18373297080','420211581@qq.com','中共预备党员','湖南省长沙市',NULL,6,0,0),(5847,'2017010005','通识教育学院老师3','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','女',NULL,'18373297080','420211582@qq.com','中共预备党员','湖南省长沙市',NULL,6,0,0),(5848,'201701420101','范姜淑珍','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男','湖南省岳阳市','18941526425','73399153358qq.com','共青团员','湘西土家族苗族自治州泸溪县盘瓠花园5栋1单元',NULL,1,1,1),(5849,'201701420102','宜广英','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男','湖南省长沙市','18135455283','63864809431qq.com','共青团员','湖南省\n益阳市桃江县零三零县道',NULL,1,1,1),(5850,'201701420103','杞桂花','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男','湖南省长沙市','15644378507','52260337755qq.com','共青团员','湖南省湘潭市九华经济开发区九华大道北段26号',NULL,1,1,1),(5851,'201701420104','衡傅香','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男','湖南省长沙市','18515229848','56381873693qq.com','共青团员','湖南省长沙市雨花区东二环一段698号',NULL,1,1,1),(5852,'201701420105','贡全','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男','湖南省长沙市','13001871038','67251244704qq.com','共青团员','湖南省长沙市万家丽中路2段439',NULL,1,1,1),(5853,'201701420106','在其英','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男','湖南省益阳市','13428539713','82823500821qq.com','共青团员','湖南省长沙市芙蓉区滨河路',NULL,1,1,1),(5854,'201701420107','告秀珍','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男','湖南省郴州市','15360521035','39181004470qq.com','共青团员','湖南省长沙市天心区五一大道717号',NULL,1,1,1),(5855,'201701420108','卿振梅','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男','湖南省益阳市','13238445073','88484623118qq.com','共青团员','湖南省益阳市赫山区赫山南路',NULL,1,1,1),(5856,'201701420109','睢良','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男','湖南省益阳市','18505067045','54301779877qq.com','共青团员','湖南省益阳市赫山区益阳大道1089号',NULL,1,1,1),(5857,'201701420110','谈同书','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男','湖南省常德市','17303953798','63439226869qq.com','共青团员','湖南省益阳市资阳区大码头街道',NULL,1,1,1),(5858,'201701420111','浑恭','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男','湖南省常德市','13348968648','97677487446qq.com','中共党员','湖南省常德市石门县新铺乡仙女洞村',NULL,1,1,1),(5859,'201701420112','国远','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男','湖南省衡阳市','13728833963','92768979223qq.com','共青团员','浙江省宁波市鄞州区',NULL,1,1,1),(5860,'201701420113','撒利叶','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男','湖南省衡阳市','17086184941','27900360984qq.com','共青团员','湖南省常德市武陵区人民路与高山街交汇处东南',NULL,1,1,1),(5861,'201701420114','骆秀梅','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男','湖南省怀化市','18086161240','18704073664qq.com','共青团员','湖南省常德市鼎城区玉霞街道',NULL,1,1,1),(5862,'201701420115','鲜亭晚','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男','湖南省湘潭市','17787696612','81195233713qq.com','共青团员','湖南省湘潭市雨湖区长城乡流水桥笑眯眯宾馆',NULL,1,1,1),(5863,'201701420116','贲遐思','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男','湖南省湘潭市','18199576057','76846455426qq.com','共青团员','湖南省湘潭县青山桥镇松柏村恒祥批发部',NULL,1,1,1),(5864,'201701420117','犹新兰','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男','湖南省衡阳市','13938075558','21777694744qq.com','共青团员','湖南省长沙市雨花区北冲尾小区10栋',NULL,1,1,1),(5865,'201701420118','呼素兰','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男','湖南省衡阳市','13728377879','76269442897qq.com','共青团员','湖南省衡阳市石鼓区演武坪33栋4单元',NULL,1,1,1),(5866,'201701420119','势有福','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男','湖南省衡阳市','13762585408','58451536277qq.com','共青团员','湖南省衡阳市蒸湘区华兴街道互助小区',NULL,1,1,1),(5867,'201701420120','陈亮','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男','湖南省邵阳市','17077790144','46556214036qq.com','共青团员','湖南省邵阳市新邵县新田铺镇皂角塘村12组19号',NULL,1,1,1),(5868,'201701420121','房淑兰','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男','湖南省邵阳市','15510086796','88588823629qq.com','共青团员','湖南省邵阳市新邵县潭府乡水口村6组',NULL,1,1,1),(5869,'201701420122','夫夏','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男','湖南省邵阳市','18575677101','48554650240qq.com','共青团员','湖南省娄底市新化县洋溪镇冷水巷村',NULL,1,1,1),(5870,'201701420123','宛松兰','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男','湖南省邵阳市','13210501504','99978524462qq.com','共青团员','湖南省邵阳市武冈市迎春路六巷26号',NULL,1,1,1),(5871,'201701420124','翁景明','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男','湖南省邵阳市','18924195324','91776592440qq.com','共青团员','湖南省邵阳市新宁县飞仙桥乡黄河村2组8号',NULL,1,1,1),(5872,'201701420125','谯玉芬','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男','湖南省湘潭市','15757429089','30715133198qq.com','共青团员','湖南省湘潭市雨湖区江麓兴安村4栋二单元',NULL,1,1,1),(5873,'201701420126','望来福','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男','湖南省湘潭市','15647880887','19835513510qq.com','共青团员','湖南省邵阳市邵阳县小溪市乡岩门村',NULL,1,1,1),(5874,'201701420127','亥秀芳','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','女','湖南省岳阳市','13656998534','70882377442qq.com','共青团员','湖南省岳阳市华容县团洲乡团农一组',NULL,1,1,1),(5875,'201701420428','陈利辉','b325e56ff1c6d44a6cb9c39199b5e2ad742b4d25','eyJhbGciOiJIUzUxMiJ9.eyJST0xFIjoiW3N0dWRlbnRdIiwic3ViIjoiMjAxNzAxNDIwNDI4IiwiZXhwIjoxNjIwOTE1MjE1fQ.rfnb2jtXWBt2I1Uslg4AKESglPMFSxhfbaLAowh0_Wknc1akL_dE-WqqoQDGyR8Ny8RplLkd6hGMMka-5noVkw','zhengqing','男','湖南省邵阳市','18373297091','420211581@qq.com','共青团员','湖南省邵阳市邵阳县小溪市乡岩门村1','https://pic3.zhimg.com/v2-57021d8415152dd28243a7cd127e3921_r.jpg?source=1940ef5c',1,4,1),(5876,'201701420129','海梅花','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男','湖南省常德市','15681329444','80781868446qq.com','共青团员','湖南省常德市津市市金鱼岭明道村0312号',NULL,1,1,1),(5877,'201701420130','练运旺','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男','湖南省常德市','17399232200','31979462289qq.com','共青团员','湖南省常德市安乡县安康乡仙桃村十组',NULL,1,1,1),(5878,'201701420131','旷兴','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男','湖南省株洲市','18983885194','57422646516qq.com','共青团员','湖南省湘潭市湘潭县石鼓镇',NULL,1,1,1),(5879,'201701420132','覃染','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男','湖南省株洲市','17671508833','66281213540qq.com','共青团员','湖南省株洲市醴陵市和谐盛庄传达室',NULL,1,1,1),(5880,'201701420133','叔微兰','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男','湖南省株洲市','15044247243','48161343866qq.com','共青团员','湖南省株洲市醴陵市孙家湾镇孙家湾乡观前村',NULL,1,1,1),(5881,'201701420134','焦春','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','女','湖南省株洲市','18161529870','93491769105qq.com','共青团员','湖南省株洲市石峰区桥梁厂小区13栋206',NULL,1,1,1),(5882,'201701420135','藩振华','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','女','湖南省株洲市','15672484276','23060542051qq.com','中共党员','湖南省株洲市渌口区伏波大道猎豹汽车4楼',NULL,1,1,1),(5883,'201701420136','强洁','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男','湖南省株洲市','18683719315','85302786074qq.com','共青团员','湖南省株洲市渌口区渌口镇漂沙井村',NULL,1,1,1),(5884,'201701420137','何玉兰','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男','湖南省长沙市','18567951213','36315583121qq.com','共青团员','福建省福州市闽侯县青口镇大义溪东安利来超市',NULL,1,1,1),(5885,'201701420138','从桂兰','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男','湖南省怀化市','15669303243','27400987262qq.com','共青团员','湖南省怀化市沅陵县桃花岭31号',NULL,1,1,1),(5886,'201701420139','诺素芹','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男','湖南省怀化市','15324203320','92667251176qq.com','共青团员','湖南怀化辰溪县安平镇红敏村四组',NULL,1,1,1),(5887,'201701420140','倪蕊','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男','湖南省岳阳市','13877574474','67430693921qq.com','共青团员','共青团员',NULL,1,1,1),(5888,'201701420141','理永芬','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','女','湖南省岳阳市','17006978994','17323731817qq.com','共青团员','湖南省岳阳市湘阴县新泉镇学元村2组',NULL,1,1,1),(5889,'201701420142','庆秀荣','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男','湖南省岳阳市','14969395013','38814362657qq.com','共青团员','湖南省岳阳市湘阴县鹤龙湖镇南阳镇南阳电器城',NULL,1,1,1),(5890,'201701420143','典元斐','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男','湖南省永州市','15821359225','98032431984qq.com','中共预备党员','湖南省永州市冷水滩区滨江壹号2栋302号房',NULL,1,1,1),(5891,'201701420144','狂桂花','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男','湖南省怀化市','13025570417','87156151568qq.com','共青团员','湖南省怀化市鹤城区华夏湖天华楼10A',NULL,1,1,1),(5892,'201701420145','茂实','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','女','湖南省怀化市','15972441096','88286946962qq.com','共青团员','湖南省怀化市鹤城区北国之春2栋601',NULL,1,1,1),(5893,'201701420146','盍宁','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男','湖南省郴州市','15622072497','70105044799qq.com','共青团员','湖南省郴州市桂阳县流峰镇',NULL,1,1,1),(5894,'201701420147','米雁','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','女','湖南省郴州市','15755246755','12203017159qq.com','共青团员','湖南省郴州市永兴县复合乡李家村一组',NULL,1,1,1),(5895,'201701420148','线寄竹','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男','湖南省郴州市','14776698778','50776436187qq.com','共青团员','湖南省郴州市宜章县黄沙镇芙蓉湾新村B6栋',NULL,1,1,1),(5896,'201701420149','泷绿柳','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男','湖南省郴州市','13360848859','41766878536qq.com','共青团员','湖南省郴州市临武县武水镇华舜国际新城小区G栋602',NULL,1,1,1),(5897,'201701420150','喜楚','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','女','湖南省永州市','13885678944','65196647321qq.com','共青团员','湖南省永州市东安县新圩江镇中田',NULL,1,1,1),(5898,'201701420151','种蝶','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男','湖南省永州市','17372643158','56167435221qq.com','共青团员','湖南省永州市冷水滩区杨家桥街道珍珠路百货公司宿舍五栋',NULL,1,1,1),(5899,'201701420401','允玉枝','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男','湖南省岳阳市','15918845224','56086355049qq.com','共青团员','湘西土家族苗族自治州泸溪县盘瓠花园5栋1单元',NULL,1,4,1),(5900,'201701420402','雍温','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男','湖南省长沙市','18580053218','96479199029qq.com','共青团员','湖南省\n益阳市桃江县零三零县道',NULL,1,4,1),(5901,'201701420403','秦云德','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男','湖南省长沙市','13308189252','96376165936qq.com','共青团员','湖南省湘潭市九华经济开发区九华大道北段26号',NULL,1,4,1),(5902,'201701420404','隗望亭','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男','湖南省长沙市','13978323370','30680851854qq.com','共青团员','湖南省长沙市雨花区东二环一段698号',NULL,1,4,1),(5903,'201701420405','求楚','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男','湖南省长沙市','13956422648','20158642586qq.com','共青团员','湖南省长沙市万家丽中路2段439',NULL,1,4,1),(5904,'201701420406','司空富贵','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男','湖南省益阳市','15658676474','62784444638qq.com','共青团员','湖南省长沙市芙蓉区滨河路',NULL,1,4,1),(5905,'201701420407','终染','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男','湖南省郴州市','15369059143','21251046655qq.com','共青团员','湖南省长沙市天心区五一大道717号',NULL,1,4,1),(5906,'201701420408','蒙德','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男','湖南省益阳市','13354297150','84823971675qq.com','共青团员','湖南省益阳市赫山区赫山南路',NULL,1,4,1),(5907,'201701420409','声汀兰','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男','湖南省益阳市','17096376912','80953915416qq.com','共青团员','湖南省益阳市赫山区益阳大道1089号',NULL,1,4,1),(5908,'201701420410','蓟德文','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男','湖南省常德市','13471619609','21562655159qq.com','共青团员','湖南省益阳市资阳区大码头街道',NULL,1,4,1),(5909,'201701420411','华诚','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男','湖南省常德市','13547686854','79809292383qq.com','中共党员','湖南省常德市石门县新铺乡仙女洞村',NULL,1,4,1),(5910,'201701420412','印秀英','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男','湖南省衡阳市','17331398788','94766698406qq.com','共青团员','浙江省宁波市鄞州区',NULL,1,4,1),(5911,'201701420413','吴玉兰','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男','湖南省衡阳市','15897723812','84218702080qq.com','共青团员','湖南省常德市武陵区人民路与高山街交汇处东南',NULL,1,4,1),(5912,'201701420414','唐晚竹','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男','湖南省怀化市','15654842378','62781803854qq.com','共青团员','湖南省常德市鼎城区玉霞街道',NULL,1,4,1),(5913,'201701420415','佟竹','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男','湖南省湘潭市','13217631574','87598176356qq.com','共青团员','湖南省湘潭市雨湖区长城乡流水桥笑眯眯宾馆',NULL,1,4,1),(5914,'201701420416','永振英','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男','湖南省湘潭市','14965524195','34802441418qq.com','共青团员','湖南省湘潭县青山桥镇松柏村恒祥批发部',NULL,1,4,1),(5915,'201701420417','楼桂花','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男','湖南省衡阳市','17600863074','44047344622qq.com','共青团员','湖南省长沙市雨花区北冲尾小区10栋',NULL,1,4,1),(5916,'201701420418','成秋英','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男','湖南省衡阳市','15742743271','73911377979qq.com','共青团员','湖南省衡阳市石鼓区演武坪33栋4单元',NULL,1,4,1),(5917,'201701420419','由颖卿','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男','湖南省衡阳市','15330237203','15249605620qq.com','共青团员','湖南省衡阳市蒸湘区华兴街道互助小区',NULL,1,4,1),(5918,'201701420420','司徒爱景','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男','湖南省邵阳市','15036110200','69321375810qq.com','共青团员','湖南省邵阳市新邵县新田铺镇皂角塘村12组19号',NULL,1,4,1),(5919,'201701420421','仉素兰','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男','湖南省邵阳市','13843878531','59499957616qq.com','共青团员','湖南省邵阳市新邵县潭府乡水口村6组',NULL,1,4,1),(5920,'201701420422','牵长顺','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男','湖南省邵阳市','15721679994','44143169238qq.com','共青团员','湖南省娄底市新化县洋溪镇冷水巷村',NULL,1,4,1),(5921,'201701420423','亓素琴','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男','湖南省邵阳市','17501704019','86842570169qq.com','共青团员','湖南省邵阳市武冈市迎春路六巷26号',NULL,1,4,1),(5922,'201701420424','巧伦','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男','湖南省邵阳市','13339852160','72142286534qq.com','共青团员','湖南省邵阳市新宁县飞仙桥乡黄河村2组8号',NULL,1,4,1),(5923,'201701420425','德永芬','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男','湖南省湘潭市','13365015813','97574944825qq.com','共青团员','湖南省湘潭市雨湖区江麓兴安村4栋二单元',NULL,1,4,1),(5924,'201701420426','万俟曼华','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男','湖南省湘潭市','17034823085','28421094400qq.com','共青团员','湖南省邵阳市邵阳县小溪市乡岩门村',NULL,1,4,1),(5925,'201701420427','皇甫国英','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','女','湖南省岳阳市','15989077801','62489139371qq.com','共青团员','湖南省岳阳市华容县团洲乡团农一组',NULL,1,4,1),(5927,'201701420429','伊兴','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男','湖南省常德市','15007881520','96599855310qq.com','共青团员','湖南省常德市津市市金鱼岭明道村0312号',NULL,1,4,1),(5928,'201701420430','开秀芳','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男','湖南省常德市','15692691303','72146312598qq.com','共青团员','湖南省常德市安乡县安康乡仙桃村十组',NULL,1,4,1),(5929,'201701420431','昂俭','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男','湖南省株洲市','13195928261','12808523645qq.com','共青团员','湖南省湘潭市湘潭县石鼓镇',NULL,1,4,1),(5930,'201701420432','郗景明','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男','湖南省株洲市','18514323606','48717802307qq.com','共青团员','湖南省株洲市醴陵市和谐盛庄传达室',NULL,1,4,1),(5931,'201701420433','召廷谦','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男','湖南省株洲市','15658965695','14525487697qq.com','共青团员','湖南省株洲市醴陵市孙家湾镇孙家湾乡观前村',NULL,1,4,1),(5932,'201701420434','柔春','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','女','湖南省株洲市','13186457677','23201135217qq.com','共青团员','湖南省株洲市石峰区桥梁厂小区13栋206',NULL,1,4,1),(5933,'201701420435','花蕾','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','女','湖南省株洲市','18199063104','66717520791qq.com','中共党员','湖南省株洲市渌口区伏波大道猎豹汽车4楼',NULL,1,4,1),(5934,'201701420436','沐玉巧','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男','湖南省株洲市','13536063891','44813039436qq.com','共青团员','湖南省株洲市渌口区渌口镇漂沙井村',NULL,1,4,1),(5935,'201701420437','堵树花','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男','湖南省长沙市','13655440901','99073251533qq.com','共青团员','福建省福州市闽侯县青口镇大义溪东安利来超市',NULL,1,4,1),(5936,'201701420438','莱秀荣','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男','湖南省怀化市','14765396676','35095915822qq.com','共青团员','湖南省怀化市沅陵县桃花岭31号',NULL,1,4,1),(5937,'201701420439','鱼霞','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男','湖南省怀化市','13367321269','63093314697qq.com','共青团员','湖南怀化辰溪县安平镇红敏村四组',NULL,1,4,1),(5938,'201701420440','位玉花','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男','湖南省岳阳市','17636818620','23845835147qq.com','共青团员','共青团员',NULL,1,4,1),(5939,'201701420441','赧学岺','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','女','湖南省岳阳市','13035416869','96067504669qq.com','共青团员','湖南省岳阳市湘阴县新泉镇学元村2组',NULL,1,4,1),(5940,'201701420442','敛杨氏','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男','湖南省岳阳市','15028340694','20283718500qq.com','共青团员','湖南省岳阳市湘阴县鹤龙湖镇南阳镇南阳电器城',NULL,1,4,1),(5941,'201701420443','清墨彻','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男','湖南省永州市','17693843675','98217538651qq.com','中共预备党员','湖南省永州市冷水滩区滨江壹号2栋302号房',NULL,1,4,1),(5942,'201701420444','蔺长青','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男','湖南省怀化市','17082808862','47816684124qq.com','共青团员','湖南省怀化市鹤城区华夏湖天华楼10A',NULL,1,4,1),(5943,'201701420445','掌绿柳','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','女','湖南省怀化市','17388372685','35317168287qq.com','共青团员','湖南省怀化市鹤城区北国之春2栋601',NULL,1,4,1),(5944,'201701420446','是增岳','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男','湖南省郴州市','15922630006','54787263157qq.com','共青团员','湖南省郴州市桂阳县流峰镇',NULL,1,4,1),(5945,'201701420447','郜亮','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','女','湖南省郴州市','13736093198','22490816911qq.com','共青团员','湖南省郴州市永兴县复合乡李家村一组',NULL,1,4,1),(5946,'201701420448','车连枝','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男','湖南省郴州市','15251608172','42330977058qq.com','共青团员','湖南省郴州市宜章县黄沙镇芙蓉湾新村B6栋',NULL,1,4,1),(5947,'201701420449','剧傅香','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男','湖南省郴州市','14787046441','91113253308qq.com','共青团员','湖南省郴州市临武县武水镇华舜国际新城小区G栋602',NULL,1,4,1),(5948,'201701420450','丑梅花','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','女','湖南省永州市','18646529441','12232428879qq.com','共青团员','湖南省永州市东安县新圩江镇中田',NULL,1,4,1),(5949,'201701420451','战印枝','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男','湖南省永州市','17148097227','81066909552qq.com','共青团员','湖南省永州市冷水滩区杨家桥街道珍珠路百货公司宿舍五栋',NULL,1,4,1);
/*!40000 ALTER TABLE `ems_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ems_user_role`
--

DROP TABLE IF EXISTS `ems_user_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ems_user_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1664 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ems_user_role`
--

LOCK TABLES `ems_user_role` WRITE;
/*!40000 ALTER TABLE `ems_user_role` DISABLE KEYS */;
INSERT INTO `ems_user_role` (`id`, `user_id`, `role_id`) VALUES (1,1,2),(2,3,1),(1247,5533,2),(1248,5534,3),(1249,5535,2),(1250,5536,2),(1251,5537,2),(1252,5538,2),(1253,5539,2),(1254,5540,2),(1255,5541,2),(1256,5542,2),(1257,5543,2),(1258,5544,2),(1259,5545,2),(1260,5546,2),(1261,5547,2),(1262,5548,2),(1263,5549,2),(1264,5550,2),(1265,5551,2),(1266,5552,2),(1267,5553,2),(1268,5554,2),(1269,5555,2),(1270,5556,2),(1271,5557,2),(1272,5558,2),(1273,5559,2),(1274,5560,2),(1275,5561,2),(1276,5562,2),(1277,5563,2),(1278,5564,2),(1279,5565,2),(1280,5566,2),(1281,5567,2),(1282,5568,2),(1283,5569,2),(1284,5570,2),(1285,5571,2),(1286,5572,2),(1287,5573,2),(1288,5574,2),(1289,5575,2),(1290,5576,2),(1291,5577,2),(1292,5578,2),(1293,5579,2),(1294,5580,2),(1295,5581,2),(1296,5582,2),(1297,5583,2),(1298,5584,2),(1299,5585,2),(1300,5586,2),(1301,5587,2),(1302,5588,2),(1303,5589,2),(1304,5590,2),(1305,5591,2),(1306,5592,2),(1307,5593,2),(1308,5594,2),(1309,5595,2),(1310,5596,2),(1311,5597,2),(1312,5598,2),(1313,5599,2),(1314,5600,2),(1315,5601,2),(1316,5602,2),(1317,5603,2),(1318,5604,2),(1319,5605,2),(1320,5606,2),(1321,5607,2),(1322,5608,2),(1323,5609,2),(1324,5610,2),(1325,5611,2),(1326,5612,2),(1327,5613,2),(1328,5614,2),(1329,5615,2),(1330,5616,2),(1331,5617,2),(1332,5618,2),(1333,5619,2),(1334,5620,2),(1335,5621,2),(1336,5622,2),(1337,5623,2),(1338,5624,2),(1339,5625,2),(1340,5626,2),(1341,5627,2),(1342,5628,2),(1343,5629,2),(1344,5630,2),(1345,5631,2),(1346,5632,2),(1347,5633,2),(1348,5634,2),(1349,5635,2),(1350,5636,2),(1351,5637,2),(1352,5638,2),(1353,5639,2),(1354,5640,2),(1355,5641,2),(1356,5642,2),(1357,5643,2),(1358,5644,2),(1359,5645,2),(1360,5646,2),(1361,5647,2),(1362,5648,2),(1363,5649,2),(1364,5650,2),(1365,5651,2),(1366,5652,2),(1367,5653,2),(1368,5654,2),(1369,5655,2),(1370,5656,2),(1371,5657,2),(1372,5658,2),(1373,5659,2),(1374,5660,2),(1375,5661,2),(1376,5662,2),(1377,5663,2),(1378,5664,2),(1379,5665,2),(1380,5666,2),(1381,5667,2),(1382,5668,2),(1383,5669,2),(1384,5670,2),(1385,5671,2),(1386,5672,2),(1387,5673,2),(1388,5674,2),(1389,5675,2),(1390,5676,2),(1391,5677,2),(1392,5678,2),(1393,5679,2),(1394,5680,2),(1395,5681,2),(1396,5682,2),(1397,5683,2),(1398,5684,2),(1399,5685,2),(1400,5686,2),(1401,5687,2),(1402,5688,3),(1403,5689,3),(1404,5690,3),(1405,5691,3),(1406,5692,3),(1407,5693,3),(1408,5694,3),(1409,5695,3),(1410,5696,3),(1411,5697,3),(1412,5698,3),(1413,5699,3),(1414,5700,3),(1415,5701,3),(1416,5702,3),(1417,5703,3),(1418,5704,3),(1419,5705,3),(1420,5706,3),(1421,5707,3),(1422,5708,3),(1423,5709,3),(1424,5710,3),(1425,5711,3),(1426,5712,3),(1427,5713,3),(1428,5714,3),(1429,5715,3),(1430,5716,3),(1431,5717,3),(1432,5718,3),(1433,5719,3),(1434,5720,3),(1435,5721,3),(1436,5722,3),(1437,5723,3),(1438,5724,3),(1439,5725,3),(1440,5726,3),(1441,5727,3),(1442,5728,3),(1443,5729,3),(1444,5730,3),(1445,5731,3),(1446,5732,3),(1447,5733,3),(1448,5734,3),(1449,5735,3),(1450,5736,3),(1451,5737,3),(1452,5738,3),(1453,5739,3),(1454,5740,3),(1455,5741,3),(1456,5742,3),(1457,5743,3),(1458,5744,3),(1459,5745,3),(1460,5746,3),(1461,5747,3),(1462,5748,3),(1463,5749,3),(1464,5750,3),(1465,5751,3),(1466,5752,3),(1467,5753,3),(1468,5754,3),(1469,5755,3),(1470,5756,3),(1471,5757,3),(1472,5758,3),(1473,5759,3),(1474,5760,3),(1475,5761,3),(1476,5762,3),(1477,5763,3),(1478,5764,3),(1479,5765,3),(1480,5766,3),(1481,5767,3),(1482,5768,3),(1483,5769,3),(1484,5770,3),(1485,5771,3),(1486,5772,3),(1487,5773,3),(1488,5774,3),(1489,5775,3),(1490,5776,3),(1491,5777,3),(1492,5778,3),(1493,5779,3),(1494,5780,3),(1495,5781,3),(1496,5782,3),(1497,5783,3),(1498,5784,3),(1499,5785,3),(1500,5786,3),(1501,5787,3),(1502,5788,3),(1503,5789,3),(1504,5790,3),(1505,5791,3),(1506,5792,3),(1507,5793,3),(1508,5794,3),(1509,5795,3),(1510,5796,3),(1511,5797,3),(1512,5798,3),(1513,5799,3),(1514,5800,3),(1515,5801,3),(1516,5802,3),(1517,5803,3),(1518,5804,3),(1519,5805,3),(1520,5806,3),(1521,5807,3),(1522,5808,3),(1523,5809,3),(1524,5810,3),(1525,5811,3),(1526,5812,3),(1527,5813,3),(1528,5814,3),(1529,5815,3),(1530,5816,3),(1531,5817,3),(1532,5818,3),(1533,5819,3),(1534,5820,3),(1535,5821,3),(1536,5822,3),(1537,5823,3),(1538,5824,3),(1539,5825,3),(1540,5826,3),(1541,5827,3),(1542,5828,3),(1543,5829,3),(1544,5830,3),(1545,5831,3),(1546,5832,3),(1547,5833,3),(1548,5834,3),(1549,5835,3),(1550,5836,3),(1551,5837,3),(1552,5838,3),(1553,5839,3),(1554,5840,3),(1555,5841,1),(1556,5842,3),(1557,5843,3),(1558,5844,3),(1559,5845,3),(1560,5846,3),(1561,5847,3),(1562,5848,2),(1563,5849,2),(1564,5850,2),(1565,5851,2),(1566,5852,2),(1567,5853,2),(1568,5854,2),(1569,5855,2),(1570,5856,2),(1571,5857,2),(1572,5858,2),(1573,5859,2),(1574,5860,2),(1575,5861,2),(1576,5862,2),(1577,5863,2),(1578,5864,2),(1579,5865,2),(1580,5866,2),(1581,5867,2),(1582,5868,2),(1583,5869,2),(1584,5870,2),(1585,5871,2),(1586,5872,2),(1587,5873,2),(1588,5874,2),(1589,5875,2),(1590,5876,2),(1591,5877,2),(1592,5878,2),(1593,5879,2),(1594,5880,2),(1595,5881,2),(1596,5882,2),(1597,5883,2),(1598,5884,2),(1599,5885,2),(1600,5886,2),(1601,5887,2),(1602,5888,2),(1603,5889,2),(1604,5890,2),(1605,5891,2),(1606,5892,2),(1607,5893,2),(1608,5894,2),(1609,5895,2),(1610,5896,2),(1611,5897,2),(1612,5898,2),(1613,5899,2),(1614,5900,2),(1615,5901,2),(1616,5902,2),(1617,5903,2),(1618,5904,2),(1619,5905,2),(1620,5906,2),(1621,5907,2),(1622,5908,2),(1623,5909,2),(1624,5910,2),(1625,5911,2),(1626,5912,2),(1627,5913,2),(1628,5914,2),(1629,5915,2),(1630,5916,2),(1631,5917,2),(1632,5918,2),(1633,5919,2),(1634,5920,2),(1635,5921,2),(1636,5922,2),(1637,5923,2),(1638,5924,2),(1639,5925,2),(1640,5926,2),(1641,5927,2),(1642,5928,2),(1643,5929,2),(1644,5930,2),(1645,5931,2),(1646,5932,2),(1647,5933,2),(1648,5934,2),(1649,5935,2),(1650,5936,2),(1651,5937,2),(1652,5938,2),(1653,5939,2),(1654,5940,2),(1655,5941,2),(1656,5942,2),(1657,5943,2),(1658,5944,2),(1659,5945,2),(1660,5946,2),(1661,5947,2),(1662,5948,2),(1663,5949,2);
/*!40000 ALTER TABLE `ems_user_role` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-05-14 19:12:18
