package com.LJY.c3p0;

import com.mchange.v2.c3p0.ComboPooledDataSource;

import javax.sql.DataSource;
import java.sql.Connection;
import java.sql.SQLException;

public class c3p0Test {
    public static void main(String[] args) throws Exception {
        DataSource ds = new ComboPooledDataSource();
        Connection connection = ds.getConnection();
        System.out.println(connection);
    }
}
