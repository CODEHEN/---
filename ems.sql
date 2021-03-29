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
  `studentNumber` int(4) NOT NULL,
  `weeksSum` int(4) NOT NULL,
  `weeksNumber` int(4) NOT NULL,
  `isFix` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '1',
  `classTime` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ems_class_task`
--

LOCK TABLES `ems_class_task` WRITE;
/*!40000 ALTER TABLE `ems_class_task` DISABLE KEYS */;
INSERT INTO `ems_class_task` (`id`, `semester`, `collegeNo`, `classNo`, `courseNo`, `majorNo`, `teacherNo`, `courseAttr`, `studentNumber`, `weeksSum`, `weeksNumber`, `isFix`, `classTime`) VALUES (1,'2020-2021-2',1,4,'200001',1,'2015010004','02',53,11,4,'1',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ems_classroom`
--

LOCK TABLES `ems_classroom` WRITE;
/*!40000 ALTER TABLE `ems_classroom` DISABLE KEYS */;
INSERT INTO `ems_classroom` (`id`, `teach_build_id`, `classroomName`, `classroomAttr`) VALUES (1,1,'01-101','01'),(2,1,'01-102','01'),(3,1,'01-103','01'),(4,1,'01-103','01'),(5,1,'01-104','01'),(6,2,'02-101','02'),(7,2,'02-102','02'),(8,2,'02-103','02'),(9,1,'01-105','01'),(10,2,'02-106','01'),(11,5,'05-101','01'),(12,5,'05-102','01'),(13,5,'05-103','01'),(14,5,'05-104','01'),(15,5,'05-105','01'),(16,5,'05-106','01');
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ems_course_info`
--

LOCK TABLES `ems_course_info` WRITE;
/*!40000 ALTER TABLE `ems_course_info` DISABLE KEYS */;
INSERT INTO `ems_course_info` (`id`, `course_id`, `course_name`, `course_attr`) VALUES (1,'200001','Java程序设计','02'),(2,'200002','数据结构与算法','02'),(3,'200003','军事理论','03'),(4,'200004','计算机基础','03'),(5,'200005','C语言程序设计','01');
/*!40000 ALTER TABLE `ems_course_info` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=127 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='系统管理-权限资源表 ';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ems_menu`
--

