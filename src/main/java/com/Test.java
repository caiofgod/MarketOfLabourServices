package com;

import com.entity.Enterprise;
import com.util.DataSourceUtils;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class Test {

    public static void main(String[] args){
        String account = "100001";
        String password = "123456";
        String sql = "select enterprise.id,enterprise.name,province,city,county,detail,scale.name,industry.name,"
                + "e_type.name,hr_name,hr_tel,state.name,introducation,enterprise.insert_time,enterprise.update_time"
                + "from enterprise,scale,industry,e_type,state"
                + "where account = ? and password = ? and state_id = state.id and industry_id = industry.id"
                + "and type_id = e_type.id and state_id = state.id";
        Enterprise enterprise;
        try(Connection connection = DataSourceUtils.getConnection();
            PreparedStatement statement = connection.prepareStatement(sql);
            ResultSet set = statement.executeQuery()) {
            statement.setString(1,account);
            statement.setString(2,password);
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
        }
//        enterprise.showInfofo();
    }
}
