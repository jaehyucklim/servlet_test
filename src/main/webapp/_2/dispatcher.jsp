<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" %>
<%@ page import="java.util.Calendar" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>dispatcher.jsp</title>
<style>
	body {background: pink;}
	div {color: red}
	p {color: green}
</style>
</head>
<body>
<!-- request객체의 getParameter()메소드를 이용해서 파라미터 "food"의 값을 가져옵니다. -->
<%-- jsp에서 <%=값 or 수식 or 변수 %>는 '값 or 수식 or 변수'를 출력하라는 의미입니다. --%>
	<div>
		request 파라미터 값: <%=request.getParameter("food") %>
	</div>
	<p>
		보여주는 페이지 주소: <%=request.getRequestURL() %>
	</p>
</body>
</html>