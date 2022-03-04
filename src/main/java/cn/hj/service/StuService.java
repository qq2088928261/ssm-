package cn.hj.service;

import cn.hj.pojo.Stu;

import java.util.List;


public interface StuService {
    List<Stu> getAllStu();

    void insert(Stu stu);

    Stu selectByPrimaryKey(Integer id);

    void updateByPrimaryKeySelective(Stu stu);

    void deleteByPrimaryKey(Integer id);

}
