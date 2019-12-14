package qualk.servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import qualk.beans.*;
import qualk.utils.*;

@WebServlet(urlPatterns = {"/login"})
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public LoginServlet() {
		super();
	}
	
	// Show LoginPage
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// Forward to /WEB-INF/views/loginView.jsp
		// User cannot access directly into JSP pages placed in /WEB-INF/
		RequestDispatcher dispatcher = this.getServletContext().getRequestDispatcher("/WEB-INF/jobfinder/login.jsp");
		dispatcher.forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String username = req.getParameter("username");
		String password = req.getParameter("password");
		String rememberMeStr = req.getParameter("rememberMe");
		boolean remember = "Y".equals(rememberMeStr);
		
		User user = null;
		boolean hasError = false;
		String errorString = null;
		
		if (username == null || password == null || username.length() == 0 || password.length() == 0) {
			hasError = true;
			errorString = "Required username and password!";
		} else {
			Connection conn = MyUtils.getStoredConnection(req);
			try {
				user = DBUtils.UC_Timkiem(conn, username);
				if (user == null) {
					hasError = true;
					errorString = "User Name or password invalid";
				}
			} catch (SQLException e) {
				e.printStackTrace();
				hasError = true;
				errorString = e.getMessage();
			}
		}
		// If error, forward to login page
		if (hasError) {
			user = new User();
			user.setUserName(username);
			user.setPassword(password);
			
			// Store information in request attribute, before forward
			req.setAttribute("errorString", errorString);
			req.setAttribute("user", user);
			
			// Forward to login page
			RequestDispatcher dispatcher = this.getServletContext().getRequestDispatcher("/WEB-INF/jobfinder/login.jsp");
			dispatcher.forward(req, resp);
			
		// If no error, store user information in session
		// And redirect to UserInfo Page
		} else {
			HttpSession session = req.getSession();
			MyUtils.storeUserInfo(session, user);
			
			if (remember) {
				MyUtils.storeUserCookie(resp, user);
			} else {
				MyUtils.deleteCookie(resp);
			}
			
			resp.sendRedirect(req.getContextPath() + "/home");
		}
		
	}
}
