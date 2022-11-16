<%@ page import="java.sql.*"%>
<%@page contentType="text/html; charset=BIG5"%>
<%@page pageEncoding="BIG5"%>
<%@page import="java.sql.*"%>
<html>
	<head>
	<title>成績查詢主畫面</title>
	<meta charset="BIG5">
	</head>
<body>
	<form action="resultForm.jsp" method="post">
	
	<%
	Class.forName("net.ucanaccess.jdbc.UcanaccessDriver");
	Connection con=DriverManager.getConnection("jdbc:ucanaccess://C:\\Users\\User\\Documents\\GitHub\\1109\\src\\main\\webapp\\grades.accdb;");
	Statement smt= con.createStatement();
	String sql = "SELECT Name FROM grades";
	ResultSet rs = smt.executeQuery(sql);
	
	%>
	<select name="name">
           <%while(rs.next()){ %>
              <option value="<%=rs.getString("Name")%>"><%=rs.getString("Name") %></option>
          <%}con.close();%>   
 	</select>
 	<input type="text" name="keyword">
	<input type="submit" value="查詢成績">
	
	</form>
</body>
</html>