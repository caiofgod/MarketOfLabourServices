package com.controller.Seeker;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.logging.Logger;

@WebServlet("/seeker/home")
public class SeekerHomeServlet extends HttpServlet {
    private static Logger LOGGER = Logger.getLogger((SeekerHomeServlet.class.getName()));

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        LOGGER.info("SeekerHomeServlet doGet()");
        String alert = req.getParameter("alert");
        req.setAttribute("alert",alert);
        req.getRequestDispatcher("/WEB-INF/jsp/seeker/s_home.jsp").forward(req,resp);

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        LOGGER.info("SeekerHomeServlet doPost()");
    }
}
