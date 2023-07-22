<%@ page language="java" contentType="text/html; charset=EUC-KR" 
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Include Action Test </title>
<%-- include 액션 태그: page의 속성의 페이지 처리가 끝나면 처리 결과를 원래 페이지로 리턴하는 방식 

	 include direct와 차이점: 디렉티브는 원래 페이지 안으로 include 지시어로 지정한 페이지의 
	 소스 코드가 그대로 복사 되어 실행 되지만 include 액션 태그는 page 속성의 페이지의 실행 결과를 
	 현재 위치에 포함시킵니다. --%>
</head>
<body>
	<h2>Include Action Test 시작</h2>
	<jsp:include page="include1.jsp"></jsp:include>
	<br>
	<%-- <%=alias %> --%> <%-- 에러 발생(소스가 통째로 오는 것이 아니라 결과만 온다) --%>
	<h2>Include Action Test 끝</h2>
</body>
</html>
