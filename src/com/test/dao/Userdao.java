package com.test.dao;

import com.test.pojo.Car;
import com.test.pojo.User;
import com.test.util.DataBase;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class UserDao implements UserDaoInter {
    DataBase dataBase = new DataBase();
    Connection connection;
    PreparedStatement preparedStatement;
    ResultSet resultSet;


    //用户登录
    public boolean getLogin(User user) {
        boolean flag = false;
        try{
            connection = dataBase.openconn();
            String sql = "select * from user where user.username=? and user.userpwd=?";
            preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1,user.getUsername());
            preparedStatement.setString(2,user.getUserpwd());
            resultSet = preparedStatement.executeQuery();
            while (resultSet.next()){
                flag = true;
            }
        }catch (SQLException e){
            e.printStackTrace();
        }catch (Exception e){
            e.printStackTrace();
        }finally {
            dataBase.closeConn(connection,preparedStatement,resultSet);
        }
        return flag;
    }


    //删除
    public boolean delCar(int[] carid) {
        boolean isDelete = false;

        String sql = "delete from car where sno in (" ;
        for (int i=0; i<carid.length; i++){
            sql += "?";
            if (i != carid.length - 1) {
                sql += ",";
            }
        }
        sql +=   ") ";

        connection = dataBase.openconn();
        try {
            preparedStatement = connection.prepareStatement(sql);
            for (int i = 0; i<carid.length; i++){
                preparedStatement.setInt((i+1),carid[i]);
            }
            int num = preparedStatement.executeUpdate();
            if (num>0){
                isDelete = true;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            dataBase.closeConn(connection,preparedStatement,null);
        }

        return  isDelete;
    }

    //修改
    @Override
    public boolean editCar(Car car) {
        boolean isEdit = false;

        String sql = "update car set carprice = ?,carphoto = ?,carmileage = ?,carage = ?,cartype = ?,carbrand = ?,carmodle = ?,title = ?,userid = ? where carid = ?";
        connection = dataBase.openconn();
        try {
            preparedStatement.setString(1,car.getCarprice());
            preparedStatement.setString(2,car.getCarphoto());
            preparedStatement.setString(3,car.getCarmileage());
            preparedStatement.setInt(4,car.getCarage());
            preparedStatement.setString(5,car.getCartype());
            preparedStatement.setString(6,car.getCarbrand());
            preparedStatement.setString(7,car.getCarmodle());
            preparedStatement.setString(8,car.getTitle());
            preparedStatement.setInt(9,car.getUserid());

            preparedStatement.executeUpdate();

            isEdit = true;
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return isEdit;
    }

    //根据userid查询，用户界面
    @Override
    public List<Car> getCarByUserid(int userid) {
        List<Car> list = new ArrayList<Car>();
        String sql = "select carid,carprice,carphoto,carmileage,carage,cartype,carbrand,carmodle,title,userid from car where carid = ?";
        connection = dataBase.openconn();
        try {
            preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setInt(1,userid);
            resultSet = preparedStatement.executeQuery();
            while (resultSet.next()){
                Car car = new Car();
                car.setCarid(resultSet.getInt(1));
                car.setCarprice(resultSet.getString(2));
                car.setCarphoto(resultSet.getString(3));
                car.setCarmileage(resultSet.getString(4));
                car.setCarage(resultSet.getInt(5));
                car.setCartype(resultSet.getString(6));
                car.setCarbrand(resultSet.getString(7));
                car.setCarmodle(resultSet.getString(8));
                car.setTitle(resultSet.getString(9));
                car.setUserid(resultSet.getInt(10));
                list.add(car);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            dataBase.closeConn(connection,preparedStatement,resultSet);
        }
        return list;
    }

    //主页模糊查询
    @Override
    public List<Car> getCarByTitle(String key) {
        List<Car> list = new ArrayList<Car>();
        String sql = "select carid,carprice,carphoto,carmileage,carage,cartype,carbrand,carmodle,title,userid from car where title like ?";
        connection = dataBase.openconn();
        try {
            preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1,"%"+key+"%");
            resultSet = preparedStatement.executeQuery();
            while (resultSet.next()){
                Car car = new Car();
                car.setCarid(resultSet.getInt(1));
                car.setCarprice(resultSet.getString(2));
                car.setCarphoto(resultSet.getString(3));
                car.setCarmileage(resultSet.getString(4));
                car.setCarage(resultSet.getInt(5));
                car.setCartype(resultSet.getString(6));
                car.setCarbrand(resultSet.getString(7));
                car.setCarmodle(resultSet.getString(8));
                car.setTitle(resultSet.getString(9));
                car.setUserid(resultSet.getInt(10));
                list.add(car);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            dataBase.closeConn(connection,preparedStatement,resultSet);
        }

        return list;
    }

    //标签查询
    @Override
    public List<Car> getCarByTable(String tablekey, int lprice, int hprice) {
        List<Car> list = new ArrayList<Car>();
        String sql = "select carid,carprice,carphoto,carmileage,carage,cartype,carbrand,carmodle,title,userid from car where 1=1";
        if (tablekey != null && !("".equals(tablekey))){
            sql += "and title like ?";
        }

        if (lprice != 0){
            sql += "and carprice >= ?";
        }

        if (hprice != 0){
            sql += "and carprice <= ?";
        }
        connection = dataBase.openconn();
        try {
            preparedStatement = connection.prepareStatement(sql);
            if (tablekey != null && !("".equals(tablekey)) && lprice != 0 && hprice != 0){
                preparedStatement.setString(1,"%"+tablekey+"%");
                preparedStatement.setInt(2,lprice);
                preparedStatement.setInt(3,hprice);
            }else if ((tablekey != null && !("".equals(tablekey)) && lprice != 0) && hprice == 0){
                preparedStatement.setString(1,"%"+tablekey+"%");
                preparedStatement.setInt(2,lprice);
            }else if ((tablekey != null && !("".equals(tablekey)) && hprice != 0) && lprice == 0){
                preparedStatement.setString(1,"%"+tablekey+"%");
                preparedStatement.setInt(2,hprice);
            }else if ((tablekey == null || "".equals(tablekey)) && lprice != 0 && hprice != 0){
                preparedStatement.setInt(1,lprice);
                preparedStatement.setInt(2,hprice);
            }else if ((tablekey == null || "".equals(tablekey)) && lprice == 0 && hprice != 0){
                preparedStatement.setInt(1,hprice);
            }else if ((tablekey == null || "".equals(tablekey)) && lprice != 0 && hprice == 0){
                preparedStatement.setInt(1,lprice);
            }
            resultSet = preparedStatement.executeQuery();
            while (resultSet.next()){
                Car car = new Car();
                car.setCarid(resultSet.getInt(1));
                car.setCarprice(resultSet.getString(2));
                car.setCarphoto(resultSet.getString(3));
                car.setCarmileage(resultSet.getString(4));
                car.setCarage(resultSet.getInt(5));
                car.setCartype(resultSet.getString(6));
                car.setCarbrand(resultSet.getString(7));
                car.setCarmodle(resultSet.getString(8));
                car.setTitle(resultSet.getString(9));
                car.setUserid(resultSet.getInt(10));
                list.add(car);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            dataBase.closeConn(connection,preparedStatement,resultSet);
        }
        return  list;
    }


    //主页展示所有
    @Override
    public List<Car> getAllCar() {
        List<Car> list = new ArrayList<Car>();
        String sql = "select carid,carprice,carphoto,carmileage,carage,cartype,carbrand,carmodle,title,userid from car";
        connection = dataBase.openconn();
        try {
            preparedStatement = connection.prepareStatement(sql);
            resultSet = preparedStatement.executeQuery();
            while (resultSet.next()){
                Car car = new Car();
                car.setCarid(resultSet.getInt(1));
                car.setCarprice(resultSet.getString(2));
                car.setCarphoto(resultSet.getString(3));
                car.setCarmileage(resultSet.getString(4));
                car.setCarage(resultSet.getInt(5));
                car.setCartype(resultSet.getString(6));
                car.setCarbrand(resultSet.getString(7));
                car.setCarmodle(resultSet.getString(8));
                car.setTitle(resultSet.getString(9));
                car.setUserid(resultSet.getInt(10));
                list.add(car);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            dataBase.closeConn(connection,preparedStatement,resultSet);
        }
        return list;
    }

    @Override
    public boolean addCar(Car car) {
        boolean flag = false;
        connection = dataBase.openconn();
        String sql = "insert into car (carprice,carphoto,carmileage,carage,cartype,carbrand,carmodle,title,userid) values (?,?,?,?,?,?,?,?,?)";
        try {
            preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1,car.getCarprice());
            preparedStatement.setString(2,car.getCarphoto());
            preparedStatement.setString(3,car.getCarmileage());
            preparedStatement.setInt(4,car.getCarage());
            preparedStatement.setString(5,car.getCartype());
            preparedStatement.setString(6,car.getCarbrand());
            preparedStatement.setString(7,car.getCarmodle());
            preparedStatement.setString(8,car.getTitle());
            preparedStatement.setInt(9,car.getUserid());
            int num = preparedStatement.executeUpdate();
            if (0!=num){
                flag = true;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            dataBase.closeConn(connection,preparedStatement,resultSet);
        }
        return flag;
    }

    @Override
    public boolean addUser(User user) {
        boolean isSuccess = false;
        String sql = "insert into user (username,userpwd) value (?,?)";
        connection = dataBase.openconn();
        try {
            preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1,user.getUsername());
            preparedStatement.setString(2,user.getUserpwd());
            int num = preparedStatement.executeUpdate();
            if (num > 0){
                isSuccess = true;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            dataBase.closeConn(connection,preparedStatement,null);
        }
        return isSuccess;
    }

    @Override
    public boolean getUserByName(String name) {
        boolean isExist = false;

        String sql ="select * from myuser where name=?";
        connection = dataBase.openconn();
        try {
            preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1,name);
            resultSet = preparedStatement.executeQuery();

            if (resultSet.next()){
                isExist = true;
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            dataBase.closeConn(connection,preparedStatement,resultSet);
        }

        return isExist;
    }


}
