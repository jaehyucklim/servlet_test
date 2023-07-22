<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>scope.jsp</title>
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
		request 속성 food 값: <%=request.getAttribute("food") %>
		<br>
		<!-- ★클라이언트(세션 객체)(웹브라우저) 별로 각자 로그인(연결) 필요★ -->
		session 속성 food 값: <%=session.getAttribute("food") %>
		<br>
		<!-- ★클라이언트(객체) 별로 각자 로그인(연결) 필요없음 항상 그 값 가지고 다님★ -->
		ServletContext 속성 food 값: <%=application.getAttribute("food") %>
	</div>
	<p>
		보여주는 페이지 주소: <%=request.getRequestURL() %>
	</p>
</body>
</html>