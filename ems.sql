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
-- Table structure for table `ems_classes`
--

DROP TABLE IF EXISTS `ems_classes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ems_classes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL COMMENT '班级名',
  `major` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '所属专业',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ems_classes`
--

LOCK TABLES `ems_classes` WRITE;
/*!40000 ALTER TABLE `ems_classes` DISABLE KEYS */;
INSERT INTO `ems_classes` (`id`, `name`, `major`) VALUES (1,'2017软件本1班','1'),(2,'2017软件本2班','1'),(3,'2017软件本3班','1'),(4,'2017软件本4班','1'),(5,'2017软件本5班','1'),(6,'2017软件本6班','1'),(7,'2017软件本7班','1'),(8,'2017网络工程本1班','2');
/*!40000 ALTER TABLE `ems_classes` ENABLE KEYS */;
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
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ems_college`
--

LOCK TABLES `ems_college` WRITE;
/*!40000 ALTER TABLE `ems_college` DISABLE KEYS */;
INSERT INTO `ems_college` (`id`, `name`) VALUES (1,'计算机科学与工程学院'),(2,'国际商学院'),(3,'艺术学院'),(4,'电子科学与工程学院'),(5,'管理学院'),(6,'通识教育学院');
/*!40000 ALTER TABLE `ems_college` ENABLE KEYS */;
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
  `college` varchar(255) NOT NULL COMMENT '所属学院',
  `type` varchar(255) NOT NULL COMMENT '专科/本科',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ems_major`
--

LOCK TABLES `ems_major` WRITE;
/*!40000 ALTER TABLE `ems_major` DISABLE KEYS */;
INSERT INTO `ems_major` (`id`, `major_name`, `college`, `type`) VALUES (1,'软件工程','1','本科'),(2,'网络工程','1','本科'),(3,'物联网工程','1','本科'),(4,'数据科学与大数据技术','1','本科'),(5,'计算机网络技术','1','专科'),(6,'软件技术','1','专科'),(7,'自动化','4','本科'),(8,'通信工程','4','本科'),(9,'人工智能','4','本科'),(10,'电子信息工程','4','本科'),(11,'电子信息工程技术','4','专科'),(12,'电气自动化技术','4','专科'),(14,'旅游管理','5','本科'),(15,'财务管理','5','本科'),(16,'会计学','5','本科'),(17,'工程造价','5','本科'),(18,'旅游管理(专科)','5','专科'),(19,'财务管理(专科)','5','专科'),(20,'会计(专科)','5','专科'),(21,'电子商务','2','本科'),(22,'物流管理','2','本科'),(23,'金融工程','2','本科'),(24,'国际经济与贸易','2','本科'),(25,'互联网金融','2','本科'),(26,'商务英语','2','本科'),(27,'电子商务(专科)','2','专科'),(28,'国际经济与贸易(专科)','2','专科'),(29,'商务英语(专科)','2','专科'),(30,'数字媒体艺术','3','本科'),(31,'播音与主持','3','本科'),(32,'舞蹈表演','3','本科'),(33,'音乐表演','3','本科'),(34,'环境设计','3','本科'),(35,'视觉传达设计','3','本科'),(36,'播音与主持(专科)','3','专科'),(37,'舞蹈表演(专科)','3','专科'),(38,'音乐表演(专科)','3','专科'),(39,'艺术设计','3','专科'),(40,'平面设计','3','专科');
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
) ENGINE=InnoDB AUTO_INCREMENT=111 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='系统管理-权限资源表 ';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ems_menu`
--

LOCK TABLES `ems_menu` WRITE;
/*!40000 ALTER TABLE `ems_menu` DISABLE KEYS */;
INSERT INTO `ems_menu` (`id`, `parent_id`, `path`, `resources`, `name`, `level`, `sort_no`, `icon`, `type`, `remarks`, `gmt_create`, `gmt_modified`, `component`) VALUES (1,'2','/info/stu/basic','stuInfo','基本信息',2,1,'bxAnaalyse','menu',NULL,'2021-02-18 16:33:12','2021-02-18 16:33:14','                                                                                                                                                                                                                                                               '),(2,'18','/info','userInfo','个人信息',1,1,'bxAnaalyse','menu',NULL,'2021-02-18 16:00:42','2021-02-18 16:00:52','RouteView'),(3,'2','/info/stu/rewardspunishments','stuInfo','奖惩信息',2,2,'bxAnaalyse','menu',NULL,'2021-02-18 16:19:40','2021-02-18 16:19:42','RouteView'),(4,'18','/course','course','课表查询',1,2,'bxAnaalyse','menu',NULL,'2021-02-18 20:35:25','2021-02-18 20:35:27','RouteView'),(5,'4','/course/tercourse','course','学期课表',2,1,'bxAnaalyse','menu',NULL,'2021-02-18 21:19:44','2021-02-18 21:19:46','RouteView'),(6,'18','/selectcourse','selectcourse','选课中心',1,3,'bxAnaalyse','menu',NULL,'2021-02-18 21:31:41','2021-02-18 21:31:43','RouteView'),(7,'6','/selectcourse/stu','/selectcourse/stu','学生选课',2,1,'bxAnaalyse','menu',NULL,'2021-02-18 21:35:44','2021-02-18 21:35:47','RouteView'),(8,'6','/selectcourse/stu/result','/selectcourse/stu/result','选课结果',2,3,'bxAnaalyse','menu',NULL,'2021-02-18 21:36:57','2021-02-18 21:36:59','RouteView'),(9,'18','/grade','grade','我的成绩',1,4,'bxAnaalyse','menu',NULL,'2021-02-19 16:27:53','2021-02-19 16:27:56','RouteView'),(10,'9','/grade/course','grade','课程成绩查询',2,1,'bxAnaalyse','menu',NULL,'2021-02-19 16:29:30','2021-02-19 16:29:32','RouteView'),(11,'9','/grade/level','grade','等级考试查询',2,2,'bxAnaalyse','menu',NULL,'2021-02-19 16:31:32','2021-02-19 16:31:34','RouteView'),(12,'4','/course/class','course','班级课表',2,2,'bxAnaalyse','menu',NULL,'2021-02-19 17:11:49','2021-02-19 17:11:51','RouteView'),(13,'4','/course/teacher','course','教师课表',2,3,'bxAnaalyse','menu',NULL,'2021-02-19 17:11:49','2021-02-19 17:11:51','RouteView'),(14,'4','/course/classroom','course','教室课表',2,4,'bxAnaalyse','menu',NULL,'2021-02-19 17:11:49','2021-02-19 17:11:51','RouteView'),(15,'18','/info/admin','adminInfo','信息管理',1,1,'bxAnaalyse','menu',NULL,'2021-02-20 12:51:15','2021-02-20 12:51:19','RouteView'),(16,'15','/info/damin/stu','adminInfo','学生信息',2,1,'bxAnaalyse','menu',NULL,'2021-02-20 13:02:54','2021-02-20 13:02:56','RouteView'),(17,'16','/user/userInfoExcel','adminInfo:add','信息导入',3,3,'bxAnaalyse','button',NULL,NULL,NULL,NULL),(18,'0','/','index','index',1,1,'bxAnaalyse','menu',NULL,NULL,NULL,'BasicLayout'),(19,'18','/dashboard','dashboard','dashboard',1,1,'bxAnaalyse','menu',NULL,NULL,NULL,'RouteView'),(20,'19','/dashboard/workplace','/dashboard/workplace','Workplace',3,1,'bxAnaalyse','menu',NULL,NULL,NULL,'dashboard/Workplace'),(106,'16','/admin/student/**','/admin/student/info','查询学生信息',3,3,NULL,'menu',NULL,NULL,NULL,NULL),(107,'18','/college','/college','获取学院信息',1,1,NULL,'botton',NULL,NULL,NULL,NULL),(108,'18','/classes/**','/classes/**','获取班级信息',1,1,NULL,'botton',NULL,NULL,NULL,NULL),(109,'18','/major/**','/major/**','获取专业信息',1,1,NULL,'botton',NULL,NULL,NULL,NULL),(110,'18','/admin/teacher/**','/admin/teacher/**','查询教师信息',1,1,NULL,'botton',NULL,NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=1673 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='系统管理 - 角色-权限资源关联表 ';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ems_role_menu`
--

