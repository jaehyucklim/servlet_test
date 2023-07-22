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
<!-- request 객체의 getAttribute()메소드를 이용해서 속성 "food"의 값을 가져옵니다. -->
<%-- jsp에서 <%=값 or 수식 or 변수 %>는 '값 or 수식 or 변수'를 출력하라는 의미입니다. --%>
	<div>
		request 속성 food 값: <%=request.getAttribute("food") %>
		<br>
		request 속성 name 값: <%=request.getAttribute("name") %>
	</div>
	<p>
		요청 주소: <%=request.getRequestURL() %>
	</p>
</body>
</html>