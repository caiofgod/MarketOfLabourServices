package com.controller.Seeker;

import com.controller.Enterprise.GetResumeListServlet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.logging.Logger;

@WebServlet("/seeker/getInterviewList")
public class GetInterviewListServlet extends HttpServlet {

    private static Logger LOGGER = Logger.getLogger(GetInterviewListServlet.class.getName());

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        LOGGER.info("");

        request.getRequestDispatcher("/WEB-INF/jsp/seeker/interview_list.jsp").forward(request, response);
    }
}
