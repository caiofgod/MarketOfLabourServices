package com.controller.Seeker;

import com.entity.Education;
import com.entity.Province;
import com.entity.Sex;
import com.model.Select;
import com.util.DataSourceUtils;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Logger;

@WebServlet("/seeker/register")
public class SeekerRegisterServlet extends HttpServlet {

    private static Logger LOGGER = Logger.getLogger(SeekerRegisterServlet.class.getName());

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        LOGGER.info("SeekerRegisterServlet doGet()");
        String alert = request.getParameter("alert");

        request.setAttribute("alert", alert);

        request.setAttribute("sexList", Select.getSexList());

        request.setAttribute("educationList", Select.getEducationList());

        request.setAttribute("provinceList", Select.getProvinceList());

        request.getRequestDispatcher("/WEB-INF/jsp/seeker/s_register.jsp").forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        LOGGER.info("SeekerRegisterServlet doPost()");
        String name = request.getParameter("name");
        String tel  = request.getParameter("tel");
        String sql = "SELECT * FROM seeker WHERE tel = ?";
        int repeat = 0;
        Connection connection = null;
        PreparedStatement statement = null;
        ResultSet set = null;
        try {
            connection = DataSourceUtils.getConnection();
            statement = connection.prepareStatement(sql);
            statement.setString(1,tel);
            set = statement.executeQuery();
            while (set.next())
                repeat++;
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }finally {
            if (set!=null){
                try {
                    set.close();
                } catch (SQLException throwables) {
                    throwables.printStackTrace();
                }
            }
            if(statement!=null){
                try {
                    statement.close();
                } catch (SQLException throwables) {
                    throwables.printStackTrace();
                }
            }
            if(connection!=null){
                try {
                    connection.close();
                } catch (SQLException throwables) {
                    throwables.printStackTrace();
                }
            }
        }
        if(repeat>0){
            String alert = java.net.URLEncoder.encode("手机号已存在,请重新注册!","UTF-8");
            response.sendRedirect(request.getContextPath()+"/seeker/register?alert="+alert);
            return;
        }
        String password = request.getParameter("password");
        String check_password = request.getParameter("check_password");
        if(!password.equals(check_password)){
            String alert = java.net.URLEncoder.encode("两次输入密码不一致，请重新填写！","UTF-8");
            response.sendRedirect(request.getContextPath() + "/seeker/register?alert=" + alert);
            return;
        }
        int sex_id = Integer.parseInt(request.getParameter("sex_id"));
        int edu_id = Integer.parseInt(request.getParameter("edu_id"));
        int age = Integer.parseInt(request.getParameter("age"));
        String province = request.getParameter("province");
        String city = request.getParameter("city");
        String county = request.getParameter("county");
        int state_id;
        if(name==""||sex_id==0||age==0||edu_id==0||tel==""||password==""||province==""||city==""||county==""){
            state_id=1;
        }
        else
            state_id=2;
        LOGGER.info("name = " + name
                + "\nprovince = " + province
                + "\ncity = " + city
                + "\ncounty = " + county
                + "\nage = " + age
                + "\ntel = " + tel
                + "\naccount_state = " + state_id);
        int result = 0;
        sql = "INSERT INTO seeker"
                + "(name,sex_id,age,edu_id,tel,password,state_id,province,city,county)"
                + "value(?,?,?,?,?,?,?,?,?,?)";
        try(
                Connection connection1 = DataSourceUtils.getConnection();
                PreparedStatement statement1 = connection1.prepareStatement( sql );
        ) {
            statement1.setString(1,name);
            statement1.setInt(2,sex_id);
            statement1.setInt(3,age);
            statement1.setInt(4,edu_id);
            statement1.setString(5,tel);
            statement1.setString(6,password);
            statement1.setInt(7,state_id);
            statement1.setString(8,province);
            statement1.setString(9,city);
            statement1.setString(10,county);
            result = statement1.executeUpdate();
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        if (result>0){
            String alert = java.net.URLEncoder.encode("注册成功！","UTF-8");
            response.sendRedirect(request.getContextPath() + "/seeker/logon?alert=" + alert);
        }else {
            String alert = java.net.URLEncoder.encode("注册失败,请稍后重试！", "UTF-8");
            response.sendRedirect(request.getContextPath() + "/seeker/register?alert=" + alert);
        }


    }

}
