package com.filter;

import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.logging.Logger;

@WebFilter("/*")
public class EncodingFilter extends HttpFilter {

    private static Logger LOGGER = Logger.getLogger(EncodingFilter.class.getName());

    protected void doFilter(HttpServletRequest request, HttpServletResponse response, FilterChain chain) throws IOException, ServletException {
        LOGGER.info("统一\"UTF-8\"编码");
        request.setCharacterEncoding("UTF-8");
//        response.setContentType("text/html;charset=UTF-8");
        chain.doFilter(request, response);
    }

}
