package qualk.servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;


import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import qualk.beans.User;
import qualk.beans.TeacherCV;
import qualk.utils.DBUtils;
import qualk.utils.MyUtils;


@WebServlet(urlPatterns = {"/teacherList"})
public class TeacherListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		HttpSession session = req.getSession(); 
		
		Connection conn = MyUtils.getStoredConnection(req);
		
		User loginedUser = MyUtils.getLoginedUser(session);
		// Not login yet
		if (loginedUser == null) {
			resp.sendRedirect(req.getContextPath() + "/login");
			return;
		}
		
		String nameToSearch = req.getParameter("nameToSearch");
		List<TeacherCV> listTeacher = null;
		int count = 0; 
		try {
			listTeacher = DBUtils.UC_TimKiemGiaoVien(conn, nameToSearch);
			count = listTeacher.size();
		} catch(SQLException e){
			e.printStackTrace();
		}
		
		// set Attribute for jsp 
		req.setAttribute("listTeacher", listTeacher); 
		req.setAttribute("count", count);
		

		// TODO Auto-generated method stub
		RequestDispatcher dispatcher = this.getServletContext().getRequestDispatcher("/WEB-INF/jobfinder/teacherList.jsp");
		dispatcher.forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		this.doGet(req, resp);
	}
}
