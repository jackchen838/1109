<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP Page</title>
</head>
<body>
<%request.setCharacterEncoding("UTF-8"); %>
<%
 String name = request.getParameter("name");
 String email = request.getParameter("email");
 String tel = request.getParameter("tel");
%>
Hi,<%=name %>您好：<br>
您輸入的個資如下：<br>
姓名：<%=name %><br>
E-mail：<%=email %><br>
電話：<%=tel %>	

</body>
</html>