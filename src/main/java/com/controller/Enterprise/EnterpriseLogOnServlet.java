package com.controller.Enterprise;

import com.entity.Enterprise;
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
import java.util.logging.Logger;

@WebServlet("/enterprise/logon")
public class EnterpriseLogOnServlet extends HttpServlet {

    private static Logger LOGGER = Logger.getLogger(EnterpriseLogOnServlet.class.getName());

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        LOGGER.info("EnterpriseLogOnServlet doGet()");
        String alert = request.getParameter("alert");
        request.setAttribute("alert", alert);
        request.getRequestDispatcher("/WEB-INF/jsp/enterprise/e_logon.jsp").forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        LOGGER.info("EnterpriseLogOnServlet doPost()");

        String hr_tel = request.getParameter("hr_tel");
        String password = request.getParameter("password");

        Enterprise enterprise = Select.getEnterprise(hr_tel, password);

        if(enterprise != null){
            request.getSession().setAttribute("enterprise", enterprise);
            String alert = java.net.URLEncoder.encode("登录成功！","UTF-8");
            response.sendRedirect(request.getContextPath() + "/enterprise/home?alert=" + alert);
            return;
        }
        else{
            String alert = java.net.URLEncoder.encode("登录失败，请检查账号或密码是否有误！","UTF-8");
            response.sendRedirect(request.getContextPath() + "/enterprise/logon?alert=" + alert);
            return;
        }
    }

}
