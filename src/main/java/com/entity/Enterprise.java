package com.entity;

import java.sql.Timestamp;

public class Enterprise {

    private int id;
    private String name;
    private String province;
    private String city;
    private String county;
    private String detail;
    private String scale;//公司规模
    private String industry;//公司行业
    private String type;//公司性质
    private String hr_name;//HR姓名
    private String hr_tel;//HR电话
    private String account_state;//账号状态
    private String introduction;//公司简介
    private Timestamp insert_time;
    private Timestamp update_time;

    public Enterprise(int id, String name, String account_state){
        this.id = id;
        this.name = name;
        this.account_state = account_state;
    }

    public void showInfo(){
        System.out.println("id = " + id
                        + "\nname = " + name
                        + "\nprovince = " + province
                        + "\ncity = " + city
                        + "\ncounty = " + county
                        + "\ndetail = " + detail
                        + "\nscale = " + scale
                        + "\nindustry = " + industry
                        + "\ntype = " + type
                        + "\nhr_name = " + hr_name
                        + "\nhr_tel = " + hr_tel
                        + "\naccount_state = " + account_state
                        + "\nintroduction = " + introduction
                        + "\ninsert_time = " + insert_time
                        + "\nupdate_time = " + update_time);
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getProvince() {
        return province;
    }

    public void setProvince(String province) {
        this.province = province;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getCounty() {
        return county;
    }

    public void setCounty(String county) {
        this.county = county;
    }

    public String getDetail() {
        return detail;
    }

    public void setDetail(String detail) {
        this.detail = detail;
    }

    public String getScale() {
        return scale;
    }

    public void setScale(String scale) {
        this.scale = scale;
    }

    public String getIndustry() {
        return industry;
    }

    public void setIndustry(String industry) {
        this.industry = industry;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getHr_name() {
        return hr_name;
    }

    public void setHr_name(String hr_name) {
        this.hr_name = hr_name;
    }

    public String getHr_tel() {
        return hr_tel;
    }

    public void setHr_tel(String hr_tel) {
        this.hr_tel = hr_tel;
    }

    public String getAccount_state() {
        return account_state;
    }

    public void setAccount_state(String account_state) {
        this.account_state = account_state;
    }

    public String getIntroduction() {
        return introduction;
    }

    public void setIntroduction(String introduction) {
        this.introduction = introduction;
    }

    public Timestamp getInsert_time() {
        return insert_time;
    }

    public void setInsert_time(Timestamp insert_time) {
        this.insert_time = insert_time;
    }

    public Timestamp getUpdate_time() {
        return update_time;
    }

    public void setUpdate_time(Timestamp update_time) {
        this.update_time = update_time;
    }

}
