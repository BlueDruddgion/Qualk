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

import qualk.beans.Form;
import qualk.beans.User;
import qualk.utils.DBUtils;
import qualk.utils.MyUtils;

@WebServlet(urlPatterns = {"/listOfForm"})
public class ListOfFormServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		HttpSession session = request.getSession();
		
		Connection conn = MyUtils.getStoredConnection(request);
		
		User loginedUser = MyUtils.getLoginedUser(session);
		// Not login yet
		if (loginedUser == null) {
			response.sendRedirect(request.getContextPath() + "/login");
			return;
		}
		
		// Get param
		String searchString = request.getParameter("search");
		String location = request.getParameter("location");
		int count = 0;
		// Get data
		List<Form> formList = null; 
		try {
			formList = DBUtils.UC_TimKiemBTD(conn, searchString);
			count = formList.size();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		request.setAttribute("count", count);
		request.setAttribute("formList", formList);
		
		RequestDispatcher dispatcher = 
				this.getServletContext().getRequestDispatcher("/WEB-INF/jobfinder/listOfForm.jsp");
		dispatcher.forward(request, response);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		this.doGet(req, resp);
	}
}
