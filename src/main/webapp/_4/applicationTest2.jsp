<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>application Test - 초기화 파라미터 읽어오기</title>
<style>
	div {background: <%=application.getInitParameter("color")%>}
</style>
</head>
<%-- 초기화 파라미터는 web.sml에 작성
	 1. getInitParameterNames(): 웹 어플리케이션 초기화 파라미터의 이름 목록을 리턴합니다.
	 2. getInitParameter(name): 이름이 Name인 웹 어플리케이션 초기화 파라미터의 값을 읽어옵니다.
	 						    존재하지 않을 경우 null을 리턴합니다. --%>
<body>
	<h2>web.xml에서 설정한 색상으로 지정</h2>
	
	<div>which color i am ?</div>
</body>
</html>
