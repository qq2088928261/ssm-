package cn.hj.pojo;

import lombok.Data;
//这个注解等于把get和set还有一些基本方法都实现了一遍
@Data
public class Stu {
    private int id;
    private String name;
    private int age;
    private String addr1;
    private String addr;

}
