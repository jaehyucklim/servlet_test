<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ page import="java.util.Enumeration"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>�Ķ���� ���</title>
</head>
<body>
<%
	String name = request.getParameter("name");
	session.setAttribute("name", "hong");
%>
name �Ķ���� ��: <%=session.getAttribute("name").toString().toUpperCase()%>
</body>
</html>
