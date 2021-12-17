package com.controller.Seeker;

import com.entity.Seeker;
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

@WebServlet("/seeker/logon")
public class SeekerLogOnServlet extends HttpServlet {

    private static Logger LOGGER = Logger.getLogger(SeekerLogOnServlet.class.getName());

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        LOGGER.info("SeekerLogOnServlet doGet()");
        String alert = request.getParameter("alert");
        request.setAttribute("alert", alert);
        request.getRequestDispatcher("/WEB-INF/jsp/seeker/s_logon.jsp").forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        LOGGER.info("SeekerLogOnServlet doPost()");



        String tel = request.getParameter("tel");
        String password = request.getParameter("password");

        Seeker seeker = Select.getSeeker(tel, password);
        if(seeker != null){
            request.getSession().setAttribute("seeker", seeker);
            String alert = java.net.URLEncoder.encode("登录成功！","UTF-8");
            response.sendRedirect(request.getContextPath() + "/seeker/home?alert=" + alert);
            return;
        }
        else{
            String alert = java.net.URLEncoder.encode("登录失败，请检查账号或密码是否有误！","UTF-8");
            response.sendRedirect(request.getContextPath() + "/seeker/logon?alert=" + alert);
            return;
        }
    }

}
