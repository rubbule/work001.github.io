package com.LJY.Dao;

import com.LJY.Util.JDBCUtil;
import com.LJY.table.Counts;
import com.LJY.table.User;
import jdk.nashorn.internal.objects.annotations.Where;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class UserDaoImpl implements UserDao {
    @Override
    public User findByNumber(String number) {
        String sql = "select * from user where number = ?";
        ResultSet resultSet = JDBCUtil.executeQuery(sql, number);
        try {
            if (resultSet.next()){
                String number1 = resultSet.getString("number");
                String password = resultSet.getString("password");
                int role_id = resultSet.getInt("role_id");
                String phone = resultSet.getString("phone");
                String createdate = resultSet.getString("createdate");
                String username1 = resultSet.getString("username");
                String remark = resultSet.getString("remark");
                User user = new User();
                user.setNumber(number1);
                user.setPassword(password);
                user.setRole_id(role_id);
                user.setPhone(phone);
                user.setCreatedate(createdate);
                user.setUsername(username1);
                user.setRemark(remark);
                System.out.println("用户信息："+user);
                return user;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        JDBCUtil.close(resultSet);
        return null;
    }

    @Override
    public Counts findbyCount() {
        String sql = "SELECT\n" +
                "(SELECT COUNT(*) FROM `user`) cusercount," +
                "(SELECT COUNT(*) FROM `employee`) empcount," +
                "(SELECT COUNT(*) FROM `job`) jobcount," +
                "(SELECT COUNT(*) FROM `notice`) noticecount," +
                "(SELECT COUNT(*) FROM `role`) rolecount,\n" +
                "(SELECT COUNT(*) FROM `uploadfile`) uploadcount," +
                "(SELECT COUNT(*) FROM `dept`) deptcount;";
        ResultSet rs = JDBCUtil.executeQuery(sql);
        try {
            if (rs.next()){
                Counts counts = new Counts();
                counts.setCusercount(rs.getInt("cusercount"));
                counts.setEmpcount(rs.getInt("empcount"));
                counts.setJobcount(rs.getInt("jobcount"));
                counts.setNoticecount(rs.getInt("noticecount"));
                counts.setRolecount(rs.getInt("rolecount"));
                counts.setUploadcount(rs.getInt("uploadcount"));
                counts.setDeptcount(rs.getInt("deptcount"));
                System.out.println(counts);
                return counts;

            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    @Override
    public List<User> findUsers(String page, String limit) {
        //数据库翻译查询

        List<User> users = new ArrayList<>();
        String sql = "SELECT * from `user` LIMIT "+page+","+limit+";";
        ResultSet rs = JDBCUtil.executeQuery(sql);
        try {
            while (rs.next()){
                String number1 = rs.getString("number");
                String password = rs.getString("password");
                int role_id = rs.getInt("role_id");
                String phone = rs.getString("phone");
                String createdate = rs.getString("createdate");
                String username1 = rs.getString("username");
                String remark = rs.getString("remark");
                User user = new User();
                user.setNumber(number1);
                user.setPassword(password);
                user.setRole_id(role_id);
                user.setPhone(phone);
                user.setCreatedate(createdate);
                user.setUsername(username1);
                user.setRemark(remark);
                System.out.println("用户信息："+user);
                users.add(user);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        //输出集合中的内容
        users.forEach(li -> System.out.println(li));
        return users;
    }


    @Override
    public int deleteByUser(String number) {
        String sql = "delete from user where number = ?";
        int i = JDBCUtil.executeUpdate(sql, number);
        return i;
    }

}
