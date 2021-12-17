package com.entity;

//招聘信息
public class RecruitInfo {

    private Enterprise enterprise;
    private String position;//职位名称
    private String type;//工作类型
    private int salary_floor;//工资下限
    private int salary_ceiling;//工资上限
    private int number;//招聘人数
    private int age_ceiling;//年龄上限
    private String sex_limit;//性别限制
    private String duty;//工作任务
    private String demand;//招聘要求
    private String edu_floor;//最低学历

    public RecruitInfo(String position, int salary_floor, int salary_ceiling, int number, String duty, String demand){
        this.position = position;
        this.salary_floor = salary_floor;
        this.salary_ceiling = salary_ceiling;
        this.number = number;
        this.duty = duty;
        this.demand = demand;
    }

    public Enterprise getEnterprise() {
        return enterprise;
    }

    public void setEnterprise(Enterprise enterprise) {
        this.enterprise = enterprise;
    }

    public String getPosition() {
        return position;
    }

    public void setPosition(String position) {
        this.position = position;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public int getSalary_floor() {
        return salary_floor;
    }

    public void setSalary_floor(int salary_floor) {
        this.salary_floor = salary_floor;
    }

    public int getSalary_ceiling() {
        return salary_ceiling;
    }

    public void setSalary_ceiling(int salary_ceiling) {
        this.salary_ceiling = salary_ceiling;
    }

    public int getNumber() {
        return number;
    }

    public void setNumber(int number) {
        this.number = number;
    }

    public int getAge_ceiling() {
        return age_ceiling;
    }

    public void setAge_ceiling(int age_ceiling) {
        this.age_ceiling = age_ceiling;
    }

    public String getSex_limit() {
        return sex_limit;
    }

    public void setSex_limit(String sex_limit) {
        this.sex_limit = sex_limit;
    }

    public String getDuty() {
        return duty;
    }

    public void setDuty(String duty) {
        this.duty = duty;
    }

    public String getDemand() {
        return demand;
    }

    public void setDemand(String demand) {
        this.demand = demand;
    }

    public String getEdu_floor() {
        return edu_floor;
    }

    public void setEdu_floor(String edu_floor) {
        this.edu_floor = edu_floor;
    }

}
