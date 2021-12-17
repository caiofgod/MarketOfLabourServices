package com.controller.Seeker;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.logging.Logger;

@WebServlet("/seeker/setrequest")
public class SetRequestServlet extends HttpServlet {

    private static Logger LOGGER = Logger.getLogger(SetRequestServlet.class.getName());

    protected void doGet(HttpServletRequest request, HttpServletResponse response){
        LOGGER.info("SetRequestServlet doGet()");
        String alert = request.getParameter("alert");
        request.setAttribute("alert", alert);
    }
}
