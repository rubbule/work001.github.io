package com.LJY.druid;

import com.alibaba.druid.pool.DruidDataSource;
import com.alibaba.druid.pool.DruidDataSourceFactory;

import javax.sql.DataSource;
import java.io.FileReader;
import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.util.Properties;

public class druidTest {
    public static void main(String[] args) throws Exception {
        Properties pro = new Properties();
        InputStream is = druidTest.class.getClassLoader().getResourceAsStream("druid.properties");
        pro.load(is);
        DataSource ds = DruidDataSourceFactory.createDataSource(pro);
        //超过配置文件的最大连接数会报错
        for (int i=1;i<=11;i++) {
            Connection conn = ds.getConnection();
            System.out.println(conn);
        }


    }
}