LOCK TABLES `ems_role_menu` WRITE;
/*!40000 ALTER TABLE `ems_role_menu` DISABLE KEYS */;
INSERT INTO `ems_role_menu` (`id`, `role_id`, `menu_id`, `gmt_create`, `gmt_modified`) VALUES (1666,2,18,NULL,NULL),(1667,2,19,NULL,NULL),(1668,2,20,NULL,NULL),(1669,1,106,'2021-03-02 17:31:39','2021-03-02 17:31:39'),(1670,1,107,NULL,NULL),(1671,1,108,NULL,NULL),(1672,1,110,NULL,NULL);
/*!40000 ALTER TABLE `ems_role_menu` ENABLE KEYS */;
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
  `classes` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '班级',
  `sex` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '性别',
  `origin` varchar(255) DEFAULT NULL COMMENT '生源地',
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '联系电话',
  `email` varchar(255) DEFAULT NULL COMMENT '邮箱',
  `political` varchar(255) DEFAULT NULL COMMENT '政治面貌',
  `address` varchar(255) DEFAULT NULL COMMENT '家庭住址',
  `college` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '学院',
  `major` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '专业',
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '头像',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5364 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ems_user`
--

LOCK TABLES `ems_user` WRITE;
/*!40000 ALTER TABLE `ems_user` DISABLE KEYS */;
INSERT INTO `ems_user` (`id`, `number`, `username`, `password`, `token`, `salt`, `classes`, `sex`, `origin`, `phone`, `email`, `political`, `address`, `college`, `major`, `avatar`) VALUES (1,'201701420428','陈利辉','97ba1ef7f148b2aec1c61303a7d88d0967825495','eyJhbGciOiJIUzUxMiJ9.eyJST0xFIjoiW3N0dWRlbnRdIiwic3ViIjoiMjAxNzAxNDIwNDI4IiwiZXhwIjoxNjE1ODY0NTI5fQ.Zm26T1Abnz2BQh6AjNjqIfi2gk76vvsGsazp-ic5rFmjYusjlPLA5eZREoN54JT45ND7LcE_zCuo3V-G6jpEkw','zhengqing','2017软件本4班','男','湖南省邵阳市','18373297080','420211581@qq.com','共青团员','湖南省邵阳市邵阳县小溪市乡岩门村','计算机科学与工程学院','软件工程','https://pic3.zhimg.com/v2-57021d8415152dd28243a7cd127e3921_r.jpg?source=1940ef5c'),(3,'201701420000','管理员测试','97ba1ef7f148b2aec1c61303a7d88d0967825495','eyJhbGciOiJIUzUxMiJ9.eyJST0xFIjoiW2FkbWluXSIsInN1YiI6IjIwMTcwMTQyMDAwMCIsImV4cCI6MTYxNTkxMTQ0OH0.L5KmIlSm8w497CyxA2YQVFvZO7qLjSE8y_tDSe4CTwgGOynlp9t2Z4xQ6kNeOj9fmahfBK3gmTHSBVAUDkv3LA','zhengqing','','男','','15074084007改','1932916647@qq.com改','中共预备党员','湖南省平江县向家镇金石村322号改','计算机科学与工程学院','软件工程',NULL),(5210,'201501420313','刘望','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','2017软件本4班','男','湖南省岳阳市','15074084007','1932916647@qq.com','共青团员','湖南省平江县向家镇金石村322号','计算机科学与工程学院','软件工程',NULL),(5211,'201701420401','王羲','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','2017软件本4班','男','湖南省长沙市','13973187943','2273846280@qq.com','共青团员','湖南省株洲市醴陵市沈潭镇马坡里圆通快递','计算机科学与工程学院','软件工程',NULL),(5212,'201701420402','徐家骏','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','2017软件本4班','男','湖南省长沙市','15574901360','1335058697@qq.com','共青团员','湖南省长沙市岳麓区北京御园','计算机科学与工程学院','软件工程',NULL),(5213,'201701420403','陈一凡','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','2017软件本4班','男','湖南省长沙市','13974998502','71704547@qq.com','共青团员','湖南省长沙市岳麓区雷锋大道48号阳光晶城5栋','计算机科学与工程学院','软件工程',NULL),(5214,'201701420404','林钊毅','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','2017软件本4班','男','湖南省长沙市','15377382770','961891382@qq.com','共青团员','湖南省长沙市开福区华麓雅苑1栋2单元','计算机科学与工程学院','软件工程',NULL),(5215,'201701420405','黄俊','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','2017软件本4班','男','湖南省益阳市','13487686092','2941039513@qq.com','共青团员','湖南省益阳市安化县杨林乡','计算机科学与工程学院','软件工程',NULL),(5216,'201701420407','曹志军','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','2017软件本4班','男','湖南省郴州市','18573749732','1973312860@qq.com','共青团员','湖南省郴州市临武县水东镇畔塘新村四组','计算机科学与工程学院','软件工程',NULL),(5217,'201701420408','李学航','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','2017软件本4班','男','湖南省益阳市','18273791201','815826598@qq.com','共青团员','湖南省益阳市南县名都花苑a6栋303','计算机科学与工程学院','软件工程',NULL),(5218,'201701420409','杨盛旺','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','2017软件本4班','男','湖南省益阳市','13974833751','2446565051@qq.com','共青团员','湖南省益阳市沅江市三眼塘','计算机科学与工程学院','软件工程',NULL),(5219,'201701420410','匡召绪','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','2017软件本4班','男','湖南省常德市','19174145483','1320196819@qq.com','共青团员','湖南省常德市临澧县合口镇','计算机科学与工程学院','软件工程',NULL),(5220,'201701420411','魏巍','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','2017软件本4班','男','湖南省常德市','19198262795','1034954598@qq.com','中共党员','湖南省常德市石门县新铺乡仙女洞村','计算机科学与工程学院','软件工程',NULL),(5221,'201701420412','陈慧祥','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','2017软件本4班','男','湖南省衡阳市','15200741602','2237080293@qq.com','共青团员','浙江省宁波市鄞州区塘溪商会酒店','计算机科学与工程学院','软件工程',NULL),(5222,'201701420413','李恒彪','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','2017软件本4班','男','湖南省衡阳市','13397477276','1799044809@qq.com','共青团员','湖南省衡阳市常宁宜潭乡回江村新屋组','计算机科学与工程学院','软件工程',NULL),(5223,'201701420415','赵泽龙','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','2017软件本4班','男','湖南省怀化市','18273791201','2522957922@qq.com','共青团员','湖南省怀化市会同县林城镇城东大市场赵家蔬菜批发部','计算机科学与工程学院','软件工程',NULL),(5224,'201701420416','刘泽洋','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','2017软件本4班','男','湖南省湘潭市','15116795600','741677910@qq.com','共青团员','湖南省湘潭市雨湖区长城乡流水桥笑眯眯宾馆','计算机科学与工程学院','软件工程',NULL),(5225,'201701420417','张子明','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','2017软件本4班','男','湖南省湘潭市','15574831102','1145190342@qq.com','共青团员','湖南省湘潭县青山桥镇松柏村恒祥批发部','计算机科学与工程学院','软件工程',NULL),(5226,'201701420418','匡小波','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','2017软件本4班','男','湖南省衡阳市','18229269906','2936443093@qq.com','共青团员','湖南省长沙市雨花区北冲尾小区10栋','计算机科学与工程学院','软件工程',NULL),(5227,'201701420420','魏程','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','2017软件本4班','男','湖南省衡阳市','15200741602','2401537787@qq.com','共青团员','湖南省衡阳市石鼓区演武坪33栋4单元','计算机科学与工程学院','软件工程',NULL),(5228,'201701420421','邹小虎','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','2017软件本4班','男','湖南省衡阳市','15211367513','1756625312@qq.com','共青团员','湖南省衡阳市蒸湘区华兴街道互助小区','计算机科学与工程学院','软件工程',NULL),(5229,'201701420422','严新隆','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','2017软件本4班','男','湖南省邵阳市','18608494572','1418613276@qq.com','共青团员','湖南省邵阳市新邵县新田铺镇皂角塘村12组19号','计算机科学与工程学院','软件工程',NULL),(5230,'201701420423','姜标','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','2017软件本4班','男','湖南省邵阳市','17674070374','506795946@qq.com','共青团员','湖南省邵阳市新邵县潭府乡水口村6组','计算机科学与工程学院','软件工程',NULL),(5231,'201701420424','陈颖捷','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','2017软件本4班','男','湖南省邵阳市','15574831102','2480180308@qq.com','共青团员','湖南省娄底市新化县洋溪镇冷水巷村','计算机科学与工程学院','软件工程',NULL),(5232,'201701420425','杨澳','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','2017软件本4班','男','湖南省邵阳市','17674020458','2897394596@qq.com','共青团员','湖南省邵阳市武冈市迎春路六巷26号','计算机科学与工程学院','软件工程',NULL),(5233,'201701420426','阳志勇','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','2017软件本4班','男','湖南省邵阳市','18673979711','2639602792@qq.com','共青团员','湖南省邵阳市新宁县飞仙桥乡黄河村2组8号','计算机科学与工程学院','软件工程',NULL),(5234,'201701420427','周光明','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','2017软件本4班','男','湖南省湘潭市','18774939122','631827919@qq.com','共青团员','湖南省湘潭市雨湖区江麓兴安村4栋二单元','计算机科学与工程学院','软件工程',NULL),(5236,'201701420429','黄艳','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','2017软件本4班','女','湖南省岳阳市','15974164097',' hy1756517531@163.com','共青团员','湖南省岳阳市华容县团洲乡团农一组','计算机科学与工程学院','软件工程',NULL),(5237,'201701420430','张端阳','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','2017软件本4班','男','湖南省常德市','18229613967','2570682469@qq.com','共青团员','湖南省常德市鼎城区13路公交车终点站猴子巷','计算机科学与工程学院','软件工程',NULL),(5238,'201701420431','梅俊杰','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','2017软件本4班','男','湖南省常德市','13875036515','1195846090qq.com','共青团员','湖南省常德市津市市金鱼岭明道村0312号','计算机科学与工程学院','软件工程',NULL),(5239,'201701420432','贺小龙','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','2017软件本4班','男','湖南省常德市','18673979711','215720201@qq.com','共青团员','湖南省常德市安乡县安康乡仙桃村十组','计算机科学与工程学院','软件工程',NULL),(5240,'201701420433','赵纪滨','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','2017软件本4班','男','湖南省株洲市','18774939122','1097204334@qq.com','共青团员','湖南省湘潭市湘潭县石鼓镇','计算机科学与工程学院','软件工程',NULL),(5241,'201701420434','姚子凡','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','2017软件本4班','男','湖南省株洲市','18373297080','562890137@qq.com','共青团员','湖南省株洲市醴陵市和谐盛庄传达室','计算机科学与工程学院','软件工程',NULL),(5242,'201701420435','朱国庆','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','2017软件本4班','男','湖南省株洲市','15974164097','614041087@qq.com','共青团员','湖南省株洲市醴陵市孙家湾镇孙家湾乡观前村','计算机科学与工程学院','软件工程',NULL),(5243,'201701420436','唐天舒','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','2017软件本4班','女','湖南省株洲市','18229613967','453065849@qq.com','共青团员','湖南省株洲市石峰区桥梁厂小区13栋206','计算机科学与工程学院','软件工程',NULL),(5244,'201701420437','刘景薏','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','2017软件本4班','女','湖南省株洲市','15173383619','1294481010@qq.com','中共党员','湖南省株洲市渌口区伏波大道猎豹汽车4楼','计算机科学与工程学院','软件工程',NULL),(5245,'201701420438','黄志超','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','2017软件本4班','男','湖南省株洲市','18975395987','1369936413@qq.com','共青团员','湖南省株洲市渌口区渌口镇漂沙井村','计算机科学与工程学院','软件工程',NULL),(5246,'201701420439','赵伟','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','2017软件本4班','男','湖南省长沙市','17850849011','783545134@qq.com','共青团员','福建省福州市闽侯县青口镇大义溪东安利来超市','计算机科学与工程学院','软件工程',NULL),(5247,'201701420440','邓杰','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','2017软件本4班','男','湖南省怀化市','15974119549','1473142588@qq.com','共青团员','湖南省怀化市沅陵县桃花岭31号','计算机科学与工程学院','软件工程',NULL),(5248,'201701420441','杨慧','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','2017软件本4班','男','湖南省怀化市','15115279132','1259100173@qq.com','共青团员','湖南怀化辰溪县安平镇红敏村四组','计算机科学与工程学院','软件工程',NULL),(5249,'201701420443','樊维东','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','2017软件本4班','男','湖南省岳阳市','16674204274','303643984@qq.com','共青团员','共青团员','计算机科学与工程学院','软件工程',NULL),(5250,'201701420444','高沁','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','2017软件本4班','女','湖南省岳阳市','18374909369','1473814772@qq.com','共青团员','湖南省岳阳市湘阴县新泉镇学元村2组','计算机科学与工程学院','软件工程',NULL),(5251,'201701420445','周曙蛟','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','2017软件本4班','男','湖南省岳阳市','18573049180','1457893493@qq.com','共青团员','湖南省岳阳市湘阴县鹤龙湖镇南阳镇南阳电器城','计算机科学与工程学院','软件工程',NULL),(5252,'201701420446','唐雍','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','2017软件本4班','男','湖南省永州市','19976605561','1371965837@qq.com.com','中共预备党员','湖南省永州市冷水滩区滨江壹号2栋302号房','计算机科学与工程学院','软件工程',NULL),(5253,'201701420447','刘京松','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','2017软件本4班','男','湖南省怀化市','18107456106','474713020@qq.com','共青团员','湖南省怀化市鹤城区华夏湖天华楼10A','计算机科学与工程学院','软件工程',NULL),(5254,'201701420448','龚瑀','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','2017软件本4班','女','湖南省怀化市','17375534278','1105127428@qq.com','共青团员','湖南省怀化市鹤城区北国之春2栋601','计算机科学与工程学院','软件工程',NULL),(5255,'201701420449','张家明','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','2017软件本4班','男','湖南省郴州市','16674204274','1433624365@qq.com','共青团员','湖南省郴州市桂阳县流峰镇','计算机科学与工程学院','软件工程',NULL),(5256,'201701420450','李淑慧','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','2017软件本4班','女','湖南省郴州市','15211727122','2351956499@qq.com','共青团员','湖南省郴州市永兴县复合乡李家村一组','计算机科学与工程学院','软件工程',NULL),(5257,'201701420451','李欢欢','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','2017软件本4班','男','湖南省郴州市','13574540840','767817917@qq.com','共青团员','湖南省郴州市宜章县黄沙镇芙蓉湾新村B6栋','计算机科学与工程学院','软件工程',NULL),(5258,'201701420452','周旭威','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','2017软件本4班','男','湖南省郴州市','15973248123','2514349880@qq.com','共青团员','湖南省郴州市临武县武水镇华舜国际新城小区G栋602','计算机科学与工程学院','软件工程',NULL),(5259,'201701420453','蒋奥丽','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','2017软件本4班','女','湖南省永州市','19974619264','2547858337@qq.com','共青团员','湖南省永州市东安县新圩江镇中田','计算机科学与工程学院','软件工程',NULL),(5260,'201701420454','唐锦钊','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','2017软件本4班','男','湖南省永州市','18774819676','759698619@qq.com','共青团员','湖南省永州市冷水滩区杨家桥街道珍珠路百货公司宿舍五栋','计算机科学与工程学院','软件工程',NULL),(5261,'201701420455','卿敬先','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','2017软件本4班','男','湖南省永州市','15274678590','759698619@qq.com','共青团员','湖南省永州市东安县井头圩镇石板铺村8组','计算机科学与工程学院','软件工程',NULL),(5262,'201501420107','谭金智','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','2017软件本5班','男','湖南省株洲市','13347210516','759698619@qq.com','共青团员','湖南省醴陵市请水江乡龙塘村苏家组9号','计算机科学与工程学院','软件工程',NULL),(5263,'201701420501','黄锦科','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','2017软件本5班','男','湖南省长沙市','18569033263','759698619@qq.com','共青团员','湖南省长沙市开福区福善巷','计算机科学与工程学院','软件工程',NULL),(5264,'201701420502','肖朝彬','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','2017软件本5班','男','湖南省长沙市','18008477115','759698619@qq.com','共青团员','湖南省长沙市雨花区城南东路建材宿舍','计算机科学与工程学院','软件工程',NULL),(5265,'201701420503','罗俊平','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','2017软件本5班','男','湖南省娄底市','13723807643','759698619@qq.com','共青团员','湖南省娄底市冷水江市博长花园','计算机科学与工程学院','软件工程',NULL),(5266,'201701420504','谭辉','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','2017软件本5班','男','湖南省娄底市','15377382770','759698619@qq.com','共青团员','湖南省长沙市涟源市龙塘镇','计算机科学与工程学院','软件工程',NULL),(5267,'201701420505','唐宇豪','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','2017软件本5班','男','湖南省娄底市','17607389718','759698619@qq.com','共青团员','湖南省娄底市新化县烟草公司旁','计算机科学与工程学院','软件工程',NULL),(5268,'201701420506','周威','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','2017软件本5班','男','湖南省益阳市','18574947342','759698619@qq.com','共青团员','湖南省沅江市泗湖山镇','计算机科学与工程学院','软件工程',NULL),(5269,'201701420508','黄凡','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','2017软件本5班','男','湖南省益阳市','18574934741','759698619@qq.com','共青团员','湖南省长沙市岳麓区茶子山中路金岭小区3区3栋6单元','计算机科学与工程学院','软件工程',NULL),(5270,'201701420509','孙佳辉','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','2017软件本5班','男','湖南省益阳市','17670342502','759698619@qq.com','共青团员','广东省东莞市凤岗镇五联村富亚电子厂','计算机科学与工程学院','软件工程',NULL),(5271,'201701420510','辛潮','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','2017软件本5班','男','湖南省常德市','18229672300','759698619@qq.com','共青团员','湖南省长沙市长沙县毛塘铺HEMA摄影','计算机科学与工程学院','软件工程',NULL),(5272,'201701420511','陈少鑫','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','2017软件本5班','男','湖南省常德市','13469185851','759698619@qq.com','共青团员','湖南省常德市澧县墨池飘香嘉园女主角服装店','计算机科学与工程学院','软件工程',NULL),(5273,'201701420512','覃晖结','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','2017软件本5班','女','湖南省常德市','13974222409','759698619@qq.com','共青团员','湖南省常德市石门县东城明珠','计算机科学与工程学院','软件工程',NULL),(5274,'201701420515','胡圣','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','2017软件本5班','男','湖南省衡阳市','15211867053','759698619@qq.com','共青团员','湖南省衡阳市衡东县洋塘河坝正街','计算机科学与工程学院','软件工程',NULL),(5275,'201701420518','龙正','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','2017软件本5班','男','湖南省邵阳市','18073841729','759698619@qq.com','共青团员','湖南省娄底市娄星区涟钢钢都花园1栋1单元15楼1503','计算机科学与工程学院','软件工程',NULL),(5276,'201701420519','袁燚','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','2017软件本5班','男','湖南省湘潭市','13337228535','759698619@qq.com','共青团员','湖南省湘潭市湘潭县易俗河镇云龙东路一号银河农村电商创业园转1076','计算机科学与工程学院','软件工程',NULL),(5277,'201701420520','谢文扬','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','2017软件本5班','男','湖南省衡阳市','15773424030','759698619@qq.com','共青团员','湖南省衡阳市耒阳市五里牌街道发明家广场南栋','计算机科学与工程学院','软件工程',NULL),(5278,'201701420521','郑武','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','2017软件本5班','男','湖南省衡阳市','17674764334','759698619@qq.com','共青团员','湖南省耒阳市灶市街道火车站','计算机科学与工程学院','软件工程',NULL),(5279,'2017014205221','李文','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','2017软件本5班','男','湖南省邵阳市','17508491994','759698619@qq.com','共青团员','湖南省邵阳市小沙江镇车站','计算机科学与工程学院','软件工程',NULL),(5280,'201701420523','陈壮壮','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','2017软件本5班','男','湖南省邵阳市','15180958506','759698619@qq.com','共青团员','湖南省邵阳市新邵县太芝庙镇','计算机科学与工程学院','软件工程',NULL),(5281,'201701420524','刘斌','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','2017软件本5班','男','湖南省邵阳市','15973149693','759698619@qq.com','共青团员','湖南省邵阳市新邵县城市花园29-1-801','计算机科学与工程学院','软件工程',NULL),(5282,'201701420525','周斌','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','2017软件本5班','男','湖南省邵阳市','17343715961','759698619@qq.com','共青团员','湖南省邵阳市隆回县横板桥镇炭山园村8组3号','计算机科学与工程学院','软件工程',NULL),(5283,'201701420526','曾俊杰','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','2017软件本5班','男','湖南省邵阳市','18613999551','759698619@qq.com','共青团员','湖南省邵阳市武冈市皇冠世纪城14栋9楼','计算机科学与工程学院','软件工程',NULL),(5284,'201701420527','吴玲玲','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','2017软件本5班','女','湖南省株洲市','18390262657','759698619@qq.com','共青团员','湖南省株洲市攸县网岭镇018号','计算机科学与工程学院','软件工程',NULL),(5285,'201701420528','贺征伟','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','2017软件本5班','男','湖南省株洲市','19174141220','759698619@qq.com','共青团员','湖南省株洲市攸县宁家平','计算机科学与工程学院','软件工程',NULL),(5286,'201701420529','郭俊超','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','2017软件本5班','男','湖南省湘潭市','17891002772','759698619@qq.com','共青团员','湖南省湘潭市岳塘区江滨社区34栋3单元102户','计算机科学与工程学院','软件工程',NULL),(5287,'201701420531','卢心怡','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','2017软件本5班','女','湖南省湘潭市','15073292726','759698619@qq.com','共青团员','湖南省湘潭市湘潭县易俗河镇云龙东路一号银河农村电商创业园转1096','计算机科学与工程学院','软件工程',NULL),(5288,'201701420533','刘雨晴','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','2017软件本5班','女','湖南省株洲市','13317481682','759698619@qq.com','共青团员','湖南省株洲市荷塘区合泰大街东湖大厦2单元','计算机科学与工程学院','软件工程',NULL),(5289,'201701420534','段佳庆','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','2017软件本5班','男','湖南省株洲市','13378082018','759698619@qq.com','共青团员','湖南省株洲市炎陵县鹿原镇金花村田心组','计算机科学与工程学院','软件工程',NULL),(5290,'201701420535','江丽君','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','2017软件本5班','男','湖南省株洲市','13037339171','759698619@qq.com','共青团员','湖南省株洲市醴陵市船湾镇中国邮政旁边','计算机科学与工程学院','软件工程',NULL),(5291,'201701420536','杨军','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','2017软件本5班','男','湖南省株洲市','13786371907','759698619@qq.com','共青团员','湖南省株洲市醴陵市嘉树乡玉茶村大树下组30号','计算机科学与工程学院','软件工程',NULL),(5292,'201701420537','欧阳润震','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','2017软件本5班','男','湖南省株洲市','15074119632','759698619@qq.com','共青团员','湖南省株洲市攸县皇图镇富厚村岭下组016号','计算机科学与工程学院','软件工程',NULL),(5293,'201701420539','王孟轲','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','2017软件本5班','男','湖南省长沙市','13548973098','759698619@qq.com','共青团员','湖南省长沙市宁乡市巷子口镇狮冲村','计算机科学与工程学院','软件工程',NULL),(5294,'201701420540','邓舒','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','2017软件本5班','男','湖南省怀化市','13187158155','759698619@qq.com','共青团员','湖南省怀化市溆浦县观音阁镇山脚下村十组','计算机科学与工程学院','软件工程',NULL),(5295,'201701420541','周志强','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','2017软件本5班','男','湖南省湘潭市','15200347301','759698619@qq.com','共青团员','湖南省湘潭市湘潭县易俗河镇志远乡村物流转ZY050','计算机科学与工程学院','软件工程',NULL),(5296,'201701420542','刘巍','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','2017软件本5班','女','湖南省长沙市','15526430430','759698619@qq.com','共青团员','湖南省长沙市长沙县江背镇朱家桥社区双丰组','计算机科学与工程学院','软件工程',NULL),(5297,'201701420543','陈涛','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','2017软件本5班','男','湖南省长沙市','15616143268','759698619@qq.com','共青团员','湖南省长沙市长沙县开慧镇白沙锡福村赵家组176号','计算机科学与工程学院','软件工程',NULL),(5298,'201701420544','盛楚灏','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','2017软件本5班','男','湖南省长沙市','15367937238','759698619@qq.com','共青团员','湖南省长沙市望城区铜官镇新镇二路5号','计算机科学与工程学院','软件工程',NULL),(5299,'201701420545','刘刚','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','2017软件本5班','男','湖南省岳阳市','13077180930','759698619@qq.com','共青团员','湖南省岳阳市云溪区岳化金盆社区','计算机科学与工程学院','软件工程',NULL),(5300,'201701420546','曾炎','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','2017软件本5班','男','湖南省岳阳市','18373026503','759698619@qq.com','共青团员','湖南省岳阳市平江县加义镇商业街永兴楼301','计算机科学与工程学院','软件工程',NULL),(5301,'201701420547','钟帅','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','2017软件本5班','男','湖南省岳阳市','15842886851','759698619@qq.com','共青团员','湖南省岳阳市汨罗市屈原管理区黄金乡禾鸡山村','计算机科学与工程学院','软件工程',NULL),(5302,'201701420548','尹宇翔','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','2017软件本5班','男','湖南省岳阳市','13307404986','759698619@qq.com','共青团员','湖南省汨罗市新市镇老街菜鸟驿站','计算机科学与工程学院','软件工程',NULL),(5303,'201701420549','吴昌龙','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','2017软件本5班','男','湖南省永州市','15226342355','759698619@qq.com','共青团员','湖南省永州市道县白马渡镇白马渡村9组','计算机科学与工程学院','软件工程',NULL),(5304,'201701420550','黄丽娟','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','2017软件本5班','女','湖南省永州市','18143319248','759698619@qq.com','共青团员','广东省东莞市中堂潢涌大坦路10号通泰水店','计算机科学与工程学院','软件工程',NULL),(5305,'201701420551','陈海军','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','2017软件本5班','男','湖南省永州市','17673413493','759698619@qq.com','共青团员','湖南省长沙市长沙县星沙街道蓝山郡2期C栋2单元','计算机科学与工程学院','软件工程',NULL),(5306,'201701420552','唐赛','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','2017软件本5班','女','湖南省永州市','19174145524','759698619@qq.com','共青团员','湖南省长沙市天心区先锋街道中信文化广场雅居13栋915','计算机科学与工程学院','软件工程',NULL),(5307,'201701420553','杨兰汇','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','2017软件本5班','女','湖南省怀化市','18390929801','759698619@qq.com','共青团员','湖南长沙市天心区新开铺街道长沙市天心区湘府西路299号香芙嘉园10栋1404','计算机科学与工程学院','软件工程',NULL),(5308,'201701420554','邓鹏涛','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','2017软件本5班','男','湖南省郴州市','15675695015','759698619@qq.com','共青团员','湖南省郴州市桂阳县百花园小区','计算机科学与工程学院','软件工程',NULL),(5309,'201701420555','陈强','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','2017软件本5班','男','湖南省郴州市','19108488981','759698619@qq.com','共青团员','湖南省郴州市桂阳县塘市镇','计算机科学与工程学院','软件工程',NULL),(5310,'201701420601','朱欣慰','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','2017软件本6班','女','湖南省长沙市','15974272030','759698619@qq.com','共青团员','湖南省岳阳市岳阳县文艺路东路中通速递','计算机科学与工程学院','软件工程',NULL),(5311,'201701420602','谭怀瑾','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','2017软件本6班','男','湖南省娄底市','19112586135','759698619@qq.com','共青团员','湖南省娄底市娄星区大科街道建设街158号娄底市建设局136办公室','计算机科学与工程学院','软件工程',NULL),(5312,'201701420603','朱家乐','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','2017软件本6班','男','湖南省娄底市','13487991917','759698619@qq.com','共青团员','湖南省娄底市冷水江市资江大桥麦点超市加盟店','计算机科学与工程学院','软件工程',NULL),(5313,'201701420604','李归澳','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','2017软件本6班','女','湖南省娄底市','18627602627','759698619@qq.com','共青团员','湖南省岳阳市岳阳楼区三眼桥街道红盾小区52号','计算机科学与工程学院','软件工程',NULL),(5314,'201701420605','周盼澳','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','2017软件本6班','女','湖南省益阳市','15898468709','759698619@qq.com','共青团员','湖南省益阳市桃江县石牛江镇','计算机科学与工程学院','软件工程',NULL),(5315,'201701420606','徐煜','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','2017软件本6班','男','湖南省益阳市','18774983830','759698619@qq.com','共青团员','湖南省长沙县湘龙街道潇湘社区盛地春天里4栋2303室','计算机科学与工程学院','软件工程',NULL),(5316,'201701420607','周骏','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','2017软件本6班','男','湖南省益阳市','15116439591','759698619@qq.com','共青团员','湖南省长沙市岳麓区涉外经济学院西南门南丰港安置小区4栋梦之舟旅馆','计算机科学与工程学院','软件工程',NULL),(5317,'201701420608','刘铭涛','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','2017软件本6班','男','湖南省常德市','13142214373','759698619@qq.com','共青团员','湖南省常德市临澧县停弦渡镇青山村曾召英商店','计算机科学与工程学院','软件工程',NULL),(5318,'201701420610','张浩','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','2017软件本6班','男','湖南省常德市','15115726712','759698619@qq.com','共青团员','湖南省常德市桃源县双溪口乡一字山村四组','计算机科学与工程学院','软件工程',NULL),(5319,'201701420611','廖珍磊','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','2017软件本6班','男','湖南省常德市','17700729198','759698619@qq.com','共青团员','江苏省苏州市昆山市淀山湖镇新华路三和国际工业园','计算机科学与工程学院','软件工程',NULL),(5320,'201701420612','黄俊桦','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','2017软件本6班','男','湖南省常德市','17570712546','759698619@qq.com','共青团员','湖南省常德市澧县豪盛小区2期2栋4单元808','计算机科学与工程学院','软件工程',NULL),(5321,'201701420613','吴洪涛','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','2017软件本6班','男','湖南省衡阳市','18873420512','759698619@qq.com','共青团员','湖南省衡阳市衡东县衡东大道8号','计算机科学与工程学院','软件工程',NULL),(5322,'201701420614','罗嘉诚','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','2017软件本6班','男','湖南省衡阳市','15580957737','759698619@qq.com','共青团员','湖南省衡阳市衡东县新塘镇欧阳海村七组','计算机科学与工程学院','软件工程',NULL),(5323,'201701420615','邹韵','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','2017软件本6班','男','湖南省衡阳市','14789394649','759698619@qq.com','共青团员','湖南省衡阳市祁东县石亭子镇太平村三组','计算机科学与工程学院','软件工程',NULL),(5324,'201701420616','陈慧','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','2017软件本6班','女','湖南省邵阳市','15774035730','759698619@qq.com','共青团员','湖南省邵阳市双清区火车站乡财神桥安置地','计算机科学与工程学院','软件工程',NULL),(5325,'201701420617','谭旺','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','2017软件本6班','男','湖南省湘潭市','18890374245','759698619@qq.com','共青团员','湖南省湘潭市湘潭县青山桥镇龙书村','计算机科学与工程学院','软件工程',NULL),(5326,'201701420618','王彦','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','2017软件本6班','男','湖南省衡阳市','17307404625','759698619@qq.com','共青团员','广东省珠海市香洲区南屏镇广昌社区均昌街36号','计算机科学与工程学院','软件工程',NULL),(5327,'201701420619','宁意龙','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','2017软件本6班','男','湖南省邵阳市','15211058031','759698619@qq.com','共青团员','深圳市福田区笋岗路市二医院康复科','计算机科学与工程学院','软件工程',NULL),(5328,'201701420620','范粤玺','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','2017软件本6班','男','湖南省邵阳市','17378132883','759698619@qq.com','共青团员','湖南省邵阳市隆回县石门乡盐塘冲村','计算机科学与工程学院','软件工程',NULL),(5329,'201701420621','段建辉','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','2017软件本6班','男','湖南省邵阳市','18274441134','759698619@qq.com','共青团员','湖南省邵阳市新邵县大新镇栗滩村','计算机科学与工程学院','软件工程',NULL),(5330,'201701420622','彭方','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','2017软件本6班','男','湖南省邵阳市','17680946085','759698619@qq.com','共青团员','湖南省邵阳市隆回县羊古坳乡花塘村6组','计算机科学与工程学院','软件工程',NULL),(5331,'201701420623','谢峰','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','2017软件本6班','男','湖南省邵阳市','18075874360','759698619@qq.com','共青团员','湖南省长沙市雨花区五一社区永定小区B1栋2单元','计算机科学与工程学院','软件工程',NULL),(5332,'201701420624','朱亚亿','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','2017软件本6班','男','湖南省株洲市','13787272530','759698619@qq.com','共青团员','湖南省株洲市攸县燕窝组','计算机科学与工程学院','软件工程',NULL),(5333,'201701420625','刘鑫勇','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','2017软件本6班','男','湖南省株洲市','15343334565','759698619@qq.com','共青团员','湖南省株洲市茶陵县腰陂镇申通快递','计算机科学与工程学院','软件工程',NULL),(5334,'201701420626','张佳伟','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','2017软件本6班','男','湖南省湘潭市','18573246913','759698619@qq.com','共青团员','湖南省湘乡市湘房世纪城一期五栋三单元506','计算机科学与工程学院','软件工程',NULL),(5335,'201701420627','刘瑞','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','2017软件本6班','女','湖南省岳阳市','18975040585','759698619@qq.com','共青团员','湖南省岳阳市华容县新河乡徐家岭村6组','计算机科学与工程学院','软件工程',NULL),(5336,'201701420628','杜康','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','2017软件本6班','男','湖南省常德市','18973674021','759698619@qq.com','共青团员','湖南省常德市武陵区新建街道育才西路637号芬腾店','计算机科学与工程学院','软件工程',NULL),(5337,'201701420629','潘腾','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','2017软件本6班','男','湖南省常德市','15080669007','759698619@qq.com','共青团员','湖南省常德市安乡县子龙车站中通快递','计算机科学与工程学院','软件工程',NULL),(5338,'201701420630','易覃','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','2017软件本6班','女','湖南省株洲市','17872374010','759698619@qq.com','共青团员','湖南省株洲市渌口区湘渌家园','计算机科学与工程学院','软件工程',NULL),(5339,'201701420631','刘丁龙','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','2017软件本6班','男','湖南省株洲市','15574113948','759698619@qq.com','共青团员','湖南省株洲市攸县皇图岭镇白日坳村','计算机科学与工程学院','软件工程',NULL),(5340,'201701420632','张归','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','2017软件本6班','男','湖南省株洲市','15292179416','759698619@qq.com','共青团员','湖南省株洲市醴陵市仙岳山街道阳东经济开发区阳东电磁电器有限公司二厂','计算机科学与工程学院','软件工程',NULL),(5341,'201701420633','李磊','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','2017软件本6班','男','湖南省株洲市','15073393968','759698619@qq.com','共青团员','湖南省株洲市醴陵市浦口镇王坊村周家组','计算机科学与工程学院','软件工程',NULL),(5342,'201701420634','龚谋智','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','2017软件本6班','男','湖南省长沙市','13767548494','759698619@qq.com','共青团员','江西省宜春市万载县康乐街道福星小学福源小区','计算机科学与工程学院','软件工程',NULL),(5343,'201701420635','刘璇','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','2017软件本6班','女','湖南省长沙市','15111408545','759698619@qq.com','共青团员','湖南省长沙市宁乡市双凫铺镇','计算机科学与工程学院','软件工程',NULL),(5344,'201701420636','向建军','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','2017软件本6班','男','湖南省怀化市','18274580885','759698619@qq.com','共青团员','湖南省郴州市临武县东云路畜牧水产局门面杨军摩托维修店','计算机科学与工程学院','软件工程',NULL),(5345,'201701420637','谭宇','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','2017软件本6班','男','湖南省怀化市','15096252021','759698619@qq.com','共青团员','湖南省怀化市芷江侗族自治县东门口小学对面的龙井商店','计算机科学与工程学院','软件工程',NULL),(5346,'201701420638','龙黔疆','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','2017软件本6班','男','湖南省湘西土家族苗族自治州','18867223341','759698619@qq.com','共青团员','湖南省湘西自治州花垣县民乐镇斗拱村','计算机科学与工程学院','软件工程',NULL),(5347,'201701420639','吴鹏','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','2017软件本6班','男','湖南省长沙市','17775848809','759698619@qq.com','共青团员','湖南省娄底市涟源市龙塘镇家利多电商物流园601仓','计算机科学与工程学院','软件工程',NULL),(5348,'201701420640','段卓','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','2017软件本6班','男','湖南省长沙市','13647418293','759698619@qq.com','共青团员','湖南省长沙市长沙县福临镇万家惠超市','计算机科学与工程学院','软件工程',NULL),(5349,'201701420641','李嘉涵','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','2017软件本6班','男','湖南省长沙市','13080560900','759698619@qq.com','共青团员','湖南省长沙市岳麓区梅溪湖街道骑龙小区','计算机科学与工程学院','软件工程',NULL),(5350,'201701420642','陈根','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','2017软件本6班','男','湖南省长沙市','13548748236','759698619@qq.com','共青团员','湖南长沙浏阳天马路浏金水岸一栋三元808','计算机科学与工程学院','软件工程',NULL),(5351,'201701420643','尹乾勋','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','2017软件本6班','男','湖南省长沙市','18374889914','759698619@qq.com','共青团员','湖南长沙浏阳市官桥镇','计算机科学与工程学院','软件工程',NULL),(5352,'201701420644','彭龙','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','2017软件本6班','男','湖南省岳阳市','13973000658','759698619@qq.com','共青团员','湖南省岳阳市君山区桥头楼西湾喜洋洋超市','计算机科学与工程学院','软件工程',NULL),(5353,'201701420645','周慧','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','2017软件本6班','男','湖南省岳阳市','13203100940','759698619@qq.com','共青团员','湖南省岳阳市岳阳县月田镇大界路','计算机科学与工程学院','软件工程',NULL),(5354,'201701420646','黄雨清','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','2017软件本6班','男','湖南省岳阳市','17573055468','759698619@qq.com','共青团员','湖南省岳阳市平江县滨江花园1栋1单元','计算机科学与工程学院','软件工程',NULL),(5355,'201701420648','彭威','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','2017软件本6班','男','湖南省岳阳市','15111106737','759698619@qq.com','共青团员','湖南省岳阳市汨罗市高家坊镇邮局','计算机科学与工程学院','软件工程',NULL),(5356,'201701420649','欧阳晓彬','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','2017软件本6班','男','湖南省永州市','18074683589','759698619@qq.com','共青团员','湖南省永州市宁远县太平镇下坠土桥头村','计算机科学与工程学院','软件工程',NULL),(5357,'201701420650','欧阳艳芳','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','2017软件本6班','女','湖南省永州市','15007463654','759698619@qq.com','共青团员','湖南省永州市宁远县太平镇下坠土桥头村','计算机科学与工程学院','软件工程',NULL),(5358,'201701420651','程颖辉','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','2017软件本6班','男','湖南省永州市','13762991950','759698619@qq.com','共青团员','湖南省永州市新田县大坪塘镇草坪村','计算机科学与工程学院','软件工程',NULL),(5359,'201701420652','李皓宣','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','2017软件本6班','男','湖南省永州市','17607462557','759698619@qq.com','共青团员','湖南省永州市祁阳县浯溪街道盘龙中路龙凤小区202','计算机科学与工程学院','软件工程',NULL),(5360,'201701420653','刘丹丹','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','2017软件本6班','女','湖南省郴州市','17674113301','759698619@qq.com','共青团员','湖南省郴州市桂阳县方元镇燕塘快递超市','计算机科学与工程学院','软件工程',NULL),(5361,'201701420654','李梦杰','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','2017软件本6班','男','湖南省郴州市','15197566051','759698619@qq.com','共青团员','湖南省郴州市桂阳县和平镇和平村6组','计算机科学与工程学院','软件工程',NULL),(5362,'201701420655','黄章红','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','2017软件本6班','男','湖南省郴州市','15575775583','759698619@qq.com','共青团员','湖南省郴州市苏仙区青年大道玫瑰园','计算机科学与工程学院','软件工程',NULL),(5363,'201401420100','教师测试','97ba1ef7f148b2aec1c61303a7d88d0967825495',NULL,'zhengqing','','男','','17898764567','24342343@qq.com','中共党员','湖南省长沙市长沙县星沙','计算机与工程学院','',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=1077 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ems_user_role`
--

