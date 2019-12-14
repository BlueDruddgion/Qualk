<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import="qualk.beans.*" %>
<%@ page import="qualk.utils.DBUtils" %>
<%@ page import="qualk.conn.*" %>
<%@ page import="java.util.*" %>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<ul>
	<%
		Connection conn = MySQLConnUtils.getMySQLConnection();
			List<CenterInfo> centerData = DBUtils.UC_TimKiemTrungTam(conn, "MoneyGroup");
			for (CenterInfo s: centerData) {
	%>
			<li><%= s %></li>
		<%
			}
	%>
	<</ul>
</body>
</html>