package com.controller.Enterprise;

import com.entity.*;
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


@WebServlet("/enterprise/register")
public class EnterpriseRegisterServlet extends HttpServlet {

    private static Logger LOGGER = Logger.getLogger(EnterpriseRegisterServlet.class.getName());

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String alert = request.getParameter("alert");
        LOGGER.info("EnterpriseRegisterServlet doGet()" + alert);
        request.setAttribute("alert", alert);

        request.setAttribute("scaleList", Select.getScaleList());

        request.setAttribute("industryList", Select.getIndustryList());

        request.setAttribute("typeList", Select.getEnterpriseTypeList());


        request.setAttribute("provinceList", Select.getProvinceList());

        request.getRequestDispatcher("/WEB-INF/jsp/enterprise/e_register.jsp").forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String name = request.getParameter("name");
        String hr_tel = request.getParameter("hr_tel");

        boolean repeat = Select.findRepeatEnterprise(name, hr_tel);
        if (repeat) {
            String alert = java.net.URLEncoder.encode("公司名或手机号已存在,请重新注册！","UTF-8");
            response.sendRedirect(request.getContextPath() + "/enterprise/register?alert=" + alert);
            return;
        }

        String password = request.getParameter("password");
        String check_password = request.getParameter("check_password");
        if(!password.equals(check_password)){
            String alert = java.net.URLEncoder.encode("两次输入密码不一致，请重新填写！","UTF-8");
            response.sendRedirect(request.getContextPath() + "/enterprise/register?alert=" + alert);
            return;
        }

        int scale_id = Integer.parseInt(request.getParameter("scale_id"));
        int industry_id = Integer.parseInt(request.getParameter("industry_id"));
        int type_id = Integer.parseInt(request.getParameter("type_id"));
        String province = request.getParameter("province");
        String city = request.getParameter("city");
        String county = request.getParameter("county");
        String detail = request.getParameter("detail");
        String hr_name = request.getParameter("hr_name");
        String introduction = request.getParameter("introduction");

        int state_id;
        if (scale_id == 0 || industry_id == 0 || type_id == 0 || name == "" || province == "" || city == "" || county == "" || detail == "" || hr_name == "" || hr_tel == "" || password == "" || introduction == "")
            state_id = 1;
        else
            state_id = 2;
        LOGGER.info("name = " + name
                + "\nprovince = " + province
                + "\ncity = " + city
                + "\ncounty = " + county
                + "\ndetail = " + detail
                + "\nscale = " + scale_id
                + "\nindustry = " + industry_id
                + "\ntype = " + type_id
                + "\nhr_name = " + hr_name
                + "\nhr_tel = " + hr_tel
                + "\naccount_state = " + state_id
                + "\nintroduction = " + introduction);
        int result = 0;
        String sql = "INSERT INTO enterprise"
                + "(name,province,city,county,detail,scale_id,industry_id,type_id,hr_name,hr_tel,password,state_id,introduction)"
                + "value(?,?,?,?,?,?,?,?,?,?,?,?,?)";
        try (Connection connection = DataSourceUtils.getConnection();
             PreparedStatement statement = connection.prepareStatement(sql);
        ) {
            statement.setString(1, name);
            statement.setString(2, province);
            statement.setString(3, city);
            statement.setString(4, county);
            statement.setString(5, detail);
            statement.setInt(6, scale_id);
            statement.setInt(7, industry_id);
            statement.setInt(8, type_id);
            statement.setString(9, hr_name);
            statement.setString(10, hr_tel);
            statement.setString(11, password);
            statement.setInt(12, state_id);
            statement.setString(13, introduction);
            result = statement.executeUpdate();
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        if (result > 0) {
            String alert = java.net.URLEncoder.encode("注册成功！","UTF-8");
            response.sendRedirect(request.getContextPath() + "/enterprise/logon?alert=" + alert);
        } else {
            String alert = java.net.URLEncoder.encode("注册失败,请稍后重试！", "UTF-8");
            response.sendRedirect(request.getContextPath() + "/enterprise/register?alert=" + alert);
        }
    }

}
