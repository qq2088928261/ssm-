package cn.hj.service.impl;

import cn.hj.dao.StuMapper;
import cn.hj.pojo.Stu;
import cn.hj.service.StuService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class StuServiceImple implements StuService {

    @Autowired
    private StuMapper stuMapper;

    @Override
    public List<Stu> getAllStu() {
        return stuMapper.getAllStu();
    }

    @Override
    public void insert(Stu stu) {
        stuMapper.insert(stu);
    }

    @Override
    public Stu selectByPrimaryKey(Integer id) {
        return stuMapper.selectByPrimaryKey(id);
    }

    @Override
    public void updateByPrimaryKeySelective(Stu stu) {
        stuMapper.updateByPrimaryKeySelective(stu);
    }

    @Override
    public void deleteByPrimaryKey(Integer id) {
        stuMapper.deleteByPrimaryKey(id);
    }



}