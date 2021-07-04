package com.LJY.Service;

import com.LJY.table.Counts;
import com.LJY.table.User;

import java.util.List;

public interface UserService {
//    登录功能
    User login(String number, String password);

//    注册功能
    int register(User user);

//    查询数据库中是否存在该用户
    boolean finduser(String number);

//    查询数据库表中数据的数量
    Counts findcount();

//    分页查询
    List<User> findusers(String page,String limit);

    int deleteUser(String number);
}
