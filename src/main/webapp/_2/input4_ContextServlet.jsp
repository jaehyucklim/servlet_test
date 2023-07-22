<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" %>
<%@ page import="java.util.Calendar" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>ServletContext</title>
<link href="css/ch03-5.css" type="text/css" rel="stylesheet">
</head>
<body>
	<!-- method가 따로 없으면 default: get -->
	<form action='context'> 
		<b>좋아하는 음식은 무엇입니까?</b>
		<input type="text" name="food">
		<input type="submit" value="전송">
	</form>
</body>
</html>