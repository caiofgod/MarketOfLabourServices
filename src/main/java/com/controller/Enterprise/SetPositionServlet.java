package com.controller.Enterprise;

import com.controller.Enterprise.EnterpriseRegisterServlet;
import com.entity.Enterprise;
import com.entity.JobType;
import com.entity.Position;
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

@WebServlet("/enterprise/setposition")
public class SetPositionServlet extends HttpServlet {

    private static Logger LOGGER = Logger.getLogger(EnterpriseRegisterServlet.class.getName());

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        LOGGER.info("SetPositionServlet doGet()");

        String alert = request.getParameter("alert");
        LOGGER.info("EnterpriseRegisterServlet doGet() alert = " + alert);
        request.setAttribute("alert", alert);

        request.setAttribute("positionList",Select.getPositionList());

        request.setAttribute("typeList", Select.getJobTypeList());

        request.setAttribute("sexList", Select.getSexList());

        request.setAttribute("educationList", Select.getEducationList());

        request.getRequestDispatcher("/WEB-INF/jsp/enterprise/e_setposition.jsp").forward(request, response);

    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        LOGGER.info("SetPositionServlet doPost()");

        String position = request.getParameter("position");
        String sql = "INSERT INTO position (name) value (?)";
        try(Connection connection = DataSourceUtils.getConnection();
            PreparedStatement statement = connection.prepareStatement(sql)) {
                statement.setString(1,position);
                statement.executeUpdate();
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }

        int p_id = Select.getPositionId(position);
        if(p_id == 0){
            String alert = java.net.URLEncoder.encode("上传失败，请稍后重试！","UTF-8");
            response.sendRedirect(request.getContextPath() + "/enterprise/setposition？alert=" + alert);
            return;
        }

        int salary_floor = Integer.parseInt(request.getParameter("salary_floor"));
        int salary_ceiling = Integer.parseInt(request.getParameter("salary_ceiling"));
        if(salary_ceiling < salary_floor){
            String alert = java.net.URLEncoder.encode("工资上限不能比工资下限低，请修改！","UTF-8");
            response.sendRedirect(request.getContextPath() + "/enterprise/setposition？alert=" + alert);
            return;
        }

        int e_id = ((Enterprise)request.getSession().getAttribute("enterprise")).getId();

        int result = 0;
        sql = "INSERT INTO enterprise_position "
                   + "(e_id,p_id,type_id,salary_floor,salary_ceiling,number,age_ceiling,sex_limit_id,duty,demand,edu_floor_id) "
                   + "VALUE (?,?,?,?,?,?,?,?,?,?,?)";
        try(Connection connection = DataSourceUtils.getConnection();
            PreparedStatement statement = connection.prepareStatement(sql)) {
            statement.setInt(1,e_id);
            statement.setInt(2,p_id);
            statement.setInt(3,Integer.parseInt(request.getParameter("type_id")));
            statement.setInt(4,salary_floor);
            statement.setInt(5,salary_ceiling);
            statement.setInt(6,Integer.parseInt(request.getParameter("number")));
            statement.setInt(7,Integer.parseInt(request.getParameter("age_ceiling")));
            statement.setInt(8,Integer.parseInt(request.getParameter("sex_limit_id")));
            statement.setString(9,request.getParameter("duty"));
            statement.setString(10,request.getParameter("demand"));
            statement.setInt(11,Integer.parseInt(request.getParameter("edu_floor_id")));

            result = statement.executeUpdate();
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        if(result == 0){
            String alert = java.net.URLEncoder.encode("上传失败，请稍后重试！","UTF-8");
            response.sendRedirect(request.getContextPath() + "/enterprise/setposition？alert=" + alert);
            return;
        }else{
            String alert = java.net.URLEncoder.encode("上传成功！","UTF-8");
            response.sendRedirect(request.getContextPath() + "/enterprise/home？alert=" + alert);
            return;
        }

    }

}
