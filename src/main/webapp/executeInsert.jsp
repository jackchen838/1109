<%@ page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5" import="java.sql.*"%>
<!DOCTYPE html>
<html>
	<head><title>�s�W���</title></head>
<body>
	<%
	Class.forName("net.ucanaccess.jdbc.UcanaccessDriver");
		Connection con=DriverManager.getConnection(
		"jdbc:ucanaccess://C:\\Users\\User\\Documents\\GitHub\\1109\\src\\main\\webapp\\test.accdb;");
	Statement smt= con.createStatement();
	out.println("�s�W��Ʀ�person");
	smt.executeUpdate("INSERT INTO test(id, name) VALUES('1', 'Joan');");
	
	con.close();
	%>
</body>
</html>