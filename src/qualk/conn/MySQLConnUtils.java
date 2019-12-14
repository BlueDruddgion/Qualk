package qualk.conn;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
  
public class MySQLConnUtils {
  
 public static Connection getMySQLConnection()
         throws ClassNotFoundException, SQLException {
     // Chú ý: Thay đổi các thông số kết nối cho phù hợp.
     String hostName = "localhost";
     String dbName = "QUALK";
<<<<<<< HEAD
     String userName = "root";
     String password = "quocanh1999";
=======
     String userName = "beo";
     String password = "Hai@1999";
>>>>>>> c60758c9d2e6a0a65517f10b841b03cca74ee229
     return getMySQLConnection(hostName, dbName, userName, password);
 }
  
 public static Connection getMySQLConnection(String hostName, String dbName, String userName, String password) 
		 throws SQLException, ClassNotFoundException {
    
     Class.forName("com.mysql.cj.jdbc.Driver");
  
     // Cấu trúc URL Connection đối với MySQL:
     // Ví dụ: 
     // jdbc:mysql://localhost:3306/simplehr
     String connectionURL = "jdbc:mysql://" + hostName + ":3306/" + dbName;
  
     Connection conn = DriverManager.getConnection(connectionURL, userName, password);
     return conn;
 }
}