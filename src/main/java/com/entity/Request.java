package com.entity;

import java.io.File;

public class Request {

    private Seeker seeker;
    private RecruitInfo recruitInfo;
    private File file;

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

    public File getFile() {
        return file;
    }

    public void setFile(File file) {
        this.file = file;
    }

}
