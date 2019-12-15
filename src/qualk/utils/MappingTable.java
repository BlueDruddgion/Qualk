package qualk.utils;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import qualk.beans.Location;
import qualk.beans.TeacherCV;
import qualk.beans.User;

public class MappingTable {
	public static String locationFromID(HttpServletRequest request, String id) throws SQLException {
		Connection conn = (Connection) request.getAttribute("ATTRIBUTE_FOR_CONNECTION");
		List<Location> locationList = DBUtils.UC_Location(conn);
		for (Location location : locationList) {
			if (id.equals(location.getiD())) {
				String locate = null;
				if (location.getProvinceID().equals("Thành phố Trung ương")) {
					locate = location.getName().split("Thành phố")[1];
				} else {
					locate = location.getName().split("Tỉnh")[1];
				}
				return locate;
			}
		}
		return null;
	}
	
	public static String locationIDFromLocation(HttpServletRequest request, String location) throws SQLException {
		Connection conn = (Connection) request.getAttribute("ATTRIBUTE_FOR_CONNECTION");
		List<Location> locationList = DBUtils.UC_Location(conn);
		for (Location locate : locationList) {
			if (location.equals(locate.getName())) {
				return locate.getiD();
			}
		}
		return null;
	}
	
	public static TeacherCV loadTeacherCVFromUser(HttpServletRequest request, String userName) throws SQLException {
		Connection conn = (Connection) request.getAttribute("ATTRIBUTE_FOR_CONNECTION");
		List<User> userList = DBUtils.List_User(conn);
		for (User user : userList) {
			if (userName.equals(user.getUserName())) {
				TeacherCV teacher = DBUtils.UC_TimKiemGiaoVien(conn, user.getiD());
				return teacher;
			}
		}
		return null;
	}
}
