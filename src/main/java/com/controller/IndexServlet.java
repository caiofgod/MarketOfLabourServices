package com.controller;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.logging.Logger;

@WebServlet("/index")
public class IndexServlet extends HttpServlet {

    private static Logger LOGGER = Logger.getLogger(IndexServlet.class.getName());

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        LOGGER.info("IndexServlet doGet()");
        String alert = request.getParameter("alert");
        request.setAttribute("alert", alert);
        request.getRequestDispatcher("/WEB-INF/jsp/index.jsp").forward(request, response);
    }

}
