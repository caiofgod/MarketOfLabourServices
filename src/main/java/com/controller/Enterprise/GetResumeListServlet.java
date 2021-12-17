package com.controller.Enterprise;

import com.entity.Request;
import com.model.Select;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;
import java.util.logging.Logger;

@WebServlet("/enterprise/getResumeList")
public class GetResumeListServlet extends HttpServlet {

    private static Logger LOGGER = Logger.getLogger(GetResumeListServlet.class.getName());

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        LOGGER.info("");

        request.getRequestDispatcher("/WEB-INF/jsp/enterprise/resume_list.jsp").forward(request, response);
    }

}
