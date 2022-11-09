<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%><!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>HTML Page</title>
</head>
<body>
 <form method="post" action="Hello.jsp">
  <table border="0">
   <tr>
    <td bgcolor="#E1E1E1">姓名：</td>
    <td><input type="text" name="name"></td>
   </tr>
   <tr>
    <td bgcolor="#E1E1E1">電話：</td>
    <td><input type="text" name="tel"></td>
   </tr>
   <tr>
    <td bgcolor="#E1E1E1">E-mai：</td>
    <td><input type="text" name="email"></td>
   </tr>
   <tr>
    <td colspan="2" align="center">
     <input type="submit" value="確定">
     <input type="reset" value="取消">
    </td>
   </tr>
  </table>
 </form>
</body>
</html>