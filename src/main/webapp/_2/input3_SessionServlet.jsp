<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" %>
<%@ page import="java.util.Calendar" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Session 방식으로 이동</title>
<link href="css/ch03-5.css" type="text/css" rel="stylesheet">
</head>
<body>
	<form action='SessionServlet'>
		<b>좋아하는 음식은 무엇입니까?</b>
		<input type="text" name="food">
		<input type="submit" value="전송">
	</form>
</body>
</html>