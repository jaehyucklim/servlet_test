<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ page import="java.util.Enumeration"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>파라미터 출력</title>
</head>
<body>
<%
	String name = request.getParameter("name");
	session.setAttribute("name", "hong");
%>
name 파라미터 값: <%=session.getAttribute("name").toString().toUpperCase()%>
</body>
</html>
