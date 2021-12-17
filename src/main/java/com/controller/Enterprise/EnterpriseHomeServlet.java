package com.controller.Enterprise;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.logging.Logger;

@WebServlet("/enterprise/home")
public class EnterpriseHomeServlet extends HttpServlet {

    private static Logger LOGGER = Logger.getLogger(EnterpriseHomeServlet.class.getName());

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        LOGGER.info("EnterpriseHomeServlet doGet()");
        String alert = request.getParameter("alert");
        request.setAttribute("alert", alert);
        request.getRequestDispatcher("/WEB-INF/jsp/enterprise/e_home.jsp").forward(request, response);
    }

    protected void doPost(HttpServletRequest request,HttpServletResponse response){
        LOGGER.info("EnterpriseHomeServlet doPost()");

    }

}
