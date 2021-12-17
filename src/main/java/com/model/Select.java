package com.model;

import com.entity.*;
import com.util.DataSourceUtils;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class Select {

    public static List<Sex> getSexList(){
        List<Sex> sexList = new ArrayList<>();
        String sql = "SELECT * FROM sex";
        try(Connection connection = DataSourceUtils.getConnection();
            PreparedStatement statement = connection.prepareStatement(sql);
            ResultSet set = statement.executeQuery()) {
            while (set.next()){
                Sex sex = new Sex(set.getInt("id"),set.getString("name"));
                sex.setInsert_time(set.getTimestamp("insert_time"));
                sex.setUpdate_time(set.getTimestamp("update_time"));
                sexList.add(sex);
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return sexList;
    }

    public static List<Education> getEducationList(){
        List<Education> educationList = new ArrayList<>();
        String sql = "SELECT * FROM education";
        try(Connection connection = DataSourceUtils.getConnection();
            PreparedStatement statement = connection.prepareStatement(sql);
            ResultSet set = statement.executeQuery()) {
            while (set.next()){
                Education education = new Education(set.getInt("id"),set.getString("name"));
                education.setInsert_time(set.getTimestamp("insert_time"));
                education.setUpdate_time(set.getTimestamp("update_time"));
                educationList.add(education);
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return educationList;
    }

    public static List<EnterpriseType> getEnterpriseTypeList(){
        List<EnterpriseType> typeList = new ArrayList<>();
        String sql = "SELECT * FROM e_type";
        try(Connection connection = DataSourceUtils.getConnection();
            PreparedStatement statement = connection.prepareStatement(sql);
            ResultSet set = statement.executeQuery()) {
            while (set.next()){
                EnterpriseType type = new EnterpriseType(set.getInt("id"), set.getString("name"));
                type.setInsert_time(set.getTimestamp("insert_time"));
                type.setUpdate_time(set.getTimestamp("update_time"));
                typeList.add(type);
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return typeList;
    }

    public static List<Industry> getIndustryList(){
        List<Industry> industryList = new ArrayList<>();
        String sql = "SELECT * FROM industry";
        try(Connection connection = DataSourceUtils.getConnection();
            PreparedStatement statement = connection.prepareStatement(sql);
            ResultSet set = statement.executeQuery()) {
            while (set.next()){
                Industry industry = new Industry(set.getInt("id"), set.getString("name"));
                industry.setInsert_time(set.getTimestamp("insert_time"));
                industry.setUpdate_time(set.getTimestamp("update_time"));
                industryList.add(industry);
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return industryList;
    }

    public static List<JobType> getJobTypeList(){
        List<JobType> typeList = new ArrayList<>();
        String sql = "SELECT * FROM job_type";
        try(Connection connection = DataSourceUtils.getConnection();
            PreparedStatement statement = connection.prepareStatement(sql);
            ResultSet set = statement.executeQuery()) {
            while (set.next()){
                JobType type = new JobType(set.getInt("id"),set.getString("name"));
                type.setInsert_time(set.getTimestamp("insert_time"));
                type.setUpdate_time(set.getTimestamp("update_time"));
                typeList.add(type);
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return typeList;
    }

    public static List<Position> getPositionList(){
        List<Position> positionList = new ArrayList<>();
        String sql = "SELECT * FROM position";
        try(Connection connection = DataSourceUtils.getConnection();
            PreparedStatement statement = connection.prepareStatement(sql);
            ResultSet set = statement.executeQuery()) {
            while (set.next()){
                Position position = new Position(set.getInt("id"),set.getString("name"));
                position.setInsert_time(set.getTimestamp("insert_time"));
                position.setUpdate_time(set.getTimestamp("update_time"));
                positionList.add(position);
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return positionList;
    }

    public static List<Province> getProvinceList(){
        List<Province> provinceList = new ArrayList<>();
        String sql = "SELECT * FROM province";
        try(Connection connection = DataSourceUtils.getConnection();
            PreparedStatement statement = connection.prepareStatement(sql);
            ResultSet set = statement.executeQuery()) {
            while (set.next()){
                Province province = new Province(set.getInt("id"),set.getString("name"));
                province.setInsert_time(set.getTimestamp("insert_time"));
                province.setUpdate_time(set.getTimestamp("update_time"));
                provinceList.add(province);
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return provinceList;
    }

    public static List<Scale> getScaleList(){
        List<Scale> scaleList = new ArrayList<>();
        String sql = "SELECT * FROM e_scale";
        try(Connection connection = DataSourceUtils.getConnection();
            PreparedStatement statement = connection.prepareStatement(sql);
            ResultSet set = statement.executeQuery()) {
            while (set.next()){
                Scale scale = new Scale(set.getInt("id"), set.getString("name"));
                scale.setInsert_time(set.getTimestamp("insert_time"));
                scale.setUpdate_time(set.getTimestamp("update_time"));
                scaleList.add(scale);
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return scaleList;
    }

    public static Enterprise getEnterprise(String tel, String password){
        String sql = "select enterprise.id,enterprise.name,province,city,county,detail,e_scale.name,industry.name,"
                + "e_type.name,hr_name,hr_tel,a_state.name,introduction,enterprise.insert_time,enterprise.update_time"
                + " from enterprise left join e_scale on enterprise.scale_id = e_scale.id"
                + " left join industry on enterprise.industry_id = industry.id"
                + " left join e_type on enterprise.type_id = e_type.id"
                + " left join a_state on enterprise.state_id = a_state.id"
                + " where hr_tel = ? and password = ?";
        Connection connection = null;
        PreparedStatement statement = null;
        ResultSet set = null;
        Enterprise enterprise = null;
        try {
            connection = DataSourceUtils.getConnection();
            statement = connection.prepareStatement(sql);
            statement.setString(1,tel);
            statement.setString(2,password);
            set = statement.executeQuery();
            while (set.next()){
                enterprise = new Enterprise(set.getInt(1),set.getString(2),set.getString(12));
                enterprise.setProvince(set.getString(3));
                enterprise.setCity(set.getString(4));
                enterprise.setCounty(set.getString(5));
                enterprise.setDetail(set.getString(6));
                enterprise.setScale(set.getString(7));
                enterprise.setIndustry(set.getString(8));
                enterprise.setType(set.getString(9));
                enterprise.setHr_name(set.getString(10));
                enterprise.setHr_tel(set.getString(11));
                enterprise.setIntroduction(set.getString(13));
                enterprise.setInsert_time(set.getTimestamp(14));
                enterprise.setUpdate_time(set.getTimestamp(15));
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }finally {
            if(set != null){
                try {
                    set.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
            if(statement != null){
                try {
                    statement.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
            if(connection != null){
                try {
                    connection.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
        }
        return enterprise;
    }

    public static Seeker getSeeker(String tel, String password){
        Connection connection = null;
        PreparedStatement statement = null;
        ResultSet set = null;

        String sql = "SELECT seeker.id,seeker.name,sex.name,age,education.name,tel,a_state.name,province,city,county "
                + "FROM seeker LEFT JOIN sex ON seeker.sex_id = sex.id "
                + "LEFT JOIN education ON seeker.edu_id = education.id "
                + "LEFT JOIN a_state ON seeker.state_id = a_state.id "
                + "WHERE tel = ? AND password = ?";

        Seeker seeker = null;
        try {
            connection = DataSourceUtils.getConnection();
            statement = connection.prepareStatement(sql);
            statement.setString(1,tel);
            statement.setString(2,password);
            set = statement.executeQuery();
            while (set.next()){
                seeker = new Seeker(set.getInt(1),set.getString(2),set.getString(6),set.getString(7));
                seeker.setSex(set.getString(3));
                seeker.setAge(set.getInt(4));
                seeker.setEducation(set.getString(5));
                seeker.setProvince(set.getString(8));
                seeker.setCity(set.getString(9));
                seeker.setCounty(set.getString(10));
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        } finally {
            if(set != null){
                try {
                    set.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
            if(statement != null){
                try {
                    statement.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
            if(connection != null){
                try {
                    connection.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
        }
        return seeker;
    }

    public static boolean findRepeatEnterprise(String name, String tel){
        String sql = "SELECT * FROM enterprise WHERE name = ? OR hr_tel = ?";
        int repeat = 0;
        Connection connection = null;
        PreparedStatement statement = null;
        ResultSet set = null;
        try {
            connection = DataSourceUtils.getConnection();
            statement = connection.prepareStatement(sql);
            statement.setString(1, name);
            statement.setString(2, tel);
            set = statement.executeQuery();
            while (set.next()) repeat++;
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        } finally {
            if (set != null) {
                try {
                    set.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
            if (statement != null) {
                try {
                    statement.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
            if (connection != null) {
                try {
                    connection.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
        }
        if(repeat > 0) return true;
        else return false;
    }

    public static int getPositionId(String name){
        Connection connection = null;
        PreparedStatement statement = null;
        ResultSet set = null;
        int id = 0;
        String sql = "SELECT id FROM position where name = ?";
        try{
            connection = DataSourceUtils.getConnection();
            statement = connection.prepareStatement(sql);
            statement.setString(1,name);
            set = statement.executeQuery();
            while (set.next()){
                id = set.getInt("id");
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        } finally {
            if (set != null) {
                try {
                    set.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
            if (statement != null) {
                try {
                    statement.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
            if (connection != null) {
                try {
                    connection.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
        }
        return id;
    }

}
