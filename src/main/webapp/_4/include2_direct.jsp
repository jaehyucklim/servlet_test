<%@ page language="java" contentType="text/html; charset=EUC-KR" 
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Include Directive Text </title>
<%-- include 액션 태그: page의 속성의 페이지 처리가 끝나면 처리 결과를 원래 페이지로 리턴하는 방식 

	 include direct와 차이점: 디렉티브는 원래 페이지 안으로 include 지시어로 지정한 페이지의 
	 소스 코드가 그대로 복사 되어 실행 되지만 include 액션 태그는 page 속성의 페이지의 실행 결과를 
	 현재 위치에 포함시킵니다. --%>
</head>
<body>
	<h2>include 디렉티브 테스트 시작</h2>
	<%@include file='include1.jsp' %>
	<br>
	<%=alias %> <%-- 소스가 통째로 온다(alias 내용 포함) --%>
	<h2>include 디렉티브 테스트 끝</h2>
</body>
</html>
