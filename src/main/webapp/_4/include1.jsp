<%@ page language="java" contentType="text/html; charset=EUC-KR" 
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<%
	String name = "사랑이";
	String alias = "rabit";
%>
<html>
<head>
<meta charset="EUC-KR">
<title>include</title>
<%-- include 액션 태그: page의 속성의 페이지 처리가 끝나면 처리 결과를 원래 페이지로 리턴하는 방식 --%>
</head>
<body>
	<b>이름은 <%=name%> 입니다.</b>
</body>
</html>
