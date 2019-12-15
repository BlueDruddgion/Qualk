package qualk.filters;

import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import qualk.beans.User;
import qualk.utils.MyUtils;

/**
 * Servlet Filter implementation class LoginFilter
 */
@WebFilter(filterName = "loginFilter", urlPatterns = {"/*"})
public class LoginFilter implements Filter {

    public LoginFilter() {
    	super();
    }

	public void destroy() {
	}

	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
//		System.out.println("Login Filter");
		HttpServletRequest req = (HttpServletRequest) request;
        HttpServletResponse resp = (HttpServletResponse) response;
        
        HttpSession session = req.getSession();
        String servletPath = req.getServletPath();
        
        if (servletPath.equals("/login")) {
        	chain.doFilter(request, response);
        	return;
        }
        
        User user = MyUtils.getLoginedUser(session);
        if (user == null) {
        	resp.sendRedirect(req.getContextPath() + "/login");
        	return;
        } else {
        	MyUtils.storeUserInfo(session, user);
        }
        
		chain.doFilter(request, response);
	}

	public void init(FilterConfig fConfig) throws ServletException {
	}

}
