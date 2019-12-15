package qualk.filters;

import java.io.IOException;
import java.sql.Connection;
//import java.sql.Connection;
//import java.sql.SQLException;
import java.sql.SQLException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import qualk.beans.User;
import qualk.utils.DBUtils;
import qualk.utils.MyUtils;

@WebFilter(filterName = "cookieFilter", urlPatterns = {"/*"})
public class CookieFilter implements Filter {
	public CookieFilter() {
		super();
	}
	
	@Override
	public void init(FilterConfig filterConfig) throws ServletException {
		Filter.super.init(filterConfig);
	}
	
	@Override
	public void destroy() {
		Filter.super.destroy();
	}
	
	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
//		System.out.println("\tCookie Filter");
		HttpServletRequest req = (HttpServletRequest) request;
		HttpSession session = req.getSession();
		
		User userInSession = MyUtils.getLoginedUser(session);
		
		if (userInSession != null) {
            session.setAttribute("COOKIE_CHECKED", "CHECKED");
            chain.doFilter(request, response);
            return;
        }
 
        Connection conn = MyUtils.getStoredConnection(request);
 
        String checked = (String) session.getAttribute("COOKIE_CHECKED");
        if (checked == null && conn != null) {
            String userName = MyUtils.getUserNameInCookie(req);
            try {
                User user = DBUtils.UC_Timkiem(conn, userName);
                MyUtils.storeUserInfo(session, user);
            } catch (SQLException e) {
                e.printStackTrace();
            }
            session.setAttribute("COOKIE_CHECKED", "CHECKED");
        }
 
        chain.doFilter(request, response);
	}
}
