package com.chen.ems.core.service.impl; 

import com.chen.ems.core.model.UserInfoVO;
import com.chen.ems.core.service.AdminService;
import org.junit.Test;
import org.junit.Before; 
import org.junit.After;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;

/** 
* AdminServiceImpl Tester. 
* 
* @author <ChenLH> 
* @since <pre>3月 16, 2021</pre> 
* @version 1.0 
*/
public class AdminServiceImplTest {

@Before
public void before() throws Exception { 
} 

@After
public void after() throws Exception { 
} 

/** 
* 
* Method: getStudentInfo(UserInfoVO userInfoVO) 
* 
*/ 
@Test
public void testGetStudentInfo() throws Exception { 
//TODO: Test goes here... 
} 

/** 
* 
* Method: updateStudent(UserInfoVO userInfoVO) 
* 
*/ 
@Test
public void testUpdateStudent() throws Exception {
    UserInfoVO userInfoVO = new UserInfoVO();
    userInfoVO.setNumber("201701420428");
    userInfoVO.setUsername("陈利辉");
    userInfoVO.setId(1);
    userInfoVO.setClasses("201软件本4班");
    userInfoVO.setSex("男");
    userInfoVO.setOrigin("湖南省邵阳市");
    userInfoVO.setPhone("18373297080");
    userInfoVO.setEmail("420211581@qq.com");
    userInfoVO.setPolitical("共青团员");
    userInfoVO.setAddress("湖南省邵阳市邵阳县小溪市乡岩门村");
    userInfoVO.setCollege("计算机科学与工程学院");
    userInfoVO.setMajor("软件工程");
    AdminServiceImpl adminService = new AdminServiceImpl();
    adminService.updateStudent(userInfoVO);
} 

/** 
* 
* Method: addStudent(UserInfoVO userInfoVO) 
* 
*/ 
@Test
public void testAddStudent() throws Exception { 
//TODO: Test goes here... 
} 


} 
