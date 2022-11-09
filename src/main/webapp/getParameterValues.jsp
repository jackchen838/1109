<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head><title>使用GetParameterValues方法</title></head>
<body>
<%
	String select[] = request.getParameterValues("ln");
	int count = 0;
	
	try {
		count = select.length;
	}catch(Exception e){
		response.sendRedirect("getParameterValues.htm");
	}
	
	out.print("<font color='red'>您喜歡的程式語言為：</font><br>");
	for (int i = 0; i < count ; i++)
		out.print(select[i]+"<br>");
%>
</body>
</html>