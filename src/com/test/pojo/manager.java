package com.test.pojo;

public class manager {
    private  int  mid;
    private  String mname;
    private  String mpwd;

    public manager() {
    }

    public manager(int mid, String mname, String mpwd) {
        this.mid = mid;
        this.mname = mname;
        this.mpwd = mpwd;
    }

    public int getMid() {
        return mid;
    }

    public String getMname() {
        return mname;
    }

    public String getMpwd() {
        return mpwd;
    }

    public void setMid(int mid) {
        this.mid = mid;
    }

    public void setMname(String mname) {
        this.mname = mname;
    }

    public void setMpwd(String mpwd) {
        this.mpwd = mpwd;
    }

}
