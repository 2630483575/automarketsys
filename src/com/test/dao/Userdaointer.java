package com.test.dao;

import com.test.pojo.Car;
import com.test.pojo.User;

import java.util.List;

public interface UserDaoInter {
    //用户登录
    boolean getLogin(User user);
    //删除
    boolean delCar(int[] carid);
    //修改
    boolean editCar(Car car);
    //根据userid查询，用户界面
    List<Car> getCarByUserid(int userid);
    //主页，模糊查询
    List<Car> getCarByTitle(String key);
    //标签查询
    List<Car> getCarByTable(String tablekey, int lprice, int hprice);
    //主页展示所有
    List<Car> getAllCar();
    //发布新增
    boolean addCar(Car car);
    //注册
    boolean addUser(User user);
}
