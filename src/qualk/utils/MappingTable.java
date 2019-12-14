package qualk.utils;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import qualk.beans.Location;

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
}
