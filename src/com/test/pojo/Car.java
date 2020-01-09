package com.test.pojo;

public class Car {
    private int cid;
    private  String ctype;
    private double cprice;
    private String cbrand;
    private int cage;
    private double cmile;
    private String cmodel;
    private String cphoto;
    private String ctitle;
    private int userid;

    public Car() {
    }

    public Car(int cid, String ctype, double cprice, String cbrand, int cage, double cmile, String cmodel, String cphoto, String ctitle, int userid) {
        this.cid = cid;
        this.ctype = ctype;
        this.cprice = cprice;
        this.cbrand = cbrand;
        this.cage = cage;
        this.cmile = cmile;
        this.cmodel = cmodel;
        this.cphoto = cphoto;
        this.ctitle = ctitle;
        this.userid = userid;
    }

    public void setCid(int cid) {
        this.cid = cid;
    }

    public void setCtype(String ctype) {
        this.ctype = ctype;
    }

    public void setCprice(double cprice) {
        this.cprice = cprice;
    }

    public void setCbrand(String cbrand) {
        this.cbrand = cbrand;
    }

    public void setCage(int cage) {
        this.cage = cage;
    }

    public void setCmile(double cmile) {
        this.cmile = cmile;
    }

    public void setCmodel(String cmodel) {
        this.cmodel = cmodel;
    }

    public void setCphoto(String cphoto) {
        this.cphoto = cphoto;
    }

    public void setCtitle(String ctitle) {
        this.ctitle = ctitle;
    }

    public void setUserid(int userid) {
        this.userid = userid;
    }

    public int getCid() {
        return cid;
    }

    public String getCtype() {
        return ctype;
    }

    public double getCprice() {
        return cprice;
    }

    public String getCbrand() {
        return cbrand;
    }

    public int getCage() {
        return cage;
    }

    public double getCmile() {
        return cmile;
    }

    public String getCmodel() {
        return cmodel;
    }

    public String getCphoto() {
        return cphoto;
    }

    public String getCtitle() {
        return ctitle;
    }

    public int getUserid() {
        return userid;
    }
}
