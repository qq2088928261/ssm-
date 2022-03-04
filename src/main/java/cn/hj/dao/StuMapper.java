package cn.hj.dao;

import cn.hj.pojo.Stu;

import java.util.List;


public interface StuMapper {

    List<Stu> getAllStu();

    int deleteByPrimaryKey(Integer id);

    int insert(Stu record);

    Stu selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Stu record);






}
