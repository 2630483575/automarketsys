package com.test.pojo;

public class Car {
    private int carid;
    private String carprice;
    private String carphoto;
    private String carmileage;
    private int carage;
    private String cartype;
    private String carbrand;
    private String carmodle;
    private String title;
    private int userid;

    public Car() {
    }

    public Car(String carprice, String carphoto, String carmileage, int carage, String cartype, String carbrand, String carmodle, String title, int userid) {

        this.carprice = carprice;
        this.carphoto = carphoto;
        this.carmileage = carmileage;
        this.carage = carage;
        this.cartype = cartype;
        this.carbrand = carbrand;
        this.carmodle = carmodle;
        this.title = title;
        this.userid = userid;
    }


    public void setCarid(int carid) {
        this.carid = carid;
    }

    public void setCarprice(String carprice) {
        this.carprice = carprice;
    }

    public void setCarphoto(String carphoto) {
        this.carphoto = carphoto;
    }

    public void setCarmileage(String carmileage) {
        this.carmileage = carmileage;
    }

    public void setCarage(int carage) {
        this.carage = carage;
    }

    public void setCartype(String cartype) {
        this.cartype = cartype;
    }

    public void setCarbrand(String carbrand) {
        this.carbrand = carbrand;
    }

    public void setCarmodle(String carmodle) {
        this.carmodle = carmodle;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public void setUserid(int userid) {
        this.userid = userid;
    }

    public int getCarid() {
        return carid;
    }

    public String getCarprice() {
        return carprice;
    }

    public String getCarphoto() {
        return carphoto;
    }

    public String getCarmileage() {
        return carmileage;
    }

    public int getCarage() {
        return carage;
    }

    public String getCartype() {
        return cartype;
    }

    public String getCarbrand() {
        return carbrand;
    }

    public String getCarmodle() {
        return carmodle;
    }

    public String getTitle() {
        return title;
    }

    public int getUserid() {
        return userid;
    }
}
