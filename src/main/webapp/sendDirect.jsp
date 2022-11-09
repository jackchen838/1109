<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"%>
<!DOCTYPE html>
<html>
<head><title>網頁重新導向</title></head>
<body>
<%
	String view = request.getParameter("view");
	if(view.equals("PCHome"))
		response.sendRedirect("https://24h.pchome.com.tw/?gclid=EAIaIQobChMI3tqPu8ig-wIVKddMAh3cYAGeEAAYASAAEgKFgvD_BwE");
	else if(view.equals("google"))
		response.sendRedirect("https://www.google.com.tw/?hl=zh_TW");
	else if(view.equals("yahoo"))
		response.sendRedirect("https://tw.yahoo.com/");
%>
</body>
</html>