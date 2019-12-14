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

import qualk.beans.Form;
import qualk.utils.DBUtils;

@WebServlet(urlPatterns = {"/searchEngine"})
public class SearchEngineServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		RequestDispatcher dispatcher = this.getServletContext().getRequestDispatcher("/WEB-INF/jobfinder/index.jsp");
		dispatcher.forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String keyword = req.getParameter("keyword");
		Connection conn = (Connection) req.getAttribute("ATTRIBUTE_FOR_CONNECTION");
		try {
			List<Form> result = DBUtils.UC_TimKiemBTD(conn, keyword);
			RequestDispatcher rd = this.getServletContext().getRequestDispatcher("/WEB-INF//WEB-INF/jobfinder/CVInfo.jsp");
			rd.forward(req, resp);
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
}
