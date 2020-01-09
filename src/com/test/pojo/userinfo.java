package com.test.pojo;

public class userinfo {

    private  int userid;
    private  String username;
    private  String userpwd;

    public userinfo() {
    }

    public userinfo(int userid, String username, String userpwd) {
        this.userid = userid;
        this.username = username;
        this.userpwd = userpwd;
    }

    public int getUserid() {
        return userid;
    }

    public String getUsername() {
        return username;
    }

    public String getUserpwd() {
        return userpwd;
    }

    public void setUserid(int userid) {
        this.userid = userid;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public void setUserpwd(String userpwd) {
        this.userpwd = userpwd;
    }

}
