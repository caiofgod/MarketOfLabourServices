package com.filter;

import com.entity.Enterprise;

import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;
import java.util.logging.Logger;

@WebFilter("/enterprise/*")
public class EnterpriseFilter extends HttpFilter {

    private static Logger LOGGER = Logger.getLogger(EnterpriseFilter.class.getName());
    private static List<String> list = List.of("/enterprise/logon","/enterprise/register");

    protected void doFilter(HttpServletRequest request, HttpServletResponse response, FilterChain chain) throws ServletException, IOException {
        LOGGER.info("EnterpriseFilter doFilter() 过滤开始");
        for(String s : list){
            if(s.equals(request.getServletPath())){
                chain.doFilter(request, response);
                return;
            }
        }
        LOGGER.info("EnterpriseFilter doFilter() 过滤开始");
        Enterprise enterprise = (Enterprise) request.getSession().getAttribute("enterprise");
        if(enterprise == null){
            response.sendRedirect(request.getContextPath() + "/enterprise/logon");
            return;
        }
        chain.doFilter(request, response);
        LOGGER.info("EnterpriseFilter doFilter() 过滤结束");
    }

}
