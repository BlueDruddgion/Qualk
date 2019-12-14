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
import qualk.utils.MappingTable;

@WebServlet(urlPatterns = {"/home"})
public class HomeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		RequestDispatcher dispatcher = this.getServletContext().getRequestDispatcher("/WEB-INF/jobfinder/job-info.jsp");
		dispatcher.forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String keyword = req.getParameter("keyword");
		Connection conn = (Connection) req.getAttribute("ATTRIBUTE_FOR_CONNECTION");
		List<Form> formList = null;
		try {
			formList = DBUtils.UC_TimKiemBTD(conn, keyword);
			for (Form form : formList) {
				form.setLocationID(MappingTable.locationFromID(req, form.getLocationID()));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		req.setAttribute("formList", formList);
		RequestDispatcher dispatcher = this.getServletContext().getRequestDispatcher("/WEB-INF/jobfinder/listOfForm.jsp");
		dispatcher.forward(req, resp);
	}
}
