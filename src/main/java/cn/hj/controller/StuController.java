package cn.hj.controller;

import cn.hj.pojo.Stu;
import cn.hj.service.StuService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("stu")
public class StuController {

    @Autowired
    private StuService stuService;


    @RequestMapping("list")
    public String list(Model model) {

        List<Stu> stuList = stuService.getAllStu();
        model.addAttribute("stuList", stuList);

        return "list";

    }


    @RequestMapping("add")
    public String add(Stu stu) {

        stuService.insert(stu);
        return "redirect:list";
    }

    @RequestMapping("goToUpdate")
    public String goToUpdate(Integer id, Model model) {

        Stu stu = stuService.selectByPrimaryKey(id);
        model.addAttribute("stu", stu);
        return "update";

    }

    @RequestMapping("update")
    public String update(Stu stu) {
        stuService.updateByPrimaryKeySelective(stu);
        return "redirect:list";
    }

    @RequestMapping("del")
    public String del(Integer id){

        stuService.deleteByPrimaryKey(id);
        return "redirect:list";
    }




}
