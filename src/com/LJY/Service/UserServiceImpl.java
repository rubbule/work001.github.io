package com.LJY.Service;

import com.LJY.Dao.UserDao;
import com.LJY.Dao.UserDaoImpl;
import com.LJY.Util.JDBCUtil;
import com.LJY.table.Counts;
import com.LJY.table.User;

import java.util.List;

public class UserServiceImpl implements UserService {
//    登录功能
    @Override
    public User login(String number, String password) {
        UserDao ud = new UserDaoImpl();
        User user = ud.findByNumber(number);
        if (user!=null){
            if (password.equals(user.getPassword())){
                return user;
            }
        }
        return null;
    }
//    注册用户
    @Override
    public int register(User user) {
        String sql="INSERT INTO `user`(`number`, `password`, `role_id`, `phone`, `createdate`, `username`, `remark`) VALUES (?, ?, ?, ?, ?, ?, ?);";
        int i=JDBCUtil.executeUpdate(sql,user.getNumber(),user.getPassword(),user.getRole_id(),user.getPhone(),user.getCreatedate(),user.getUsername(),user.getRemark());
        return i;
    }
    //查询用户是否存在
    @Override
    public boolean finduser(String number) {
        UserDao ud = new UserDaoImpl();
        User user = ud.findByNumber(number);
        if(user == null){
            return true;
        }
        return false;
    }

    @Override
    public Counts findcount() {
        UserDao ud = new UserDaoImpl();
        Counts counts = ud.findbyCount();
        return counts;
    }

    @Override
    public List<User> findusers(String page,String limit) {
        UserDao ud = new UserDaoImpl();
//        dao层分页查询用户
        List<User> users = ud.findUsers(page,limit);
        return users;
    }

    @Override
    public int deleteUser(String number) {
        UserDao ud = new UserDaoImpl();
        int i = ud.deleteByUser(number);
        return i;
    }
}
