package com.test.util;

import java.sql.*;

public class DataBase {
    public Connection openconn(){
        Connection conn = null;
        //加载驱动
        try {
            Class.forName("com.mysql.jdbc.Driver");
            conn = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/autumarketsys","root","980814");
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }catch (SQLException e){
            e.printStackTrace();
        }catch (Exception e){
            e.printStackTrace();
        }
        return conn;
    }
    public void closeConn(Connection conn, PreparedStatement preparedStatement, ResultSet resultSet){
        try {
            if (null!=resultSet){
                resultSet.close();
            }
            if (null!=preparedStatement){
                preparedStatement.close();
            }
            if (null!=conn) {
                conn.close();
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }catch (Exception e){
            e.printStackTrace();
        }
    }
}
