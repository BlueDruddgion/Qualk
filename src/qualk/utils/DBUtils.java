package qualk.utils;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import qualk.beans.*;

public class DBUtils {
	public static void UC_ThemUser(Connection conn, User user) throws SQLException {
		String query = "Insert into user (username, password, email) values (?, ?, ?)";
		PreparedStatement ps = conn.prepareStatement(query);
		ps.setString(1, user.getUserName());
		ps.setString(2, user.getPassword());
		ps.setString(3, user.getEmail());
		ps.executeUpdate();
	}
	
	public static void UC_SuaUser(Connection conn, User user) throws SQLException {
		String query = "Update user set password = ?, email = ? where username = ?";
		PreparedStatement ps = conn.prepareStatement(query);
		ps.setString(1, user.getPassword());
		ps.setString(2, user.getEmail());
		ps.setString(3, user.getUserName());
		ps.executeUpdate();
	}
	
	public static void UC_XoaUser(Connection conn, String username) throws SQLException {
		String query = "Delete from user where username = ?";
		PreparedStatement ps = conn.prepareStatement(query);
		ps.setString(1, username);
		ps.executeUpdate();
	}
	
	public static User UC_Timkiem(Connection conn, String username) throws SQLException {
		String query = "Select * from user where username = ?";
		PreparedStatement ps = conn.prepareStatement(query);
		ps.setString(1, username);
		ResultSet rs = ps.executeQuery();
		while (rs.next() ) {
			User u = new User(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4));
			return u;
		}
		return null;
	}
	
	public static void UC_ThemGiaoVien(Connection conn, TeacherCV teacher) throws SQLException {
		String query = "Insert into TeacherCV (Location_ID, Name, BirthDate, Address, Degree, Experiences, Contact, Skills, Available, Salary_Want) "
				+ "values (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
		PreparedStatement ps = conn.prepareStatement(query);
		ps.setString(1, teacher.getLocationID());
		ps.setString(2, teacher.getName());
		ps.setDate(3, teacher.getBirthDate());
		ps.setString(4, teacher.getAddress());
		ps.setString(5, teacher.getDegree());
		ps.setString(6, teacher.getExperiences());
		ps.setString(7, teacher.getContact());
		ps.setString(8, teacher.getSkill());
		ps.setBoolean(9, teacher.getAvailable());
		ps.setInt(10, teacher.getSalaryWant());
		ps.executeUpdate();
	}
	
	public static void UC_SuaGiaoVien(Connection conn, TeacherCV teacher) throws SQLException {
		String query = "Update TeacherCV set Location_ID=?, Name=?, BirthDate=?, Address=?, Degree=?, Experiences=?, Contact=?, Skills=?, Available=?, Salary_Want=? where id=?";
		PreparedStatement ps = conn.prepareStatement(query);
		ps.setString(1, teacher.getLocationID());
		ps.setString(2, teacher.getName());
		ps.setDate(3, teacher.getBirthDate());
		ps.setString(4, teacher.getAddress());
		ps.setString(5, teacher.getDegree());
		ps.setString(6, teacher.getExperiences());
		ps.setString(7, teacher.getContact());
		ps.setString(8, teacher.getSkill());
		ps.setBoolean(9, teacher.getAvailable());
		ps.setInt(10, teacher.getSalaryWant());
		ps.setString(11, teacher.getiD());
		ps.executeUpdate();
	}
	
	public static void UC_XoaGiaoVien(Connection conn, String id) throws SQLException {
		String query = "Delete from TeacherCV where id = ?";
		PreparedStatement ps = conn.prepareStatement(query);
		ps.setString(1, id);
		ps.executeUpdate();
	}
	
	public static List<TeacherCV> UC_TimKiemGiaoVien(Connection conn, String name) throws SQLException {
		String query = "Select * from TeacherCV where name = ?";
		PreparedStatement ps = conn.prepareStatement(query);
		ps.setString(1, name);
		ResultSet rs = ps.executeQuery();
		List<TeacherCV> teacherData = new ArrayList<>();
		while (rs.next()) {
			TeacherCV t = new TeacherCV(rs.getString(1), rs.getString(2), rs.getString(3), rs.getDate(4), rs.getString(5), rs.getString(6), 
					rs.getString(7), rs.getString(8), rs.getString(9), rs.getBoolean(10), rs.getInt(11));
			teacherData.add(t);
		}
		return teacherData;
	}
	
	public static void UC_ThemTrungTam(Connection conn, CenterInfo center) throws SQLException {
		String query = "Insert into CenterInfo (User_ID, Name, Specialize, Address, Contact, Available, Location_ID) "
				+ "values (?, ?, ?, ?, ?, ?, ?)";
		PreparedStatement ps = conn.prepareStatement(query);
		ps.setString(1, center.getUserID());
		ps.setString(2, center.getName());
		ps.setString(3, center.getSpecialize());
		ps.setString(4, center.getAddress());
		ps.setString(5, center.getContact());
		ps.setBoolean(6, center.getAvailable());
		ps.setString(7, center.getLocationID());
		ps.executeUpdate();
	}
	
	public static void UC_SuaTrungTam(Connection conn, CenterInfo center) throws SQLException {
		String query = "Update CenterInfo set User_ID=?, Name=?, Specialize=?, Address=?, Contact=?, Available=?, Location_ID=? where id=?";
		PreparedStatement ps = conn.prepareStatement(query);
		ps.setString(1, center.getUserID());
		ps.setString(2, center.getName());
		ps.setString(3, center.getSpecialize());
		ps.setString(4, center.getAddress());
		ps.setString(5, center.getContact());
		ps.setBoolean(6, center.getAvailable());
		ps.setString(7, center.getLocationID());
		ps.setString(8, center.getiD());
		ps.executeUpdate();
	}
	
	public static void UC_XoaTrungTam(Connection conn, String id) throws SQLException {
		String query = "Delete from CenterInfo where id=?";
		PreparedStatement ps = conn.prepareStatement(query);
		ps.setString(1, id);
		ps.executeUpdate();
	}
	
	public static List<CenterInfo> UC_TimKiemTrungTam(Connection conn, String name) throws SQLException {
		List<CenterInfo> centerData = new ArrayList<>();
		String query = "Select * from CenterInfo where name=?";
		PreparedStatement ps = conn.prepareStatement(query);
		ps.setString(1, name);
		ResultSet rs = ps.executeQuery();
		while (rs.next()) {
			CenterInfo center = new CenterInfo(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), 
					rs.getString(6), rs.getBoolean(7), rs.getString(8));
			centerData.add(center);
		}
		return centerData;
	}
	
	public static void UC_ThemReport(Connection conn, Report report) throws SQLException {
		String query = "Insert into Report (Center_ID, Teacher_ID, Title, Content, Datetime) values (?, ?, ?, ?, ?)";
		PreparedStatement ps = conn.prepareStatement(query);
		ps.setString(1, report.getCenterID());
		ps.setString(2, report.getTeacherID());
		ps.setString(3, report.getTitle());
		ps.setString(4, report.getContent());
		ps.setDate(5, report.getDateTime());
		ps.executeUpdate();
	}
	
	public static void UC_SuaReport(Connection conn, Report report) throws SQLException {
		String query = "Update Report set Center_ID=?, Teacher_ID=?, Title=?, Content=?, Datetime=? where id=?";
		PreparedStatement ps = conn.prepareStatement(query);
		ps.setString(1, report.getCenterID());
		ps.setString(2, report.getTeacherID());
		ps.setString(3, report.getTitle());
		ps.setString(4, report.getContent());
		ps.setDate(5, report.getDateTime());
		ps.setString(6, report.getiD());
		ps.executeUpdate();
	}
	
	public static void UC_XoaReport(Connection conn, String id) throws SQLException {
		String query = "Delete from Report where id=?";
		PreparedStatement ps = conn.prepareStatement(query);
		ps.setString(1, id);
		ps.executeUpdate();
	}
	
	public static List<Report> UC_TimKiemReport(Connection conn, String id) throws SQLException {
		String query = "Select * from Report where id=?";
		PreparedStatement ps = conn.prepareStatement(query);
		ps.setString(1, id);
		ResultSet rs = ps.executeQuery();
		List<Report> reportData = new ArrayList<>();
		while (rs.next()) {
			Report r = new Report(rs.getString(1), rs.getDate(6), rs.getString(4), rs.getString(5), rs.getString(2), rs.getString(3));
			reportData.add(r);
		}
		return reportData;
	}
	
	public static void UC_ThemBTD(Connection conn, Form f) throws SQLException {
		String query = "Insert into Form (Location_ID, Title, Salary, DateStart, Content, Position, Requirement, Contact, DateEnd) "
				+ "values (?, ?, ?, ?, ?, ?, ?, ?, ?)";
		PreparedStatement ps = conn.prepareStatement(query);
		ps.setString(1, f.getLocationID());
		ps.setString(2, f.getTitle());
		ps.setInt(3, f.getSalary());
		ps.setDate(4, f.getDate());
		ps.setString(5, f.getContent());
		ps.setString(6, f.getPosition());
		ps.setString(7, f.getRequirement());
		ps.setString(8, f.getContact());
		ps.setDate(9, f.getEndTime());
		ps.executeUpdate();
	}
	
	public static void UC_SuaBTD(Connection conn, Form f) throws SQLException{
		String query = "Update Form set Location_ID=?, Title=?, Salary=?, DateStart=?, Content=?, Position=?, Requirement=?, Contact=?, DateEnd=?"
				+ "where id=?";
		
		PreparedStatement ps = conn.prepareStatement(query);
		ps.setString(1, f.getLocationID());
		ps.setString(2, f.getTitle());
		ps.setInt(3, f.getSalary());
		ps.setDate(4, f.getDate());
		ps.setString(5, f.getContent());
		ps.setString(6, f.getPosition());
		ps.setString(7, f.getRequirement());
		ps.setString(8, f.getContact());
		ps.setDate(9, f.getEndTime());
		ps.setString(10, f.getiD());
		ps.executeUpdate();
	}
	
	public static void UC_XoaBTD(Connection conn, String id) throws SQLException{
		String query = "Delete from Form where id = ?";
		PreparedStatement ps = conn.prepareStatement(query);
		ps.setString(1, id);
		ps.executeUpdate();
	}
	
	public static List<Form> UC_TimKiemBTD(Connection conn, String title) throws SQLException{
		String query = "Select * from rescruiment_Form where title = ?";
		PreparedStatement ps = conn.prepareStatement(query);
		ps.setString(1, title);
		ResultSet rs = ps.executeQuery();
		List<Form> formData = new ArrayList<>();
		while (rs.next()) {
			Form f = new Form(rs.getString(1), rs.getString(2), rs.getString(3), rs.getInt(4), rs.getDate(5), 
					rs.getString(6), rs.getString(7), rs.getString(8), rs.getString(9), rs.getDate(10));
			formData.add(f);
		}
		return formData;
	}
	
	public static List<Form> UC_ListBTD(Connection conn) throws SQLException{
		String query = "Select * from rescruiment_Form";
		PreparedStatement ps = conn.prepareStatement(query);
		ResultSet rs = ps.executeQuery();
		List<Form> formData = new ArrayList<>();
		while (rs.next()) {
			Form f = new Form(rs.getString(1), rs.getString(2), rs.getString(3), rs.getInt(4), rs.getDate(5), 
					rs.getString(6), rs.getString(7), rs.getString(8), rs.getString(9), rs.getDate(10));
			formData.add(f);
		}
		return formData;
	}
	
	public static void UC_ThemApply(Connection conn, Apply a) throws SQLException {
		String query = "Insert into Apply (Teacher_ID, Center_ID, Datetime, Status) values (?, ?, ?, ?)";
		PreparedStatement ps = conn.prepareStatement(query);
		ps.setString(1, a.getTeacherID());
		ps.setString(2, a.getCenterID());
		ps.setDate(3, (Date) a.getDateTime());
		ps.setString(4, a.getStatus());
		ps.executeUpdate();
	}
	
	public static void UC_SuaApply(Connection conn, Apply a) throws SQLException {
		String query = "Update Apply set Teacher_ID=?, Center_ID=?, DateTime=?, Status=? where id=?";
		PreparedStatement ps = conn.prepareStatement(query);
		ps.setString(1, a.getTeacherID());
		ps.setString(2, a.getCenterID());
		ps.setDate(3, (Date) a.getDateTime());
		ps.setString(4, a.getStatus());
		ps.setString(5, a.getId());
		ps.executeUpdate();
	}
	
	public static void UC_XoaApply(Connection conn, String id) throws SQLException {
		String query = "Delete from Apply where id =?";
		PreparedStatement ps = conn.prepareStatement(query);
		ps.setString(1, id);
		ps.executeUpdate();
	}
	
	public static List<Apply> UC_TimKiemApply(Connection conn, String id) throws SQLException {
		String query = "Select * from Apply where id=?";
		PreparedStatement ps = conn.prepareStatement(query);
		ps.setString(1, id);
		ResultSet rs = ps.executeQuery();
		List<Apply> applyData = new ArrayList<>();
		while (rs.next()) {
			Apply a = new Apply(rs.getString(1), rs.getString(2), rs.getString(3), rs.getDate(4), rs.getString(5));
			applyData.add(a);
		}
		return applyData;
	}
	
	public static void UC_ThemInterviewInvite(Connection conn, InterviewInvite i) throws SQLException {
		String query = "Insert into InterviewInvite (Datetime, Title, Text) values (?, ?, ?)";
		PreparedStatement ps = conn.prepareStatement(query);
		ps.setDate(1, (Date) i.getDateTime());
		ps.setString(2, i.getTitle());
		ps.setString(3, i.getText());
		ps.executeUpdate();
	}
	
	public static void UC_SuaInterviewInvite(Connection conn, InterviewInvite i) throws SQLException {
		String query = "Update InterviewInvite set DateTime=?, Title=?, Text=? where id=?";
		PreparedStatement ps = conn.prepareStatement(query);
		ps.setDate(1, (Date) i.getDateTime());
		ps.setString(2, i.getTitle());
		ps.setString(3, i.getText());
		ps.setString(4, i.getId());
		ps.executeUpdate();
	}
	
	public static void UC_XoaInterviewInvite(Connection conn, String id) throws SQLException {
		String query = "Delete from InterviewInvite where id =?";
		PreparedStatement ps = conn.prepareStatement(query);
		ps.setString(1, id);
		ps.executeUpdate();
	}
	
	public static List<InterviewInvite> UC_TimKiemInterviewInvite(Connection conn, String id) throws SQLException {
		String query = "Select * from InterviewInvite where id=?";
		PreparedStatement ps = conn.prepareStatement(query);
		ps.setString(1, id);
		ResultSet rs = ps.executeQuery();
		List<InterviewInvite> inviteData = new ArrayList<>();
		while (rs.next()) {
			InterviewInvite a = new InterviewInvite(rs.getString(1), rs.getDate(2), rs.getString(3), rs.getString(4));
			inviteData.add(a);
		}
		return inviteData;
	}
	
	public static List<Location> UC_Location(Connection conn) throws SQLException {
		String query = "Select * from location";
		PreparedStatement ps = conn.prepareStatement(query);
		ResultSet rs = ps.executeQuery();
		List<Location> locationList = new ArrayList<>();
		while (rs.next()) {
			Location location = new Location(rs.getString(1), rs.getString(2), rs.getString(3));
			locationList.add(location);
		}
		return locationList;
	}
}
