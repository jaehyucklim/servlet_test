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
	<!-- method�� ���� ������ default: get -->
	<form action='context'> 
		<b>�����ϴ� ������ �����Դϱ�?</b>
		<input type="text" name="food">
		<input type="submit" value="����">
	</form>
</body>
</html>