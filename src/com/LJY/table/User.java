package com.LJY.table;

import java.util.Objects;

public class User {
    private String number;
    private String password;
    private int role_id;
    private String phone;
    private String createdate;
    private String username;
    private String remark;

    public String getNumber() {
        return number;
    }

    public void setNumber(String number) {
        this.number = number;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public int getRole_id() {
        return role_id;
    }

    public void setRole_id(int role_id) {
        this.role_id = role_id;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getCreatedate() {
        return createdate;
    }

    public void setCreatedate(String createdate) {
        this.createdate = createdate;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        User user = (User) o;
        return role_id == user.role_id && Objects.equals(number, user.number) && Objects.equals(password, user.password) && Objects.equals(phone, user.phone) && Objects.equals(createdate, user.createdate) && Objects.equals(username, user.username) && Objects.equals(remark, user.remark);
    }

    @Override
    public int hashCode() {
        return Objects.hash(number, password, role_id, phone, createdate, username, remark);
    }

    @Override
    public String toString() {
        return "user{" +
                "number='" + number + '\'' +
                ", password='" + password + '\'' +
                ", role_id=" + role_id +
                ", phone='" + phone + '\'' +
                ", createdate='" + createdate + '\'' +
                ", username='" + username + '\'' +
                ", remark='" + remark + '\'' +
                '}';
    }
}