LOCK TABLES `ems_user_role` WRITE;
/*!40000 ALTER TABLE `ems_user_role` DISABLE KEYS */;
INSERT INTO `ems_user_role` (`id`, `user_id`, `role_id`) VALUES (1,1,2),(2,3,1),(924,5210,2),(925,5211,2),(926,5212,2),(927,5213,2),(928,5214,2),(929,5215,2),(930,5216,2),(931,5217,2),(932,5218,2),(933,5219,2),(934,5220,2),(935,5221,2),(936,5222,2),(937,5223,2),(938,5224,2),(939,5225,2),(940,5226,2),(941,5227,2),(942,5228,2),(943,5229,2),(944,5230,2),(945,5231,2),(946,5232,2),(947,5233,2),(948,5234,2),(949,5235,2),(950,5236,2),(951,5237,2),(952,5238,2),(953,5239,2),(954,5240,2),(955,5241,2),(956,5242,2),(957,5243,2),(958,5244,2),(959,5245,2),(960,5246,2),(961,5247,2),(962,5248,2),(963,5249,2),(964,5250,2),(965,5251,2),(966,5252,2),(967,5253,2),(968,5254,2),(969,5255,2),(970,5256,2),(971,5257,2),(972,5258,2),(973,5259,2),(974,5260,2),(975,5261,2),(976,5262,2),(977,5263,2),(978,5264,2),(979,5265,2),(980,5266,2),(981,5267,2),(982,5268,2),(983,5269,2),(984,5270,2),(985,5271,2),(986,5272,2),(987,5273,2),(988,5274,2),(989,5275,2),(990,5276,2),(991,5277,2),(992,5278,2),(993,5279,2),(994,5280,2),(995,5281,2),(996,5282,2),(997,5283,2),(998,5284,2),(999,5285,2),(1000,5286,2),(1001,5287,2),(1002,5288,2),(1003,5289,2),(1004,5290,2),(1005,5291,2),(1006,5292,2),(1007,5293,2),(1008,5294,2),(1009,5295,2),(1010,5296,2),(1011,5297,2),(1012,5298,2),(1013,5299,2),(1014,5300,2),(1015,5301,2),(1016,5302,2),(1017,5303,2),(1018,5304,2),(1019,5305,2),(1020,5306,2),(1021,5307,2),(1022,5308,2),(1023,5309,2),(1024,5310,2),(1025,5311,2),(1026,5312,2),(1027,5313,2),(1028,5314,2),(1029,5315,2),(1030,5316,2),(1031,5317,2),(1032,5318,2),(1033,5319,2),(1034,5320,2),(1035,5321,2),(1036,5322,2),(1037,5323,2),(1038,5324,2),(1039,5325,2),(1040,5326,2),(1041,5327,2),(1042,5328,2),(1043,5329,2),(1044,5330,2),(1045,5331,2),(1046,5332,2),(1047,5333,2),(1048,5334,2),(1049,5335,2),(1050,5336,2),(1051,5337,2),(1052,5338,2),(1053,5339,2),(1054,5340,2),(1055,5341,2),(1056,5342,2),(1057,5343,2),(1058,5344,2),(1059,5345,2),(1060,5346,2),(1061,5347,2),(1062,5348,2),(1063,5349,2),(1064,5350,2),(1065,5351,2),(1066,5352,2),(1067,5353,2),(1068,5354,2),(1069,5355,2),(1070,5356,2),(1071,5357,2),(1072,5358,2),(1073,5359,2),(1074,5360,2),(1075,5361,2),(1076,5362,2);
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

-- Dump completed on 2021-03-17  8:53:58
