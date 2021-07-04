package com.LJY.Dao;

import com.LJY.table.Counts;
import com.LJY.table.User;

import java.util.List;

public interface UserDao {
    User findByNumber(String number);

    Counts findbyCount();

    List<User> findUsers(String page, String limit);

    int deleteByUser(String number);
}
