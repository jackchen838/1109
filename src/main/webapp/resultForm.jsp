<%@ page import="java.sql.*"%>
<%@page contentType="text/html; charset=BIG5"%>
<%@page pageEncoding="BIG5"%>
<%@page import="java.sql.*"%>
<html>
	<head>
	  <title>成績查詢結果</title>
	  <meta charset="BIG5">
	</head>
<body>
	<%
	// Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
	// Connection con =DriverManager.getConnection("jdbc:odbc:dataBase") ;
	Class.forName("net.ucanaccess.jdbc.UcanaccessDriver");
	Connection con=DriverManager.getConnection("jdbc:ucanaccess://C:\\Users\\User\\Documents\\GitHub\\1109\\src\\main\\webapp\\grades.accdb;");
	Statement smt= con.createStatement();
	
	String name = new String(request.getParameter("name").getBytes("ISO-8859-1"));
	String keyword = new String(request.getParameter("keyword").getBytes("ISO-8859-1"));
	String sql = "SELECT * FROM grades WHERE Name ='" + name + "'";
	String color;
	ResultSet rs = smt.executeQuery(sql);
	rs.next();
	
	%>
	<font color="blue" size="5"><%=rs.getString("Name") %>的成績如下：</font>
	<p>
	國文：<%=rs.getString("國文") %><br>
	英文：<%=rs.getString("英文") %><br>
	數學：<%=rs.getString("數學") %><br>
	</p>
	<%
	String sql1 = "SELECT * FROM grades WHERE Name like'*" + keyword + "*' ";
	ResultSet rs1 = smt.executeQuery(sql1);
	rs1.next();
	%>
	<font color="blue" size="5"><%=rs1.getString("Name") %>的成績如下：</font>
	<p>
	國文：<%=rs1.getString("國文") %><br>
	英文：<%=rs1.getString("英文") %><br>
	數學：<%=rs1.getString("數學") %><br>
	</p>
</body>
</html>