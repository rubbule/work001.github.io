package com.LJY.test;

import com.LJY.Util.JDBCUtil;
import com.LJY.table.User;

import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class JDBCTest {
    public static void main(String[] args) throws Exception {
//        int i = JDBCUtil.executeUpdate("create table emp(id int auto_increment unique,user varchar(10) not null);");
        ResultSet resultSet = JDBCUtil.executeQuery("select * from user;");
        List<User> userList = new ArrayList<User>();
        while (resultSet.next()){
            String number = resultSet.getString("number");
            String password = resultSet.getString("password");
            int role_id = resultSet.getInt("role_id");
            String phone = resultSet.getString("phone");
            String createdate = resultSet.getString("createdate");
            String username = resultSet.getString("username");
            String remark = resultSet.getString("remark");
            User user = new User();
            user.setNumber(number);
            user.setPassword(password);
            user.setRole_id(role_id);
            user.setPhone(phone);
            user.setCreatedate(createdate);
            user.setUsername(username);
            user.setRemark(remark);
            userList.add(user);
        }
        for (int i=0;i<userList.size();i++) {
            System.out.println(userList.get(i));
        }
        JDBCUtil.close(resultSet);
    }
}
