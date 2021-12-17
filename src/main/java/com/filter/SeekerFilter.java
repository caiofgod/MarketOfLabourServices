package com.filter;

import com.entity.Enterprise;
import com.entity.Seeker;

import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;
import java.util.logging.Logger;

@WebFilter("/seeker/*")
public class SeekerFilter extends HttpFilter {

    private static Logger LOGGER = Logger.getLogger(SeekerFilter.class.getName());
    private static List<String> filter = List.of("/home");
    private static List<String> logon = List.of("/logon","/register");

    protected void doFilter(HttpServletRequest request, HttpServletResponse response, FilterChain chain) throws ServletException, IOException {
        LOGGER.info("SeekerFilter doFilter()");
        for(String s : filter){
            if(("/seeker" + s).equals(request.getServletPath())){
                chain.doFilter(request, response);
                return;
            }
        }
        LOGGER.info("SeekerFilter doFilter() 过滤开始");
        Seeker seeker = (Seeker) request.getSession().getAttribute("seeker");
        for(String s : logon){
            if(("/seeker" + s).equals(request.getServletPath())){
                if(seeker != null){
                    String alert = java.net.URLEncoder.encode("您已登录！","UTF-8");
                    response.sendRedirect(request.getContextPath() + "/seeker/home?alert=" + alert);
                    return;
                }
                else{
                    chain.doFilter(request, response);
                    return;
                }
            }
        }

        if(seeker == null){
            response.sendRedirect(request.getContextPath() + "/seeker/logon");
            return;
        }
        chain.doFilter(request, response);
        LOGGER.info("SeekerFilter doFilter() 过滤结束");
    }
}
