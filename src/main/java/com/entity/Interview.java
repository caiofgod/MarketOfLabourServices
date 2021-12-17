package com.entity;

import java.sql.Timestamp;

public class Interview {

    private Seeker seeker;
    private RecruitInfo recruitInfo;
    private String address;
    private Timestamp time;
    private String result;

    public Interview(Seeker seeker, String address, Timestamp time){
        this.seeker = seeker;
        this.address = address;
        this.time = time;
    }

    public Seeker getSeeker() {
        return seeker;
    }

    public void setSeeker(Seeker seeker) {
        this.seeker = seeker;
    }

    public RecruitInfo getRecruitInfo() {
        return recruitInfo;
    }

    public void setRecruitInfo(RecruitInfo recruitInfo) {
        this.recruitInfo = recruitInfo;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public Timestamp getTime() {
        return time;
    }

    public void setTime(Timestamp time) {
        this.time = time;
    }

    public String getResult() {
        return result;
    }

    public void setResult(String result) {
        this.result = result;
    }

}
