package com.LJY.table;

public class Counts {
    private int cusercount;
    private int empcount;
    private int jobcount;
    private int noticecount;
    private int rolecount;
    private int uploadcount;
    private int deptcount;

    public int getCusercount() {
        return cusercount;
    }

    public void setCusercount(int cusercount) {
        this.cusercount = cusercount;
    }

    public int getEmpcount() {
        return empcount;
    }

    public void setEmpcount(int empcount) {
        this.empcount = empcount;
    }

    public int getJobcount() {
        return jobcount;
    }

    public void setJobcount(int jobcount) {
        this.jobcount = jobcount;
    }

    public int getNoticecount() {
        return noticecount;
    }

    public void setNoticecount(int noticecount) {
        this.noticecount = noticecount;
    }

    public int getRolecount() {
        return rolecount;
    }

    public void setRolecount(int rolecount) {
        this.rolecount = rolecount;
    }

    public int getUploadcount() {
        return uploadcount;
    }

    public void setUploadcount(int uploadcount) {
        this.uploadcount = uploadcount;
    }

    public int getDeptcount() {
        return deptcount;
    }

    public void setDeptcount(int deptcount) {
        this.deptcount = deptcount;
    }

    @Override
    public String toString() {
        return "Counts{" +
                "cusercount=" + cusercount +
                ", empcount=" + empcount +
                ", jobcount=" + jobcount +
                ", noticecount=" + noticecount +
                ", rolecount=" + rolecount +
                ", uploadcount=" + uploadcount +
                ", deptcount=" + deptcount +
                '}';
    }
}
