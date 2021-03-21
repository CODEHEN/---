package com.chen.ems.core.mapper;

import com.chen.ems.core.model.ClassesVO;
import com.chen.ems.core.model.MajorVO;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import java.util.List;

/**
 * @Author: CHENLIHUI
 * @Description:
 * @Date: Create in 21:46 2021/3/11
 */
@Mapper
public interface MajorMapper {

    /**
     * 根据学院名称查找该学院下的专业
     * @param name 学院名称
     * @return java.util.List<com.chen.ems.core.model.MajorVO>
     */
    @Select("select id, major_name, college, type, (select count(*) from ems_user left join ems_user_role eur on ems_user.id = eur.user_id where ems_user.major = ems_major.id and eur.role_id=2) AS studentNum from ems_major where college = (select id from ems_college where ems_college.name = #{name})")
    List<MajorVO> getMajorByCollegeName(String name);

    @Insert("insert into ems_major(major_name, college, type) VALUES (#{majorName},#{college},#{type})")
    void addMajor(MajorVO majorVO);

    @Update("update ems_major set major_name = #{majorName},college = #{college}, type = #{type}  where id = #{id}")
    void updateMajor(MajorVO majorVO);
}
