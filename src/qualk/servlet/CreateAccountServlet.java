package qualk.servlet;

import java.io.IOException;
import java.sql.Connection;
import java.util.Date;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import qualk.beans.TeacherCV;
import qualk.beans.User;
import qualk.utils.DBUtils;
import qualk.utils.MyUtils;

@WebServlet(urlPatterns = {"/createAccount"})
public class CreateAccountServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		RequestDispatcher dispatcher = this.getServletContext().getRequestDispatcher("/WEB-INF/jobfinder/createAccount.jsp");
		dispatcher.forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		try {
			String address = req.getParameter("street") + req.getParameter("district") + req.getParameter("city");
			String day = req.getParameter("day") + "-" + req.getParameter("month") + "-" + req.getParameter("year");
			String email = req.getParameter("email");
			String name = req.getParameter("userID");
			String password = req.getParameter("password");
			String comfirm_password = req.getParameter("confirm-password");
			String locationID = req.getParameter("locationID");
			String degree = req.getParameter("degree");
			String experiences = req.getParameter("experiences");
			String contact = req.getParameter("contact");
			String skill = req.getParameter("skill");
			Boolean available = Boolean.parseBoolean(req.getParameter("available"));
			int salaryWant = Integer.parseInt(req.getParameter("salaryWant"));
			SimpleDateFormat formatter = new SimpleDateFormat("dd-MMM-yyyy");
			Date birthday = formatter.parse(day);
			
			String errorString = null;
			
			Connection conn = MyUtils.getStoredConnection(req);
			List<User> userList = DBUtils.List_User(conn);
			
			for (User user : userList) {
				if (name.equals(user.getUserName())) {
					errorString = "UserName has already been taken!";
					break;
				}
			}
			
			if (!password.equals(comfirm_password)) {
				errorString = "Password unmatched!";
			}
			
			req.setAttribute("errorString", errorString);
			if (errorString == null) {
				User newUser = new User(name, password, email);
				DBUtils.UC_ThemUser(conn, newUser);
				List<User> newUserList = DBUtils.UC_TimkiemListUser(conn, name);
				String id = null;
				for (User u : newUserList) {
					if (password.equals(u.getPassword()) && email.equals(u.getEmail())) {
						id = u.getiD();
					}
				}
				
				TeacherCV t = new TeacherCV(id, locationID, name, birthday, address, degree, experiences, contact, skill, available, salaryWant);
				DBUtils.UC_ThemGiaoVien(conn, t);
				String succeeded = "Added successfully";
				req.setAttribute("succeeded", succeeded);
			}
		} catch (ParseException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
}
