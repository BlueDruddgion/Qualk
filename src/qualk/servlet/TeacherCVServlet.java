package qualk.servlet;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import qualk.beans.TeacherCV;
import qualk.beans.User;
import qualk.utils.MappingTable;
import qualk.utils.MyUtils;

@WebServlet(urlPatterns = {"/teacherCV"})
public class TeacherCVServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		User user = MyUtils.getLoginedUser(req.getSession());
		TeacherCV teacher = null;
		try {
			teacher = MappingTable.loadTeacherCVFromUser(req, user.getUserName());
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		req.setAttribute("teacher", teacher);
		
		RequestDispatcher dispatcher = this.getServletContext().getRequestDispatcher("/WEB-INF/jobfinder/teacherCV.jsp");
		dispatcher.forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		this.doGet(req, resp);
	}
}
