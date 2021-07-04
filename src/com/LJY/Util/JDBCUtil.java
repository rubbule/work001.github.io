package com.LJY.Util;

import com.alibaba.druid.pool.DruidDataSourceFactory;

import javax.sql.DataSource;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.io.InputStream;
import java.net.URL;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Properties;
/**
 *
 * 功能描述:封装一个jdbc工具类
 *
 * @author 吴正洪
 * @date 2020年8月31日
 * @version 1.0
 */

public class JDBCUtil {

//    private static String driver;
//    private static String url;// url地址
//    private static String user;// 用户名
//    private static String password;// 密码.如果没有密码就是""
    private static Connection ct;// 连接对象
    private static ResultSet rs;// 返回数据对象
    private static PreparedStatement ps;// 执行sql语句对象
    private static DataSource dataSource;
    private static Properties pro;
    // 1.因为加载驱动只需要一次,所以最好放在静态代码块中
    static {
        try {
            pro = new Properties();
            pro.load(JDBCUtil.class.getClassLoader().getResourceAsStream("druid.properties"));
//            url = pro.getProperty("url");
//            user = pro.getProperty("user");
//            password = pro.getProperty("password");
//            driver = pro.getProperty("driver");
//            Class.forName(driver);
            dataSource = DruidDataSourceFactory.createDataSource(pro);
        } catch (ClassNotFoundException | FileNotFoundException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }



    // 2.单独封装一个方法用来获得连接

    public static Connection getConnection() {
//		 * 2.获得连接:getConnection(String url, String user, String password)
//	        试图建立到给定数据库 URL 的连接。
        try {
//            ct = DriverManager.getConnection(url, user, password);
            ct = dataSource.getConnection();
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }

        return ct;
    }

    // 3.封装一个查询的方法
    public static ResultSet executeQuery(String sql, Object... obj) {

        // 获得连接
        getConnection();
        // 得到发送对象
        try {
            ps = ct.prepareStatement(sql);

            // 处理占位符
            if (obj != null) {
                for (int i = 0; i < obj.length; i++) {
                    ps.setObject(i + 1, obj[i]);
                }

            }

            // 发送sql语句
            rs = ps.executeQuery();
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }

        return rs;
    }

    // 4.封装一个增删改的方法

    public static int executeUpdate(String sql, Object... obj) {
        int in = 0;
        // 获得连接
        getConnection();
        // 得到发送对象
        try {
            ps = ct.prepareStatement(sql);

            // 处理占位符
            if (obj != null) {
                for (int i = 0; i < obj.length; i++) {
                    ps.setObject(i + 1, obj[i]);
                }

            }

            // 发送sql语句
            in = ps.executeUpdate();
            //关闭资源
            close();

        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        } finally {
            close();
        }

        return in;
    }

    // 封装一个关闭资源的方法
    public static void close() {
        try {
            if (rs != null) {
                rs.close();
            }

            if (ps != null) {
                ps.close();
            }

            if (ct != null) {
                ct.close();
            }

        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }

    }
    public static void close(ResultSet rs) {
        try {
            if (rs != null) {
                rs.close();
            }

            if (ps != null) {
                ps.close();
            }

            if (ct != null) {
                ct.close();
            }

        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }

    }

    public static void update(){
        String sql = "update students set password = ? where username = ?;";
        JDBCUtil.executeUpdate(sql,"666","张三");
    }
    public static void insert(){
        String sql1 = "insert into emp(user) values (?);";
        JDBCUtil.executeUpdate(sql1,"张三");
    }

}
