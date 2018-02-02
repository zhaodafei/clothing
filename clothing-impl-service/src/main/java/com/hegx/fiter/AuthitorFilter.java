package com.hegx.fiter;

import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.IOException;

public class AuthitorFilter implements Filter {
    @Override
    public void init(FilterConfig filterConfig) throws ServletException {

    }

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
        HttpServletRequest req = (HttpServletRequest) request;
        HttpSession session = req.getSession();

        Object checkCode = session.getAttribute("checkCode");
        session.setMaxInactiveInterval(40 * 60);//session有效时长

        if (req.getParameter("param") != null && req.getParameter("param").equals("exit")) {
            session.invalidate();
        }
        if (session.getAttribute("orgUserEntityDto") != null || checkCode != null) {
            chain.doFilter(request, response);
        } else {
            req.getRequestDispatcher("/login").forward(request, response);
        }
    }

    @Override
    public void destroy() {

    }
}