LOCK TABLES `ems_menu` WRITE;
/*!40000 ALTER TABLE `ems_menu` DISABLE KEYS */;
INSERT INTO `ems_menu` (`id`, `parent_id`, `path`, `resources`, `name`, `level`, `sort_no`, `icon`, `type`, `remarks`, `gmt_create`, `gmt_modified`, `component`) VALUES (1,'2','/info/stu/basic','stuInfo','基本信息',2,1,'bxAnaalyse','menu',NULL,'2021-02-18 16:33:12','2021-02-18 16:33:14','                                                                                                                                                                                                                                                               '),(2,'18','/info','userInfo','个人信息',1,1,'bxAnaalyse','menu',NULL,'2021-02-18 16:00:42','2021-02-18 16:00:52','RouteView'),(3,'2','/info/stu/rewardspunishments','stuInfo','奖惩信息',2,2,'bxAnaalyse','menu',NULL,'2021-02-18 16:19:40','2021-02-18 16:19:42','RouteView'),(5,'4','/course/tercourse','course','学期课表',2,1,'bxAnaalyse','menu',NULL,'2021-02-18 21:19:44','2021-02-18 21:19:46','RouteView'),(6,'18','/selectcourse','selectcourse','选课中心',1,3,'bxAnaalyse','menu',NULL,'2021-02-18 21:31:41','2021-02-18 21:31:43','RouteView'),(7,'6','/selectcourse/stu','/selectcourse/stu','学生选课',2,1,'bxAnaalyse','menu',NULL,'2021-02-18 21:35:44','2021-02-18 21:35:47','RouteView'),(8,'6','/selectcourse/stu/result','/selectcourse/stu/result','选课结果',2,3,'bxAnaalyse','menu',NULL,'2021-02-18 21:36:57','2021-02-18 21:36:59','RouteView'),(9,'18','/grade','grade','我的成绩',1,4,'bxAnaalyse','menu',NULL,'2021-02-19 16:27:53','2021-02-19 16:27:56','RouteView'),(10,'9','/grade/course','grade','课程成绩查询',2,1,'bxAnaalyse','menu',NULL,'2021-02-19 16:29:30','2021-02-19 16:29:32','RouteView'),(11,'9','/grade/level','grade','等级考试查询',2,2,'bxAnaalyse','menu',NULL,'2021-02-19 16:31:32','2021-02-19 16:31:34','RouteView'),(12,'4','/course/class','course','班级课表',2,2,'bxAnaalyse','menu',NULL,'2021-02-19 17:11:49','2021-02-19 17:11:51','RouteView'),(13,'4','/course/teacher','course','教师课表',2,3,'bxAnaalyse','menu',NULL,'2021-02-19 17:11:49','2021-02-19 17:11:51','RouteView'),(14,'4','/course/classroom','course','教室课表',2,4,'bxAnaalyse','menu',NULL,'2021-02-19 17:11:49','2021-02-19 17:11:51','RouteView'),(15,'18','/info/admin','adminInfo','信息管理',1,1,'bxAnaalyse','menu',NULL,'2021-02-20 12:51:15','2021-02-20 12:51:19','RouteView'),(16,'15','/info/damin/stu','adminInfo','学生信息',2,1,'bxAnaalyse','menu',NULL,'2021-02-20 13:02:54','2021-02-20 13:02:56','RouteView'),(17,'16','/user/userInfoExcel','adminInfo:add','信息导入',3,3,'bxAnaalyse','button',NULL,NULL,NULL,NULL),(18,'0','/','index','index',1,1,'bxAnaalyse','menu',NULL,NULL,NULL,'BasicLayout'),(19,'18','/dashboard','dashboard','dashboard',1,1,'bxAnaalyse','menu',NULL,NULL,NULL,'RouteView'),(20,'19','/dashboard/workplace','/dashboard/workplace','Workplace',3,1,'bxAnaalyse','menu',NULL,NULL,NULL,'dashboard/Workplace'),(106,'18','/admin/student/**','/admin/student/info','查询学生信息',3,3,NULL,'menu',NULL,NULL,NULL,NULL),(107,'18','/college','/college','获取学院信息',1,1,NULL,'botton',NULL,NULL,NULL,NULL),(108,'18','/classes/**','/classes/**','获取班级信息',1,1,NULL,'botton',NULL,NULL,NULL,NULL),(109,'18','/major/**','/major/**','获取专业信息',1,1,NULL,'botton',NULL,NULL,NULL,NULL),(110,'18','/admin/teacher/**','/admin/teacher/**','查询教师信息',1,1,NULL,'botton',NULL,NULL,NULL,NULL),(111,'18','/admin/college/**','/admin/college/**','查询学院信息',2,2,NULL,'botton',NULL,NULL,NULL,NULL),(112,'18','/admin/admin/**','/admin/admin/info','查询管理员信息',1,1,NULL,'botton',NULL,NULL,NULL,NULL),(113,'18','/notice/info?**','/notice/info','获取公告',1,1,NULL,'botton',NULL,NULL,NULL,NULL),(114,'18','/admin','/admin','获取所有管理员信息',NULL,NULL,NULL,'botton',NULL,NULL,NULL,NULL),(115,'18','/notice','/notice','添加公告',NULL,NULL,NULL,'botton',NULL,NULL,NULL,NULL),(116,'18','/notice?**','/notice?**','删除公告',NULL,NULL,NULL,'botton',NULL,NULL,NULL,NULL),(117,'18','/rap/info?**','/rap/info?**','获取惩罚信息',1,1,NULL,'botton',NULL,NULL,NULL,NULL),(118,'18','/user/name?**','/user/name','获取姓名',1,1,'1','botton',NULL,NULL,NULL,NULL),(119,'18','/rap','/rap','添加奖惩',1,1,'1','botton',NULL,NULL,NULL,NULL),(120,'18','/rap?**','/rap?**','删除奖惩',NULL,1,'1','botton',NULL,NULL,NULL,NULL),(121,'18','/teach_build/info?**','/teach_build/info?**','获取教学楼信息',NULL,1,'1','botton',NULL,NULL,NULL,NULL),(122,'18','/classRoom/**','/classRoom/**','获取教室信息',NULL,1,'1','botton',NULL,NULL,NULL,NULL),(123,'18','/teach_build','/teach_build','教学楼操作',NULL,1,'1','botton',NULL,NULL,NULL,NULL),(124,'18','/course/**','/course/**','课程操作',NULL,11,'1','botton',NULL,NULL,NULL,NULL),(125,'18','/course','/course','课程操作',NULL,1,'1','bottotn',NULL,NULL,NULL,NULL),(126,'18','/course?**','/course?**','删除课程',NULL,1,'1','botton',NULL,NULL,NULL,NULL);
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
  PRIMARY KEY (`open_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='微信用户信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ems_mini_user`
--

LOCK TABLES `ems_mini_user` WRITE;
/*!40000 ALTER TABLE `ems_mini_user` DISABLE KEYS */;
INSERT INTO `ems_mini_user` (`open_id`, `token`, `create_time`, `last_visit_time`, `session_key`, `city`, `province`, `country`, `avatar_url`, `gender`, `nick_name`) VALUES ('oweAo4ylhkiImWd3WR7XVErA6ttY','eyJhbGciOiJIUzUxMiJ9.eyJyb2xlX2xvZ2luIjoid3giLCJzdWIiOiJBbG9ob21vcmEiLCJleHAiOjE2MDQ0NTQ2NzV9.0g9pItj1oSRcl4atIfNC3Z9ImnItk3XD2o5sm2e8B93orZZkVNZ26-hlirvD5lK-0nr41g7S1vAlRRNWRrYBDQ','2020-08-29 19:28:23','2020-11-03 17:21:15','dQtY3mugLMKhaLxNIjWZnQ==','Shaoyang','Hunan','China','https://thirdwx.qlogo.cn/mmopen/vi_32/apln1GQuM3FAL1oQeeUbL6WEV0WL5uYQbPYiaB42YAHAqQn8pc7LZXCz2sbh8hIlAx7UiajA4nQZd3aSPZvHdIXw/132',1,'Alohomora');
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ems_notice`
--

LOCK TABLES `ems_notice` WRITE;
/*!40000 ALTER TABLE `ems_notice` DISABLE KEYS */;
INSERT INTO `ems_notice` (`id`, `created_id`, `created_time`, `content`, `title`) VALUES (4,3,'2021-03-24 11:19:24','啊十大大苏打实打实大苏打','SpringBoot项目部署到Linux(Jar包方式)');
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
INSERT INTO `ems_reward_punishment` (`id`, `name`, `content`, `type`) VALUES (2,'刘望','整夜未归','0'),(3,'李欢欢','扶老人','1'),(4,'刘泽洋','solo三连胜','1');
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
) ENGINE=InnoDB AUTO_INCREMENT=1692 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='系统管理 - 角色-权限资源关联表 ';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ems_role_menu`
--

LOCK TABLES `ems_role_menu` WRITE;
/*!40000 ALTER TABLE `ems_role_menu` DISABLE KEYS */;
INSERT INTO `ems_role_menu` (`id`, `role_id`, `menu_id`, `gmt_create`, `gmt_modified`) VALUES (1666,2,18,NULL,NULL),(1667,2,19,NULL,NULL),(1668,2,20,NULL,NULL),(1670,1,107,NULL,NULL),(1671,1,108,NULL,NULL),(1672,1,110,NULL,NULL),(1673,1,111,'2021-03-19 11:17:33','2021-03-19 11:17:33'),(1674,1,106,NULL,NULL),(1675,1,112,NULL,NULL),(1676,1,109,NULL,NULL),(1677,1,17,'2021-03-21 16:15:07','2021-03-21 16:15:07'),(1678,1,113,'2021-03-23 22:18:47',NULL),(1679,1,114,NULL,NULL),(1680,1,115,NULL,NULL),(1681,1,116,NULL,NULL),(1682,1,117,NULL,NULL),(1683,1,118,NULL,NULL),(1684,1,119,NULL,NULL),(1685,1,120,NULL,NULL),(1686,1,121,NULL,NULL),(1687,1,122,NULL,NULL),(1688,1,123,NULL,NULL),(1689,1,124,NULL,NULL),(1690,1,125,NULL,NULL),(1691,1,126,NULL,NULL);
/*!40000 ALTER TABLE `ems_role_menu` ENABLE KEYS */;
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
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5842 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ems_user`
--

LOCK TABLES `ems_user` WRITE;
/*!40000 ALTER TABLE `ems_user` DISABLE KEYS */;
INSERT INTO `ems_user` (`id`, `number`, `username`, `password`, `token`, `salt`, `sex`, `origin`, `phone`, `email`, `political`, `address`, `avatar`, `college`, `classes`, `major`) VALUES (1,'201701420428','陈利辉','97ba1ef7f148b2aec1c61303a7d88d0967825495','eyJhbGciOiJIUzUxMiJ9.eyJST0xFIjoiW3N0dWRlbnRdIiwic3ViIjoiMjAxNzAxNDIwNDI4IiwiZXhwIjoxNjE1ODY0NTI5fQ.Zm26T1Abnz2BQh6AjNjqIfi2gk76vvsGsazp-ic5rFmjYusjlPLA5eZREoN54JT45ND7LcE_zCuo3V-G6jpEkw','zhengqing','男','湖南省邵阳市','18373297080','420211581@qq.com','共青团员','湖南省邵阳市邵阳县小溪市乡岩门村','https://pic3.zhimg.com/v2-57021d8415152dd28243a7cd127e3921_r.jpg?source=1940ef5c',2,1,21),(3,'201701420000','管理员测试','97ba1ef7f148b2aec1c61303a7d88d0967825495','eyJhbGciOiJIUzUxMiJ9.eyJST0xFIjoiW2FkbWluXSIsInN1YiI6IjIwMTcwMTQyMDAwMCIsImV4cCI6MTYxNzAzMTc3NH0.V6qprJP1KmANlRJoXJsAlbFoBHzk7GXqkjwjT7e3G-OB9Z3_WlKVQqKvlrjaapLuivow9cIa8eYvXkvnNLkoSg','zhengqing','男','','15074084007','1932916647@qq.com','中共预备党员','湖南省平江县向家镇金石村322号','https://pic3.zhimg.com/v2-57021d8415152dd28243a7cd127e3921_r.jpg?source=1940ef5c',0,0,0),(5535,'201501420313','刘望','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男','湖南省岳阳市','15074084007','1932916647@qq.com','共青团员','湖南省平江县向家镇金石村322号',NULL,2,9,21),(5536,'201701420401','王羲','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男','湖南省长沙市','13973187943','2273846280@qq.com','共青团员','湖南省株洲市醴陵市沈潭镇马坡里圆通快递',NULL,1,4,1),(5537,'201701420402','徐家骏','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男','湖南省长沙市','15574901360','1335058697@qq.com','共青团员','湖南省长沙市岳麓区北京御园',NULL,1,4,1),(5538,'201701420403','陈一凡','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男','湖南省长沙市','13974998502','71704547@qq.com','共青团员','湖南省长沙市岳麓区雷锋大道48号阳光晶城5栋',NULL,1,4,1),(5539,'201701420404','林钊毅','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男','湖南省长沙市','15377382770','961891382@qq.com','共青团员','湖南省长沙市开福区华麓雅苑1栋2单元',NULL,1,4,1),(5540,'201701420405','黄俊','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男','湖南省益阳市','13487686092','2941039513@qq.com','共青团员','湖南省益阳市安化县杨林乡',NULL,1,4,1),(5541,'201701420407','曹志军','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男','湖南省郴州市','18573749732','1973312860@qq.com','共青团员','湖南省郴州市临武县水东镇畔塘新村四组',NULL,1,4,1),(5542,'201701420408','李学航','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男','湖南省益阳市','18273791201','815826598@qq.com','共青团员','湖南省益阳市南县名都花苑a6栋303',NULL,1,4,1),(5543,'201701420409','杨盛旺','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男','湖南省益阳市','13974833751','2446565051@qq.com','共青团员','湖南省益阳市沅江市三眼塘',NULL,1,4,1),(5544,'201701420410','匡召绪','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男','湖南省常德市','19174145483','1320196819@qq.com','共青团员','湖南省常德市临澧县合口镇',NULL,1,4,1),(5545,'201701420411','魏巍','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男','湖南省常德市','19198262795','1034954598@qq.com','中共党员','湖南省常德市石门县新铺乡仙女洞村',NULL,1,4,1),(5546,'201701420412','陈慧祥','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男','湖南省衡阳市','15200741602','2237080293@qq.com','共青团员','浙江省宁波市鄞州区塘溪商会酒店',NULL,1,4,1),(5547,'201701420413','李恒彪','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男','湖南省衡阳市','13397477276','1799044809@qq.com','共青团员','湖南省衡阳市常宁宜潭乡回江村新屋组',NULL,1,4,1),(5548,'201701420415','赵泽龙','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男','湖南省怀化市','18273791201','2522957922@qq.com','共青团员','湖南省怀化市会同县林城镇城东大市场赵家蔬菜批发部',NULL,1,4,1),(5549,'201701420416','刘泽洋','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男','湖南省湘潭市','15116795600','741677910@qq.com','共青团员','湖南省湘潭市雨湖区长城乡流水桥笑眯眯宾馆',NULL,1,4,1),(5550,'201701420417','张子明','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男','湖南省湘潭市','15574831102','1145190342@qq.com','共青团员','湖南省湘潭县青山桥镇松柏村恒祥批发部',NULL,1,4,1),(5551,'201701420418','匡小波','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男','湖南省衡阳市','18229269906','2936443093@qq.com','共青团员','湖南省长沙市雨花区北冲尾小区10栋',NULL,1,4,1),(5552,'201701420420','魏程','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男','湖南省衡阳市','15200741602','2401537787@qq.com','共青团员','湖南省衡阳市石鼓区演武坪33栋4单元',NULL,1,4,1),(5553,'201701420421','邹小虎','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男','湖南省衡阳市','15211367513','1756625312@qq.com','共青团员','湖南省衡阳市蒸湘区华兴街道互助小区',NULL,1,4,1),(5554,'201701420422','严新隆','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男','湖南省邵阳市','18608494572','1418613276@qq.com','共青团员','湖南省邵阳市新邵县新田铺镇皂角塘村12组19号',NULL,1,4,1),(5555,'201701420423','姜标','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男','湖南省邵阳市','17674070374','506795946@qq.com','共青团员','湖南省邵阳市新邵县潭府乡水口村6组',NULL,1,4,1),(5556,'201701420424','陈颖捷','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男','湖南省邵阳市','15574831102','2480180308@qq.com','共青团员','湖南省娄底市新化县洋溪镇冷水巷村',NULL,1,4,1),(5557,'201701420425','杨澳','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男','湖南省邵阳市','17674020458','2897394596@qq.com','共青团员','湖南省邵阳市武冈市迎春路六巷26号',NULL,1,4,1),(5558,'201701420426','阳志勇','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男','湖南省邵阳市','18673979711','2639602792@qq.com','共青团员','湖南省邵阳市新宁县飞仙桥乡黄河村2组8号',NULL,1,4,1),(5559,'201701420427','周光明','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男','湖南省湘潭市','18774939122','631827919@qq.com','共青团员','湖南省湘潭市雨湖区江麓兴安村4栋二单元',NULL,1,4,1),(5561,'201701420429','黄艳','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','女','湖南省岳阳市','15974164097',' hy1756517531@163.com','共青团员','湖南省岳阳市华容县团洲乡团农一组',NULL,1,4,1),(5562,'201701420430','张端阳','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男','湖南省常德市','18229613967','2570682469@qq.com','共青团员','湖南省常德市鼎城区13路公交车终点站猴子巷',NULL,1,4,1),(5563,'201701420431','梅俊杰','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男','湖南省常德市','13875036515','1195846090qq.com','共青团员','湖南省常德市津市市金鱼岭明道村0312号',NULL,1,4,1),(5564,'201701420432','贺小龙','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男','湖南省常德市','18673979711','215720201@qq.com','共青团员','湖南省常德市安乡县安康乡仙桃村十组',NULL,1,4,1),(5565,'201701420433','赵纪滨','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男','湖南省株洲市','18774939122','1097204334@qq.com','共青团员','湖南省湘潭市湘潭县石鼓镇',NULL,1,4,1),(5566,'201701420434','姚子凡','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男','湖南省株洲市','18373297080','562890137@qq.com','共青团员','湖南省株洲市醴陵市和谐盛庄传达室',NULL,1,4,1),(5567,'201701420435','朱国庆','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男','湖南省株洲市','15974164097','614041087@qq.com','共青团员','湖南省株洲市醴陵市孙家湾镇孙家湾乡观前村',NULL,1,4,1),(5568,'201701420436','唐天舒','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','女','湖南省株洲市','18229613967','453065849@qq.com','共青团员','湖南省株洲市石峰区桥梁厂小区13栋206',NULL,1,4,1),(5569,'201701420437','刘景薏','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','女','湖南省株洲市','15173383619','1294481010@qq.com','中共党员','湖南省株洲市渌口区伏波大道猎豹汽车4楼',NULL,1,4,1),(5570,'201701420438','黄志超','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男','湖南省株洲市','18975395987','1369936413@qq.com','共青团员','湖南省株洲市渌口区渌口镇漂沙井村',NULL,1,4,1),(5571,'201701420439','赵伟','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男','湖南省长沙市','17850849011','783545134@qq.com','共青团员','福建省福州市闽侯县青口镇大义溪东安利来超市',NULL,1,4,1),(5572,'201701420440','邓杰','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男','湖南省怀化市','15974119549','1473142588@qq.com','共青团员','湖南省怀化市沅陵县桃花岭31号',NULL,1,4,1),(5573,'201701420441','杨慧','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男','湖南省怀化市','15115279132','1259100173@qq.com','共青团员','湖南怀化辰溪县安平镇红敏村四组',NULL,1,4,1),(5574,'201701420443','樊维东','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男','湖南省岳阳市','16674204274','303643984@qq.com','共青团员','共青团员',NULL,1,4,1),(5575,'201701420444','高沁','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','女','湖南省岳阳市','18374909369','1473814772@qq.com','共青团员','湖南省岳阳市湘阴县新泉镇学元村2组',NULL,1,4,1),(5576,'201701420445','周曙蛟','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男','湖南省岳阳市','18573049180','1457893493@qq.com','共青团员','湖南省岳阳市湘阴县鹤龙湖镇南阳镇南阳电器城',NULL,1,4,1),(5577,'201701420446','唐雍','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男','湖南省永州市','19976605561','1371965837@qq.com.com','中共预备党员','湖南省永州市冷水滩区滨江壹号2栋302号房',NULL,1,4,1),(5578,'201701420447','刘京松','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男','湖南省怀化市','18107456106','474713020@qq.com','共青团员','湖南省怀化市鹤城区华夏湖天华楼10A',NULL,1,4,1),(5579,'201701420448','龚瑀','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','女','湖南省怀化市','17375534278','1105127428@qq.com','共青团员','湖南省怀化市鹤城区北国之春2栋601',NULL,1,4,1),(5580,'201701420449','张家明','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男','湖南省郴州市','16674204274','1433624365@qq.com','共青团员','湖南省郴州市桂阳县流峰镇',NULL,1,4,1),(5581,'201701420450','李淑慧','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','女','湖南省郴州市','15211727122','2351956499@qq.com','共青团员','湖南省郴州市永兴县复合乡李家村一组',NULL,1,4,1),(5582,'201701420451','李欢欢','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男','湖南省郴州市','13574540840','767817917@qq.com','共青团员','湖南省郴州市宜章县黄沙镇芙蓉湾新村B6栋',NULL,1,4,1),(5583,'201701420452','周旭威','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男','湖南省郴州市','15973248123','2514349880@qq.com','共青团员','湖南省郴州市临武县武水镇华舜国际新城小区G栋602',NULL,1,4,1),(5584,'201701420453','蒋奥丽','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','女','湖南省永州市','19974619264','2547858337@qq.com','共青团员','湖南省永州市东安县新圩江镇中田',NULL,1,4,1),(5585,'201701420454','唐锦钊','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男','湖南省永州市','18774819676','759698619@qq.com','共青团员','湖南省永州市冷水滩区杨家桥街道珍珠路百货公司宿舍五栋',NULL,1,4,1),(5586,'201701420455','卿敬先','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男','湖南省永州市','15274678590','759698619@qq.com','共青团员','湖南省永州市东安县井头圩镇石板铺村8组',NULL,1,4,1),(5587,'201501420107','谭金智','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男','湖南省株洲市','13347210516','759698619@qq.com','共青团员','湖南省醴陵市请水江乡龙塘村苏家组9号',NULL,1,5,1),(5588,'201701420501','黄锦科','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男','湖南省长沙市','18569033263','759698619@qq.com','共青团员','湖南省长沙市开福区福善巷',NULL,1,5,1),(5589,'201701420502','肖朝彬','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男','湖南省长沙市','18008477115','759698619@qq.com','共青团员','湖南省长沙市雨花区城南东路建材宿舍',NULL,1,5,1),(5590,'201701420503','罗俊平','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男','湖南省娄底市','13723807643','759698619@qq.com','共青团员','湖南省娄底市冷水江市博长花园',NULL,1,5,1),(5591,'201701420504','谭辉','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男','湖南省娄底市','15377382770','759698619@qq.com','共青团员','湖南省长沙市涟源市龙塘镇',NULL,1,5,1),(5592,'201701420505','唐宇豪','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男','湖南省娄底市','17607389718','759698619@qq.com','共青团员','湖南省娄底市新化县烟草公司旁',NULL,1,5,1),(5593,'201701420506','周威','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男','湖南省益阳市','18574947342','759698619@qq.com','共青团员','湖南省沅江市泗湖山镇',NULL,1,5,1),(5594,'201701420508','黄凡','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男','湖南省益阳市','18574934741','759698619@qq.com','共青团员','湖南省长沙市岳麓区茶子山中路金岭小区3区3栋6单元',NULL,1,5,1),(5595,'201701420509','孙佳辉','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男','湖南省益阳市','17670342502','759698619@qq.com','共青团员','广东省东莞市凤岗镇五联村富亚电子厂',NULL,1,5,1),(5596,'201701420510','辛潮','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男','湖南省常德市','18229672300','759698619@qq.com','共青团员','湖南省长沙市长沙县毛塘铺HEMA摄影',NULL,1,5,1),(5597,'201701420511','陈少鑫','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男','湖南省常德市','13469185851','759698619@qq.com','共青团员','湖南省常德市澧县墨池飘香嘉园女主角服装店',NULL,1,5,1),(5598,'201701420512','覃晖结','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','女','湖南省常德市','13974222409','759698619@qq.com','共青团员','湖南省常德市石门县东城明珠',NULL,1,5,1),(5599,'201701420515','胡圣','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男','湖南省衡阳市','15211867053','759698619@qq.com','共青团员','湖南省衡阳市衡东县洋塘河坝正街',NULL,1,5,1),(5600,'201701420518','龙正','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男','湖南省邵阳市','18073841729','759698619@qq.com','共青团员','湖南省娄底市娄星区涟钢钢都花园1栋1单元15楼1503',NULL,1,5,1),(5601,'201701420519','袁燚','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男','湖南省湘潭市','13337228535','759698619@qq.com','共青团员','湖南省湘潭市湘潭县易俗河镇云龙东路一号银河农村电商创业园转1076',NULL,1,5,1),(5602,'201701420520','谢文扬','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男','湖南省衡阳市','15773424030','759698619@qq.com','共青团员','湖南省衡阳市耒阳市五里牌街道发明家广场南栋',NULL,1,5,1),(5603,'201701420521','郑武','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男','湖南省衡阳市','17674764334','759698619@qq.com','共青团员','湖南省耒阳市灶市街道火车站',NULL,1,5,1),(5604,'2017014205221','李文','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男','湖南省邵阳市','17508491994','759698619@qq.com','共青团员','湖南省邵阳市小沙江镇车站',NULL,1,5,1),(5605,'201701420523','陈壮壮','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男','湖南省邵阳市','15180958506','759698619@qq.com','共青团员','湖南省邵阳市新邵县太芝庙镇',NULL,1,5,1),(5606,'201701420524','刘斌','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男','湖南省邵阳市','15973149693','759698619@qq.com','共青团员','湖南省邵阳市新邵县城市花园29-1-801',NULL,1,5,1),(5607,'201701420525','周斌','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男','湖南省邵阳市','17343715961','759698619@qq.com','共青团员','湖南省邵阳市隆回县横板桥镇炭山园村8组3号',NULL,1,5,1),(5608,'201701420526','曾俊杰','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男','湖南省邵阳市','18613999551','759698619@qq.com','共青团员','湖南省邵阳市武冈市皇冠世纪城14栋9楼',NULL,1,5,1),(5609,'201701420527','吴玲玲','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','女','湖南省株洲市','18390262657','759698619@qq.com','共青团员','湖南省株洲市攸县网岭镇018号',NULL,1,5,1),(5610,'201701420528','贺征伟','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男','湖南省株洲市','19174141220','759698619@qq.com','共青团员','湖南省株洲市攸县宁家平',NULL,1,5,1),(5611,'201701420529','郭俊超','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男','湖南省湘潭市','17891002772','759698619@qq.com','共青团员','湖南省湘潭市岳塘区江滨社区34栋3单元102户',NULL,1,5,1),(5612,'201701420531','卢心怡','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','女','湖南省湘潭市','15073292726','759698619@qq.com','共青团员','湖南省湘潭市湘潭县易俗河镇云龙东路一号银河农村电商创业园转1096',NULL,1,5,1),(5613,'201701420533','刘雨晴','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','女','湖南省株洲市','13317481682','759698619@qq.com','共青团员','湖南省株洲市荷塘区合泰大街东湖大厦2单元',NULL,1,5,1),(5614,'201701420534','段佳庆','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男','湖南省株洲市','13378082018','759698619@qq.com','共青团员','湖南省株洲市炎陵县鹿原镇金花村田心组',NULL,1,5,1),(5615,'201701420535','江丽君','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男','湖南省株洲市','13037339171','759698619@qq.com','共青团员','湖南省株洲市醴陵市船湾镇中国邮政旁边',NULL,1,5,1),(5616,'201701420536','杨军','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男','湖南省株洲市','13786371907','759698619@qq.com','共青团员','湖南省株洲市醴陵市嘉树乡玉茶村大树下组30号',NULL,1,5,1),(5617,'201701420537','欧阳润震','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男','湖南省株洲市','15074119632','759698619@qq.com','共青团员','湖南省株洲市攸县皇图镇富厚村岭下组016号',NULL,1,5,1),(5618,'201701420539','王孟轲','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男','湖南省长沙市','13548973098','759698619@qq.com','共青团员','湖南省长沙市宁乡市巷子口镇狮冲村',NULL,1,5,1),(5619,'201701420540','邓舒','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男','湖南省怀化市','13187158155','759698619@qq.com','共青团员','湖南省怀化市溆浦县观音阁镇山脚下村十组',NULL,1,5,1),(5620,'201701420541','周志强','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男','湖南省湘潭市','15200347301','759698619@qq.com','共青团员','湖南省湘潭市湘潭县易俗河镇志远乡村物流转ZY050',NULL,1,5,1),(5621,'201701420542','刘巍','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','女','湖南省长沙市','15526430430','759698619@qq.com','共青团员','湖南省长沙市长沙县江背镇朱家桥社区双丰组',NULL,1,5,1),(5622,'201701420543','陈涛','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男','湖南省长沙市','15616143268','759698619@qq.com','共青团员','湖南省长沙市长沙县开慧镇白沙锡福村赵家组176号',NULL,1,5,1),(5623,'201701420544','盛楚灏','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男','湖南省长沙市','15367937238','759698619@qq.com','共青团员','湖南省长沙市望城区铜官镇新镇二路5号',NULL,1,5,1),(5624,'201701420545','刘刚','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男','湖南省岳阳市','13077180930','759698619@qq.com','共青团员','湖南省岳阳市云溪区岳化金盆社区',NULL,1,5,1),(5625,'201701420546','曾炎','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男','湖南省岳阳市','18373026503','759698619@qq.com','共青团员','湖南省岳阳市平江县加义镇商业街永兴楼301',NULL,1,5,1),(5626,'201701420547','钟帅','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男','湖南省岳阳市','15842886851','759698619@qq.com','共青团员','湖南省岳阳市汨罗市屈原管理区黄金乡禾鸡山村',NULL,1,5,1),(5627,'201701420548','尹宇翔','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男','湖南省岳阳市','13307404986','759698619@qq.com','共青团员','湖南省汨罗市新市镇老街菜鸟驿站',NULL,1,5,1),(5628,'201701420549','吴昌龙','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男','湖南省永州市','15226342355','759698619@qq.com','共青团员','湖南省永州市道县白马渡镇白马渡村9组',NULL,1,5,1),(5629,'201701420550','黄丽娟','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','女','湖南省永州市','18143319248','759698619@qq.com','共青团员','广东省东莞市中堂潢涌大坦路10号通泰水店',NULL,1,5,1),(5630,'201701420551','陈海军','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男','湖南省永州市','17673413493','759698619@qq.com','共青团员','湖南省长沙市长沙县星沙街道蓝山郡2期C栋2单元',NULL,1,5,1),(5631,'201701420552','唐赛','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','女','湖南省永州市','19174145524','759698619@qq.com','共青团员','湖南省长沙市天心区先锋街道中信文化广场雅居13栋915',NULL,1,5,1),(5632,'201701420553','杨兰汇','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','女','湖南省怀化市','18390929801','759698619@qq.com','共青团员','湖南长沙市天心区新开铺街道长沙市天心区湘府西路299号香芙嘉园10栋1404',NULL,1,5,1),(5633,'201701420554','邓鹏涛','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男','湖南省郴州市','15675695015','759698619@qq.com','共青团员','湖南省郴州市桂阳县百花园小区',NULL,1,5,1),(5634,'201701420555','陈强','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男','湖南省郴州市','19108488981','759698619@qq.com','共青团员','湖南省郴州市桂阳县塘市镇',NULL,1,5,1),(5635,'201701420601','朱欣慰','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','女','湖南省长沙市','15974272030','759698619@qq.com','共青团员','湖南省岳阳市岳阳县文艺路东路中通速递',NULL,1,6,1),(5636,'201701420602','谭怀瑾','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男','湖南省娄底市','19112586135','759698619@qq.com','共青团员','湖南省娄底市娄星区大科街道建设街158号娄底市建设局136办公室',NULL,1,6,1),(5637,'201701420603','朱家乐','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男','湖南省娄底市','13487991917','759698619@qq.com','共青团员','湖南省娄底市冷水江市资江大桥麦点超市加盟店',NULL,1,6,1),(5638,'201701420604','李归澳','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','女','湖南省娄底市','18627602627','759698619@qq.com','共青团员','湖南省岳阳市岳阳楼区三眼桥街道红盾小区52号',NULL,1,6,1),(5639,'201701420605','周盼澳','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','女','湖南省益阳市','15898468709','759698619@qq.com','共青团员','湖南省益阳市桃江县石牛江镇',NULL,1,6,1),(5640,'201701420606','徐煜','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男','湖南省益阳市','18774983830','759698619@qq.com','共青团员','湖南省长沙县湘龙街道潇湘社区盛地春天里4栋2303室',NULL,1,6,1),(5641,'201701420607','周骏','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男','湖南省益阳市','15116439591','759698619@qq.com','共青团员','湖南省长沙市岳麓区涉外经济学院西南门南丰港安置小区4栋梦之舟旅馆',NULL,1,6,1),(5642,'201701420608','刘铭涛','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男','湖南省常德市','13142214373','759698619@qq.com','共青团员','湖南省常德市临澧县停弦渡镇青山村曾召英商店',NULL,1,6,1),(5643,'201701420610','张浩','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男','湖南省常德市','15115726712','759698619@qq.com','共青团员','湖南省常德市桃源县双溪口乡一字山村四组',NULL,1,6,1),(5644,'201701420611','廖珍磊','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男','湖南省常德市','17700729198','759698619@qq.com','共青团员','江苏省苏州市昆山市淀山湖镇新华路三和国际工业园',NULL,1,6,1),(5645,'201701420612','黄俊桦','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男','湖南省常德市','17570712546','759698619@qq.com','共青团员','湖南省常德市澧县豪盛小区2期2栋4单元808',NULL,1,6,1),(5646,'201701420613','吴洪涛','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男','湖南省衡阳市','18873420512','759698619@qq.com','共青团员','湖南省衡阳市衡东县衡东大道8号',NULL,1,6,1),(5647,'201701420614','罗嘉诚','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男','湖南省衡阳市','15580957737','759698619@qq.com','共青团员','湖南省衡阳市衡东县新塘镇欧阳海村七组',NULL,1,6,1),(5648,'201701420615','邹韵','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男','湖南省衡阳市','14789394649','759698619@qq.com','共青团员','湖南省衡阳市祁东县石亭子镇太平村三组',NULL,1,6,1),(5649,'201701420616','陈慧','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','女','湖南省邵阳市','15774035730','759698619@qq.com','共青团员','湖南省邵阳市双清区火车站乡财神桥安置地',NULL,1,6,1),(5650,'201701420617','谭旺','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男','湖南省湘潭市','18890374245','759698619@qq.com','共青团员','湖南省湘潭市湘潭县青山桥镇龙书村',NULL,1,6,1),(5651,'201701420618','王彦','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男','湖南省衡阳市','17307404625','759698619@qq.com','共青团员','广东省珠海市香洲区南屏镇广昌社区均昌街36号',NULL,1,6,1),(5652,'201701420619','宁意龙','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男','湖南省邵阳市','15211058031','759698619@qq.com','共青团员','深圳市福田区笋岗路市二医院康复科',NULL,1,6,1),(5653,'201701420620','范粤玺','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男','湖南省邵阳市','17378132883','759698619@qq.com','共青团员','湖南省邵阳市隆回县石门乡盐塘冲村',NULL,1,6,1),(5654,'201701420621','段建辉','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男','湖南省邵阳市','18274441134','759698619@qq.com','共青团员','湖南省邵阳市新邵县大新镇栗滩村',NULL,1,6,1),(5655,'201701420622','彭方','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男','湖南省邵阳市','17680946085','759698619@qq.com','共青团员','湖南省邵阳市隆回县羊古坳乡花塘村6组',NULL,1,6,1),(5656,'201701420623','谢峰','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男','湖南省邵阳市','18075874360','759698619@qq.com','共青团员','湖南省长沙市雨花区五一社区永定小区B1栋2单元',NULL,1,6,1),(5657,'201701420624','朱亚亿','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男','湖南省株洲市','13787272530','759698619@qq.com','共青团员','湖南省株洲市攸县燕窝组',NULL,1,6,1),(5658,'201701420625','刘鑫勇','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男','湖南省株洲市','15343334565','759698619@qq.com','共青团员','湖南省株洲市茶陵县腰陂镇申通快递',NULL,1,6,1),(5659,'201701420626','张佳伟','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男','湖南省湘潭市','18573246913','759698619@qq.com','共青团员','湖南省湘乡市湘房世纪城一期五栋三单元506',NULL,1,6,1),(5660,'201701420627','刘瑞','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','女','湖南省岳阳市','18975040585','759698619@qq.com','共青团员','湖南省岳阳市华容县新河乡徐家岭村6组',NULL,1,6,1),(5661,'201701420628','杜康','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男','湖南省常德市','18973674021','759698619@qq.com','共青团员','湖南省常德市武陵区新建街道育才西路637号芬腾店',NULL,1,6,1),(5662,'201701420629','潘腾','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男','湖南省常德市','15080669007','759698619@qq.com','共青团员','湖南省常德市安乡县子龙车站中通快递',NULL,1,6,1),(5663,'201701420630','易覃','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','女','湖南省株洲市','17872374010','759698619@qq.com','共青团员','湖南省株洲市渌口区湘渌家园',NULL,1,6,1),(5664,'201701420631','刘丁龙','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男','湖南省株洲市','15574113948','759698619@qq.com','共青团员','湖南省株洲市攸县皇图岭镇白日坳村',NULL,1,6,1),(5665,'201701420632','张归','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男','湖南省株洲市','15292179416','759698619@qq.com','共青团员','湖南省株洲市醴陵市仙岳山街道阳东经济开发区阳东电磁电器有限公司二厂',NULL,1,6,1),(5666,'201701420633','李磊','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男','湖南省株洲市','15073393968','759698619@qq.com','共青团员','湖南省株洲市醴陵市浦口镇王坊村周家组',NULL,1,6,1),(5667,'201701420634','龚谋智','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男','湖南省长沙市','13767548494','759698619@qq.com','共青团员','江西省宜春市万载县康乐街道福星小学福源小区',NULL,1,6,1),(5668,'201701420635','刘璇','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','女','湖南省长沙市','15111408545','759698619@qq.com','共青团员','湖南省长沙市宁乡市双凫铺镇',NULL,1,6,1),(5669,'201701420636','向建军','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男','湖南省怀化市','18274580885','759698619@qq.com','共青团员','湖南省郴州市临武县东云路畜牧水产局门面杨军摩托维修店',NULL,1,6,1),(5670,'201701420637','谭宇','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男','湖南省怀化市','15096252021','759698619@qq.com','共青团员','湖南省怀化市芷江侗族自治县东门口小学对面的龙井商店',NULL,1,6,1),(5671,'201701420638','龙黔疆','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男','湖南省湘西土家族苗族自治州','18867223341','759698619@qq.com','共青团员','湖南省湘西自治州花垣县民乐镇斗拱村',NULL,1,6,1),(5672,'201701420639','吴鹏','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男','湖南省长沙市','17775848809','759698619@qq.com','共青团员','湖南省娄底市涟源市龙塘镇家利多电商物流园601仓',NULL,1,6,1),(5673,'201701420640','段卓','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男','湖南省长沙市','13647418293','759698619@qq.com','共青团员','湖南省长沙市长沙县福临镇万家惠超市',NULL,1,6,1),(5674,'201701420641','李嘉涵','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男','湖南省长沙市','13080560900','759698619@qq.com','共青团员','湖南省长沙市岳麓区梅溪湖街道骑龙小区',NULL,1,6,1),(5675,'201701420642','陈根','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男','湖南省长沙市','13548748236','759698619@qq.com','共青团员','湖南长沙浏阳天马路浏金水岸一栋三元808',NULL,1,6,1),(5676,'201701420643','尹乾勋','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男','湖南省长沙市','18374889914','759698619@qq.com','共青团员','湖南长沙浏阳市官桥镇',NULL,1,6,1),(5677,'201701420644','彭龙','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男','湖南省岳阳市','13973000658','759698619@qq.com','共青团员','湖南省岳阳市君山区桥头楼西湾喜洋洋超市',NULL,1,6,1),(5678,'201701420645','周慧','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男','湖南省岳阳市','13203100940','759698619@qq.com','共青团员','湖南省岳阳市岳阳县月田镇大界路',NULL,1,6,1),(5679,'201701420646','黄雨清','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男','湖南省岳阳市','17573055468','759698619@qq.com','共青团员','湖南省岳阳市平江县滨江花园1栋1单元',NULL,1,6,1),(5680,'201701420648','彭威','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男','湖南省岳阳市','15111106737','759698619@qq.com','共青团员','湖南省岳阳市汨罗市高家坊镇邮局',NULL,1,6,1),(5681,'201701420649','欧阳晓彬','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男','湖南省永州市','18074683589','759698619@qq.com','共青团员','湖南省永州市宁远县太平镇下坠土桥头村',NULL,1,6,1),(5682,'201701420650','欧阳艳芳','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','女','湖南省永州市','15007463654','759698619@qq.com','共青团员','湖南省永州市宁远县太平镇下坠土桥头村',NULL,1,6,1),(5683,'201701420651','程颖辉','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男','湖南省永州市','13762991950','759698619@qq.com','共青团员','湖南省永州市新田县大坪塘镇草坪村',NULL,1,6,1),(5684,'201701420652','李皓宣','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男','湖南省永州市','17607462557','759698619@qq.com','共青团员','湖南省永州市祁阳县浯溪街道盘龙中路龙凤小区202',NULL,1,6,1),(5685,'201701420653','刘丹丹','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','女','湖南省郴州市','17674113301','759698619@qq.com','共青团员','湖南省郴州市桂阳县方元镇燕塘快递超市',NULL,1,6,1),(5686,'201701420654','李梦杰','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男','湖南省郴州市','15197566051','759698619@qq.com','共青团员','湖南省郴州市桂阳县和平镇和平村6组',NULL,1,6,1),(5687,'201701420655','黄章红','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男','湖南省郴州市','15575775583','759698619@qq.com','共青团员','湖南省郴州市苏仙区青年大道玫瑰园',NULL,1,6,1),(5688,'2015010004','测试教师1','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男',NULL,'15074084007','1932916647@qq.com','共青团员','湖南省平江县向家镇金石村322号',NULL,1,0,0),(5689,'2015010005','测试教师2','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男',NULL,'13973187943','2273846280@qq.com','共青团员','湖南省株洲市醴陵市沈潭镇马坡里圆通快递',NULL,1,0,0),(5690,'2015010006','徐家骏','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男',NULL,'15574901360','1335058697@qq.com','共青团员','湖南省长沙市岳麓区北京御园',NULL,1,0,0),(5691,'2015010007','陈一凡','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男',NULL,'13974998502','71704547@qq.com','共青团员','湖南省长沙市岳麓区雷锋大道48号阳光晶城5栋',NULL,1,0,0),(5692,'2015010008','林钊毅','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男',NULL,'15377382770','961891382@qq.com','共青团员','湖南省长沙市开福区华麓雅苑1栋2单元',NULL,1,0,0),(5693,'2015010009','黄俊','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男',NULL,'13487686092','2941039513@qq.com','共青团员','湖南省益阳市安化县杨林乡',NULL,1,0,0),(5694,'2015010010','曹志军','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男',NULL,'18573749732','1973312860@qq.com','共青团员','湖南省郴州市临武县水东镇畔塘新村四组',NULL,1,0,0),(5695,'2015010011','李学航','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男',NULL,'18273791201','815826598@qq.com','共青团员','湖南省益阳市南县名都花苑a6栋303',NULL,1,0,0),(5696,'2015010012','杨盛旺','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男',NULL,'13974833751','2446565051@qq.com','共青团员','湖南省益阳市沅江市三眼塘',NULL,1,0,0),(5697,'2015010013','匡召绪','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男',NULL,'19174145483','1320196819@qq.com','共青团员','湖南省常德市临澧县合口镇',NULL,1,0,0),(5698,'2015010014','魏巍','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男',NULL,'19198262795','1034954598@qq.com','中共党员','湖南省常德市石门县新铺乡仙女洞村',NULL,1,0,0),(5699,'2015010015','陈慧祥','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男',NULL,'15200741602','2237080293@qq.com','共青团员','浙江省宁波市鄞州区塘溪商会酒店',NULL,1,0,0),(5700,'2015010016','李恒彪','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男',NULL,'13397477276','1799044809@qq.com','共青团员','湖南省衡阳市常宁宜潭乡回江村新屋组',NULL,1,0,0),(5701,'2015010017','赵泽龙','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男',NULL,'18273791201','2522957922@qq.com','共青团员','湖南省怀化市会同县林城镇城东大市场赵家蔬菜批发部',NULL,1,0,0),(5702,'2015010018','刘泽洋','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男',NULL,'15116795600','741677910@qq.com','共青团员','湖南省湘潭市雨湖区长城乡流水桥笑眯眯宾馆',NULL,1,0,0),(5703,'2015010019','张子明','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男',NULL,'15574831102','1145190342@qq.com','共青团员','湖南省湘潭县青山桥镇松柏村恒祥批发部',NULL,1,0,0),(5704,'2015010020','匡小波','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男',NULL,'18229269906','2936443093@qq.com','共青团员','湖南省长沙市雨花区北冲尾小区10栋',NULL,1,0,0),(5705,'2015010021','魏程','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男',NULL,'15200741602','2401537787@qq.com','共青团员','湖南省衡阳市石鼓区演武坪33栋4单元',NULL,1,0,0),(5706,'2015010022','邹小虎','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男',NULL,'15211367513','1756625312@qq.com','共青团员','湖南省衡阳市蒸湘区华兴街道互助小区',NULL,1,0,0),(5707,'2015010023','严新隆','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男',NULL,'18608494572','1418613276@qq.com','共青团员','湖南省邵阳市新邵县新田铺镇皂角塘村12组19号',NULL,1,0,0),(5708,'2015010024','姜标','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男',NULL,'17674070374','506795946@qq.com','共青团员','湖南省邵阳市新邵县潭府乡水口村6组',NULL,1,0,0),(5709,'2015010025','陈颖捷','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男',NULL,'15574831102','2480180308@qq.com','共青团员','湖南省娄底市新化县洋溪镇冷水巷村',NULL,1,0,0),(5710,'2015010026','杨澳','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男',NULL,'17674020458','2897394596@qq.com','共青团员','湖南省邵阳市武冈市迎春路六巷26号',NULL,1,0,0),(5711,'2015010027','阳志勇','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男',NULL,'18673979711','2639602792@qq.com','共青团员','湖南省邵阳市新宁县飞仙桥乡黄河村2组8号',NULL,1,0,0),(5712,'2015010028','周光明','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男',NULL,'18774939122','631827919@qq.com','共青团员','湖南省湘潭市雨湖区江麓兴安村4栋二单元',NULL,1,0,0),(5714,'2015010030','黄艳','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','女',NULL,'15974164097',' hy1756517531@163.com','共青团员','湖南省岳阳市华容县团洲乡团农一组',NULL,1,0,0),(5715,'2015010031','张端阳','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男',NULL,'18229613967','2570682469@qq.com','共青团员','湖南省常德市鼎城区13路公交车终点站猴子巷',NULL,1,0,0),(5716,'2015010032','梅俊杰','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男',NULL,'13875036515','1195846090qq.com','共青团员','湖南省常德市津市市金鱼岭明道村0312号',NULL,1,0,0),(5717,'2015010033','贺小龙','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男',NULL,'18673979711','215720201@qq.com','共青团员','湖南省常德市安乡县安康乡仙桃村十组',NULL,1,0,0),(5718,'2015010034','赵纪滨','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男',NULL,'18774939122','1097204334@qq.com','共青团员','湖南省湘潭市湘潭县石鼓镇',NULL,1,0,0),(5719,'2015010035','姚子凡','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男',NULL,'18373297080','562890137@qq.com','共青团员','湖南省株洲市醴陵市和谐盛庄传达室',NULL,1,0,0),(5720,'2015010036','朱国庆','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男',NULL,'15974164097','614041087@qq.com','共青团员','湖南省株洲市醴陵市孙家湾镇孙家湾乡观前村',NULL,1,0,0),(5721,'2015010037','唐天舒','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','女',NULL,'18229613967','453065849@qq.com','共青团员','湖南省株洲市石峰区桥梁厂小区13栋206',NULL,1,0,0),(5722,'2015010038','刘景薏','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','女',NULL,'15173383619','1294481010@qq.com','中共党员','湖南省株洲市渌口区伏波大道猎豹汽车4楼',NULL,1,0,0),(5723,'2015010039','黄志超','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男',NULL,'18975395987','1369936413@qq.com','共青团员','湖南省株洲市渌口区渌口镇漂沙井村',NULL,1,0,0),(5724,'2015010040','赵伟','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男',NULL,'17850849011','783545134@qq.com','共青团员','福建省福州市闽侯县青口镇大义溪东安利来超市',NULL,1,0,0),(5725,'2015010041','邓杰','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男',NULL,'15974119549','1473142588@qq.com','共青团员','湖南省怀化市沅陵县桃花岭31号',NULL,1,0,0),(5726,'2015010042','杨慧','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男',NULL,'15115279132','1259100173@qq.com','共青团员','湖南怀化辰溪县安平镇红敏村四组',NULL,1,0,0),(5727,'2015010043','樊维东','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男',NULL,'16674204274','303643984@qq.com','共青团员','共青团员',NULL,1,0,0),(5728,'2015010044','高沁','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','女',NULL,'18374909369','1473814772@qq.com','共青团员','湖南省岳阳市湘阴县新泉镇学元村2组',NULL,1,0,0),(5729,'2015010045','周曙蛟','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男',NULL,'18573049180','1457893493@qq.com','共青团员','湖南省岳阳市湘阴县鹤龙湖镇南阳镇南阳电器城',NULL,1,0,0),(5730,'2015010046','唐雍','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男',NULL,'19976605561','1371965837@qq.com.com','中共预备党员','湖南省永州市冷水滩区滨江壹号2栋302号房',NULL,1,0,0),(5731,'2015010047','刘京松','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男',NULL,'18107456106','474713020@qq.com','共青团员','湖南省怀化市鹤城区华夏湖天华楼10A',NULL,1,0,0),(5732,'2015010048','龚瑀','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','女',NULL,'17375534278','1105127428@qq.com','共青团员','湖南省怀化市鹤城区北国之春2栋601',NULL,1,0,0),(5733,'2015010049','张家明','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男',NULL,'16674204274','1433624365@qq.com','共青团员','湖南省郴州市桂阳县流峰镇',NULL,1,0,0),(5734,'2015010050','李淑慧','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','女',NULL,'15211727122','2351956499@qq.com','共青团员','湖南省郴州市永兴县复合乡李家村一组',NULL,1,0,0),(5735,'2015010051','李欢欢','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男',NULL,'13574540840','767817917@qq.com','共青团员','湖南省郴州市宜章县黄沙镇芙蓉湾新村B6栋',NULL,1,0,0),(5736,'2015010052','周旭威','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男',NULL,'15973248123','2514349880@qq.com','共青团员','湖南省郴州市临武县武水镇华舜国际新城小区G栋602',NULL,1,0,0),(5737,'2015010053','蒋奥丽','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','女',NULL,'19974619264','2547858337@qq.com','共青团员','湖南省永州市东安县新圩江镇中田',NULL,1,0,0),(5738,'2015010054','唐锦钊','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男',NULL,'18774819676','759698619@qq.com','共青团员','湖南省永州市冷水滩区杨家桥街道珍珠路百货公司宿舍五栋',NULL,1,0,0),(5739,'2015010055','卿敬先','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男',NULL,'15274678590','759698619@qq.com','共青团员','湖南省永州市东安县井头圩镇石板铺村8组',NULL,1,0,0),(5740,'2015010056','谭金智','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男',NULL,'13347210516','759698619@qq.com','共青团员','湖南省醴陵市请水江乡龙塘村苏家组9号',NULL,1,0,0),(5741,'2015010057','黄锦科','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男',NULL,'18569033263','759698619@qq.com','共青团员','湖南省长沙市开福区福善巷',NULL,1,0,0),(5742,'2015010058','肖朝彬','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男',NULL,'18008477115','759698619@qq.com','共青团员','湖南省长沙市雨花区城南东路建材宿舍',NULL,1,0,0),(5743,'2015010059','罗俊平','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男',NULL,'13723807643','759698619@qq.com','共青团员','湖南省娄底市冷水江市博长花园',NULL,1,0,0),(5744,'2015010060','谭辉','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男',NULL,'15377382770','759698619@qq.com','共青团员','湖南省长沙市涟源市龙塘镇',NULL,1,0,0),(5745,'2015010061','唐宇豪','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男',NULL,'17607389718','759698619@qq.com','共青团员','湖南省娄底市新化县烟草公司旁',NULL,1,0,0),(5746,'2015010062','周威','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男',NULL,'18574947342','759698619@qq.com','共青团员','湖南省沅江市泗湖山镇',NULL,1,0,0),(5747,'2015010063','黄凡','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男',NULL,'18574934741','759698619@qq.com','共青团员','湖南省长沙市岳麓区茶子山中路金岭小区3区3栋6单元',NULL,1,0,0),(5748,'2015010064','孙佳辉','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男',NULL,'17670342502','759698619@qq.com','共青团员','广东省东莞市凤岗镇五联村富亚电子厂',NULL,1,0,0),(5749,'2015010065','辛潮','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男',NULL,'18229672300','759698619@qq.com','共青团员','湖南省长沙市长沙县毛塘铺HEMA摄影',NULL,1,0,0),(5750,'2015010066','陈少鑫','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男',NULL,'13469185851','759698619@qq.com','共青团员','湖南省常德市澧县墨池飘香嘉园女主角服装店',NULL,1,0,0),(5751,'2015010067','覃晖结','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','女',NULL,'13974222409','759698619@qq.com','共青团员','湖南省常德市石门县东城明珠',NULL,1,0,0),(5752,'2015010068','胡圣','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男',NULL,'15211867053','759698619@qq.com','共青团员','湖南省衡阳市衡东县洋塘河坝正街',NULL,1,0,0),(5753,'2015010069','龙正','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男',NULL,'18073841729','759698619@qq.com','共青团员','湖南省娄底市娄星区涟钢钢都花园1栋1单元15楼1503',NULL,1,0,0),(5754,'2015010070','袁燚','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男',NULL,'13337228535','759698619@qq.com','共青团员','湖南省湘潭市湘潭县易俗河镇云龙东路一号银河农村电商创业园转1076',NULL,1,0,0),(5755,'2015010071','谢文扬','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男',NULL,'15773424030','759698619@qq.com','共青团员','湖南省衡阳市耒阳市五里牌街道发明家广场南栋',NULL,1,0,0),(5756,'2015010072','郑武','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男',NULL,'17674764334','759698619@qq.com','共青团员','湖南省耒阳市灶市街道火车站',NULL,1,0,0),(5757,'2015010073','李文','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男',NULL,'17508491994','759698619@qq.com','共青团员','湖南省邵阳市小沙江镇车站',NULL,1,0,0),(5758,'2015010074','陈壮壮','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男',NULL,'15180958506','759698619@qq.com','共青团员','湖南省邵阳市新邵县太芝庙镇',NULL,1,0,0),(5759,'2015010075','刘斌','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男',NULL,'15973149693','759698619@qq.com','共青团员','湖南省邵阳市新邵县城市花园29-1-801',NULL,1,0,0),(5760,'2015010076','周斌','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男',NULL,'17343715961','759698619@qq.com','共青团员','湖南省邵阳市隆回县横板桥镇炭山园村8组3号',NULL,1,0,0),(5761,'2015010077','曾俊杰','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男',NULL,'18613999551','759698619@qq.com','共青团员','湖南省邵阳市武冈市皇冠世纪城14栋9楼',NULL,1,0,0),(5762,'2015010078','吴玲玲','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','女',NULL,'18390262657','759698619@qq.com','共青团员','湖南省株洲市攸县网岭镇018号',NULL,1,0,0),(5763,'2015010079','贺征伟','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男',NULL,'19174141220','759698619@qq.com','共青团员','湖南省株洲市攸县宁家平',NULL,1,0,0),(5764,'2015010080','郭俊超','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男',NULL,'17891002772','759698619@qq.com','共青团员','湖南省湘潭市岳塘区江滨社区34栋3单元102户',NULL,1,0,0),(5765,'2015010081','卢心怡','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','女',NULL,'15073292726','759698619@qq.com','共青团员','湖南省湘潭市湘潭县易俗河镇云龙东路一号银河农村电商创业园转1096',NULL,1,0,0),(5766,'2015010082','刘雨晴','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','女',NULL,'13317481682','759698619@qq.com','共青团员','湖南省株洲市荷塘区合泰大街东湖大厦2单元',NULL,1,0,0),(5767,'2015010083','段佳庆','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男',NULL,'13378082018','759698619@qq.com','共青团员','湖南省株洲市炎陵县鹿原镇金花村田心组',NULL,1,0,0),(5768,'2015010084','江丽君','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男',NULL,'13037339171','759698619@qq.com','共青团员','湖南省株洲市醴陵市船湾镇中国邮政旁边',NULL,1,0,0),(5769,'2015010085','杨军','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男',NULL,'13786371907','759698619@qq.com','共青团员','湖南省株洲市醴陵市嘉树乡玉茶村大树下组30号',NULL,1,0,0),(5770,'2015010086','欧阳润震','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男',NULL,'15074119632','759698619@qq.com','共青团员','湖南省株洲市攸县皇图镇富厚村岭下组016号',NULL,1,0,0),(5771,'2015010087','王孟轲','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男',NULL,'13548973098','759698619@qq.com','共青团员','湖南省长沙市宁乡市巷子口镇狮冲村',NULL,1,0,0),(5772,'2015010088','邓舒','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男',NULL,'13187158155','759698619@qq.com','共青团员','湖南省怀化市溆浦县观音阁镇山脚下村十组',NULL,1,0,0),(5773,'2015010089','周志强','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男',NULL,'15200347301','759698619@qq.com','共青团员','湖南省湘潭市湘潭县易俗河镇志远乡村物流转ZY050',NULL,1,0,0),(5774,'2015010090','刘巍','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','女',NULL,'15526430430','759698619@qq.com','共青团员','湖南省长沙市长沙县江背镇朱家桥社区双丰组',NULL,1,0,0),(5775,'2015010091','陈涛','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男',NULL,'15616143268','759698619@qq.com','共青团员','湖南省长沙市长沙县开慧镇白沙锡福村赵家组176号',NULL,1,0,0),(5776,'2015010092','盛楚灏','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男',NULL,'15367937238','759698619@qq.com','共青团员','湖南省长沙市望城区铜官镇新镇二路5号',NULL,1,0,0),(5777,'2015010093','刘刚','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男',NULL,'13077180930','759698619@qq.com','共青团员','湖南省岳阳市云溪区岳化金盆社区',NULL,1,0,0),(5778,'2015010094','曾炎','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男',NULL,'18373026503','759698619@qq.com','共青团员','湖南省岳阳市平江县加义镇商业街永兴楼301',NULL,1,0,0),(5779,'2015010095','钟帅','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男',NULL,'15842886851','759698619@qq.com','共青团员','湖南省岳阳市汨罗市屈原管理区黄金乡禾鸡山村',NULL,1,0,0),(5780,'2015010096','尹宇翔','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男',NULL,'13307404986','759698619@qq.com','共青团员','湖南省汨罗市新市镇老街菜鸟驿站',NULL,1,0,0),(5781,'2015010097','吴昌龙','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男',NULL,'15226342355','759698619@qq.com','共青团员','湖南省永州市道县白马渡镇白马渡村9组',NULL,1,0,0),(5782,'2015010098','黄丽娟','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','女',NULL,'18143319248','759698619@qq.com','共青团员','广东省东莞市中堂潢涌大坦路10号通泰水店',NULL,1,0,0),(5783,'2015010099','陈海军','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男',NULL,'17673413493','759698619@qq.com','共青团员','湖南省长沙市长沙县星沙街道蓝山郡2期C栋2单元',NULL,1,0,0),(5784,'2015010100','唐赛','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','女',NULL,'19174145524','759698619@qq.com','共青团员','湖南省长沙市天心区先锋街道中信文化广场雅居13栋915',NULL,1,0,0),(5785,'2015010101','杨兰汇','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','女',NULL,'18390929801','759698619@qq.com','共青团员','湖南长沙市天心区新开铺街道长沙市天心区湘府西路299号香芙嘉园10栋1404',NULL,1,0,0),(5786,'2015010102','邓鹏涛','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男',NULL,'15675695015','759698619@qq.com','共青团员','湖南省郴州市桂阳县百花园小区',NULL,1,0,0),(5787,'2015010103','陈强','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男',NULL,'19108488981','759698619@qq.com','共青团员','湖南省郴州市桂阳县塘市镇',NULL,1,0,0),(5788,'2015010104','朱欣慰','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','女',NULL,'15974272030','759698619@qq.com','共青团员','湖南省岳阳市岳阳县文艺路东路中通速递',NULL,1,0,0),(5789,'2015010105','谭怀瑾','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男',NULL,'19112586135','759698619@qq.com','共青团员','湖南省娄底市娄星区大科街道建设街158号娄底市建设局136办公室',NULL,1,0,0),(5790,'2015010106','朱家乐','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男',NULL,'13487991917','759698619@qq.com','共青团员','湖南省娄底市冷水江市资江大桥麦点超市加盟店',NULL,1,0,0),(5791,'2015010107','李归澳','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','女',NULL,'18627602627','759698619@qq.com','共青团员','湖南省岳阳市岳阳楼区三眼桥街道红盾小区52号',NULL,1,0,0),(5792,'2015010108','周盼澳','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','女',NULL,'15898468709','759698619@qq.com','共青团员','湖南省益阳市桃江县石牛江镇',NULL,1,0,0),(5793,'2015010109','徐煜','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男',NULL,'18774983830','759698619@qq.com','共青团员','湖南省长沙县湘龙街道潇湘社区盛地春天里4栋2303室',NULL,1,0,0),(5794,'2015010110','周骏','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男',NULL,'15116439591','759698619@qq.com','共青团员','湖南省长沙市岳麓区涉外经济学院西南门南丰港安置小区4栋梦之舟旅馆',NULL,1,0,0),(5795,'2015010111','刘铭涛','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男',NULL,'13142214373','759698619@qq.com','共青团员','湖南省常德市临澧县停弦渡镇青山村曾召英商店',NULL,1,0,0),(5796,'2015010112','张浩','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男',NULL,'15115726712','759698619@qq.com','共青团员','湖南省常德市桃源县双溪口乡一字山村四组',NULL,1,0,0),(5797,'2015010113','廖珍磊','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男',NULL,'17700729198','759698619@qq.com','共青团员','江苏省苏州市昆山市淀山湖镇新华路三和国际工业园',NULL,1,0,0),(5798,'2015010114','黄俊桦','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男',NULL,'17570712546','759698619@qq.com','共青团员','湖南省常德市澧县豪盛小区2期2栋4单元808',NULL,1,0,0),(5799,'2015010115','吴洪涛','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男',NULL,'18873420512','759698619@qq.com','共青团员','湖南省衡阳市衡东县衡东大道8号',NULL,1,0,0),(5800,'2015010116','罗嘉诚','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男',NULL,'15580957737','759698619@qq.com','共青团员','湖南省衡阳市衡东县新塘镇欧阳海村七组',NULL,1,0,0),(5801,'2015010117','邹韵','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男',NULL,'14789394649','759698619@qq.com','共青团员','湖南省衡阳市祁东县石亭子镇太平村三组',NULL,1,0,0),(5802,'2015010118','陈慧','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','女',NULL,'15774035730','759698619@qq.com','共青团员','湖南省邵阳市双清区火车站乡财神桥安置地',NULL,1,0,0),(5803,'2015010119','谭旺','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男',NULL,'18890374245','759698619@qq.com','共青团员','湖南省湘潭市湘潭县青山桥镇龙书村',NULL,1,0,0),(5804,'2015010120','王彦','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男',NULL,'17307404625','759698619@qq.com','共青团员','广东省珠海市香洲区南屏镇广昌社区均昌街36号',NULL,1,0,0),(5805,'2015010121','宁意龙','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男',NULL,'15211058031','759698619@qq.com','共青团员','深圳市福田区笋岗路市二医院康复科',NULL,1,0,0),(5806,'2015010122','范粤玺','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男',NULL,'17378132883','759698619@qq.com','共青团员','湖南省邵阳市隆回县石门乡盐塘冲村',NULL,1,0,0),(5807,'2015010123','段建辉','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男',NULL,'18274441134','759698619@qq.com','共青团员','湖南省邵阳市新邵县大新镇栗滩村',NULL,1,0,0),(5808,'2015010124','彭方','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男',NULL,'17680946085','759698619@qq.com','共青团员','湖南省邵阳市隆回县羊古坳乡花塘村6组',NULL,1,0,0),(5809,'2015010125','谢峰','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男',NULL,'18075874360','759698619@qq.com','共青团员','湖南省长沙市雨花区五一社区永定小区B1栋2单元',NULL,1,0,0),(5810,'2015010126','朱亚亿','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男',NULL,'13787272530','759698619@qq.com','共青团员','湖南省株洲市攸县燕窝组',NULL,1,0,0),(5811,'2015010127','刘鑫勇','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男',NULL,'15343334565','759698619@qq.com','共青团员','湖南省株洲市茶陵县腰陂镇申通快递',NULL,1,0,0),(5812,'2015010128','张佳伟','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男',NULL,'18573246913','759698619@qq.com','共青团员','湖南省湘乡市湘房世纪城一期五栋三单元506',NULL,1,0,0),(5813,'2015010129','刘瑞','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','女',NULL,'18975040585','759698619@qq.com','共青团员','湖南省岳阳市华容县新河乡徐家岭村6组',NULL,1,0,0),(5814,'2015010130','杜康','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男',NULL,'18973674021','759698619@qq.com','共青团员','湖南省常德市武陵区新建街道育才西路637号芬腾店',NULL,1,0,0),(5815,'2015010131','潘腾','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男',NULL,'15080669007','759698619@qq.com','共青团员','湖南省常德市安乡县子龙车站中通快递',NULL,1,0,0),(5816,'2015010132','易覃','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','女',NULL,'17872374010','759698619@qq.com','共青团员','湖南省株洲市渌口区湘渌家园',NULL,1,0,0),(5817,'2015010133','刘丁龙','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男',NULL,'15574113948','759698619@qq.com','共青团员','湖南省株洲市攸县皇图岭镇白日坳村',NULL,1,0,0),(5818,'2015010134','张归','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男',NULL,'15292179416','759698619@qq.com','共青团员','湖南省株洲市醴陵市仙岳山街道阳东经济开发区阳东电磁电器有限公司二厂',NULL,1,0,0),(5819,'2015010135','李磊','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男',NULL,'15073393968','759698619@qq.com','共青团员','湖南省株洲市醴陵市浦口镇王坊村周家组',NULL,1,0,0),(5820,'2015010136','龚谋智','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男',NULL,'13767548494','759698619@qq.com','共青团员','江西省宜春市万载县康乐街道福星小学福源小区',NULL,1,0,0),(5821,'2015010137','刘璇','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','女',NULL,'15111408545','759698619@qq.com','共青团员','湖南省长沙市宁乡市双凫铺镇',NULL,1,0,0),(5822,'2015010138','向建军','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男',NULL,'18274580885','759698619@qq.com','共青团员','湖南省郴州市临武县东云路畜牧水产局门面杨军摩托维修店',NULL,1,0,0),(5823,'2015010139','谭宇','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男',NULL,'15096252021','759698619@qq.com','共青团员','湖南省怀化市芷江侗族自治县东门口小学对面的龙井商店',NULL,1,0,0),(5824,'2015010140','龙黔疆','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男',NULL,'18867223341','759698619@qq.com','共青团员','湖南省湘西自治州花垣县民乐镇斗拱村',NULL,1,0,0),(5825,'2015010141','吴鹏','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男',NULL,'17775848809','759698619@qq.com','共青团员','湖南省娄底市涟源市龙塘镇家利多电商物流园601仓',NULL,1,0,0),(5826,'2015010142','段卓','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男',NULL,'13647418293','759698619@qq.com','共青团员','湖南省长沙市长沙县福临镇万家惠超市',NULL,1,0,0),(5827,'2015010143','李嘉涵','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男',NULL,'13080560900','759698619@qq.com','共青团员','湖南省长沙市岳麓区梅溪湖街道骑龙小区',NULL,1,0,0),(5828,'2015010144','陈根','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男',NULL,'13548748236','759698619@qq.com','共青团员','湖南长沙浏阳天马路浏金水岸一栋三元808',NULL,1,0,0),(5829,'2015010145','尹乾勋','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男',NULL,'18374889914','759698619@qq.com','共青团员','湖南长沙浏阳市官桥镇',NULL,1,0,0),(5830,'2015010146','彭龙','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男',NULL,'13973000658','759698619@qq.com','共青团员','湖南省岳阳市君山区桥头楼西湾喜洋洋超市',NULL,1,0,0),(5831,'2015010147','周慧','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男',NULL,'13203100940','759698619@qq.com','共青团员','湖南省岳阳市岳阳县月田镇大界路',NULL,1,0,0),(5832,'2015010148','黄雨清','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男',NULL,'17573055468','759698619@qq.com','共青团员','湖南省岳阳市平江县滨江花园1栋1单元',NULL,1,0,0),(5833,'2015010149','彭威','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男',NULL,'15111106737','759698619@qq.com','共青团员','湖南省岳阳市汨罗市高家坊镇邮局',NULL,1,0,0),(5834,'2015010150','欧阳晓彬','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男',NULL,'18074683589','759698619@qq.com','共青团员','湖南省永州市宁远县太平镇下坠土桥头村',NULL,1,0,0),(5835,'2015010151','欧阳艳芳','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','女',NULL,'15007463654','759698619@qq.com','共青团员','湖南省永州市宁远县太平镇下坠土桥头村',NULL,1,0,0),(5836,'2015010152','程颖辉','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男',NULL,'13762991950','759698619@qq.com','共青团员','湖南省永州市新田县大坪塘镇草坪村',NULL,1,0,0),(5837,'2015010153','李皓宣','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男',NULL,'17607462557','759698619@qq.com','共青团员','湖南省永州市祁阳县浯溪街道盘龙中路龙凤小区202',NULL,1,0,0),(5838,'2015010154','刘丹丹','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','女',NULL,'17674113301','759698619@qq.com','共青团员','湖南省郴州市桂阳县方元镇燕塘快递超市',NULL,1,0,0),(5839,'2015010155','李梦杰','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男',NULL,'15197566051','759698619@qq.com','共青团员','湖南省郴州市桂阳县和平镇和平村6组',NULL,1,0,0),(5840,'2015010156','黄章红','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男',NULL,'15575775583','759698619@qq.com','共青团员','湖南省郴州市苏仙区青年大道玫瑰园',NULL,1,0,0),(5841,'201701000001','管理员测试1','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','男',NULL,'18373297080','54882@8w9t.com',NULL,'湖南省长沙市',NULL,0,0,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=1556 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ems_user_role`
--

LOCK TABLES `ems_user_role` WRITE;
/*!40000 ALTER TABLE `ems_user_role` DISABLE KEYS */;
INSERT INTO `ems_user_role` (`id`, `user_id`, `role_id`) VALUES (1,1,2),(2,3,1),(1247,5533,2),(1248,5534,3),(1249,5535,2),(1250,5536,2),(1251,5537,2),(1252,5538,2),(1253,5539,2),(1254,5540,2),(1255,5541,2),(1256,5542,2),(1257,5543,2),(1258,5544,2),(1259,5545,2),(1260,5546,2),(1261,5547,2),(1262,5548,2),(1263,5549,2),(1264,5550,2),(1265,5551,2),(1266,5552,2),(1267,5553,2),(1268,5554,2),(1269,5555,2),(1270,5556,2),(1271,5557,2),(1272,5558,2),(1273,5559,2),(1274,5560,2),(1275,5561,2),(1276,5562,2),(1277,5563,2),(1278,5564,2),(1279,5565,2),(1280,5566,2),(1281,5567,2),(1282,5568,2),(1283,5569,2),(1284,5570,2),(1285,5571,2),(1286,5572,2),(1287,5573,2),(1288,5574,2),(1289,5575,2),(1290,5576,2),(1291,5577,2),(1292,5578,2),(1293,5579,2),(1294,5580,2),(1295,5581,2),(1296,5582,2),(1297,5583,2),(1298,5584,2),(1299,5585,2),(1300,5586,2),(1301,5587,2),(1302,5588,2),(1303,5589,2),(1304,5590,2),(1305,5591,2),(1306,5592,2),(1307,5593,2),(1308,5594,2),(1309,5595,2),(1310,5596,2),(1311,5597,2),(1312,5598,2),(1313,5599,2),(1314,5600,2),(1315,5601,2),(1316,5602,2),(1317,5603,2),(1318,5604,2),(1319,5605,2),(1320,5606,2),(1321,5607,2),(1322,5608,2),(1323,5609,2),(1324,5610,2),(1325,5611,2),(1326,5612,2),(1327,5613,2),(1328,5614,2),(1329,5615,2),(1330,5616,2),(1331,5617,2),(1332,5618,2),(1333,5619,2),(1334,5620,2),(1335,5621,2),(1336,5622,2),(1337,5623,2),(1338,5624,2),(1339,5625,2),(1340,5626,2),(1341,5627,2),(1342,5628,2),(1343,5629,2),(1344,5630,2),(1345,5631,2),(1346,5632,2),(1347,5633,2),(1348,5634,2),(1349,5635,2),(1350,5636,2),(1351,5637,2),(1352,5638,2),(1353,5639,2),(1354,5640,2),(1355,5641,2),(1356,5642,2),(1357,5643,2),(1358,5644,2),(1359,5645,2),(1360,5646,2),(1361,5647,2),(1362,5648,2),(1363,5649,2),(1364,5650,2),(1365,5651,2),(1366,5652,2),(1367,5653,2),(1368,5654,2),(1369,5655,2),(1370,5656,2),(1371,5657,2),(1372,5658,2),(1373,5659,2),(1374,5660,2),(1375,5661,2),(1376,5662,2),(1377,5663,2),(1378,5664,2),(1379,5665,2),(1380,5666,2),(1381,5667,2),(1382,5668,2),(1383,5669,2),(1384,5670,2),(1385,5671,2),(1386,5672,2),(1387,5673,2),(1388,5674,2),(1389,5675,2),(1390,5676,2),(1391,5677,2),(1392,5678,2),(1393,5679,2),(1394,5680,2),(1395,5681,2),(1396,5682,2),(1397,5683,2),(1398,5684,2),(1399,5685,2),(1400,5686,2),(1401,5687,2),(1402,5688,3),(1403,5689,3),(1404,5690,3),(1405,5691,3),(1406,5692,3),(1407,5693,3),(1408,5694,3),(1409,5695,3),(1410,5696,3),(1411,5697,3),(1412,5698,3),(1413,5699,3),(1414,5700,3),(1415,5701,3),(1416,5702,3),(1417,5703,3),(1418,5704,3),(1419,5705,3),(1420,5706,3),(1421,5707,3),(1422,5708,3),(1423,5709,3),(1424,5710,3),(1425,5711,3),(1426,5712,3),(1427,5713,3),(1428,5714,3),(1429,5715,3),(1430,5716,3),(1431,5717,3),(1432,5718,3),(1433,5719,3),(1434,5720,3),(1435,5721,3),(1436,5722,3),(1437,5723,3),(1438,5724,3),(1439,5725,3),(1440,5726,3),(1441,5727,3),(1442,5728,3),(1443,5729,3),(1444,5730,3),(1445,5731,3),(1446,5732,3),(1447,5733,3),(1448,5734,3),(1449,5735,3),(1450,5736,3),(1451,5737,3),(1452,5738,3),(1453,5739,3),(1454,5740,3),(1455,5741,3),(1456,5742,3),(1457,5743,3),(1458,5744,3),(1459,5745,3),(1460,5746,3),(1461,5747,3),(1462,5748,3),(1463,5749,3),(1464,5750,3),(1465,5751,3),(1466,5752,3),(1467,5753,3),(1468,5754,3),(1469,5755,3),(1470,5756,3),(1471,5757,3),(1472,5758,3),(1473,5759,3),(1474,5760,3),(1475,5761,3),(1476,5762,3),(1477,5763,3),(1478,5764,3),(1479,5765,3),(1480,5766,3),(1481,5767,3),(1482,5768,3),(1483,5769,3),(1484,5770,3),(1485,5771,3),(1486,5772,3),(1487,5773,3),(1488,5774,3),(1489,5775,3),(1490,5776,3),(1491,5777,3),(1492,5778,3),(1493,5779,3),(1494,5780,3),(1495,5781,3),(1496,5782,3),(1497,5783,3),(1498,5784,3),(1499,5785,3),(1500,5786,3),(1501,5787,3),(1502,5788,3),(1503,5789,3),(1504,5790,3),(1505,5791,3),(1506,5792,3),(1507,5793,3),(1508,5794,3),(1509,5795,3),(1510,5796,3),(1511,5797,3),(1512,5798,3),(1513,5799,3),(1514,5800,3),(1515,5801,3),(1516,5802,3),(1517,5803,3),(1518,5804,3),(1519,5805,3),(1520,5806,3),(1521,5807,3),(1522,5808,3),(1523,5809,3),(1524,5810,3),(1525,5811,3),(1526,5812,3),(1527,5813,3),(1528,5814,3),(1529,5815,3),(1530,5816,3),(1531,5817,3),(1532,5818,3),(1533,5819,3),(1534,5820,3),(1535,5821,3),(1536,5822,3),(1537,5823,3),(1538,5824,3),(1539,5825,3),(1540,5826,3),(1541,5827,3),(1542,5828,3),(1543,5829,3),(1544,5830,3),(1545,5831,3),(1546,5832,3),(1547,5833,3),(1548,5834,3),(1549,5835,3),(1550,5836,3),(1551,5837,3),(1552,5838,3),(1553,5839,3),(1554,5840,3),(1555,5841,1);
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

-- Dump completed on 2021-03-29 23:08:36
