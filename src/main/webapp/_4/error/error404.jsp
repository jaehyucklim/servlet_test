<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ page import="java.util.Enumeration"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>error404</title>
<style>
	body {
		background-color: pink
	}
	@keyframes colorChange {
		0% { color: red; }
		25% {color: yellow;}
		50% { color: blue; }
		75% { color: gray; }
		100% { color: green; }
	}

	span {
		font-weight: bold;
		font-size: 40px;
		animation: colorChange 5s infinite;
	}
</style>
</head>
<%-- 초기화 파라미터는 web.xml에 작성
	 1. getInitParameterNames(): 웹 어플리케이션 초기화 파라미터의 이름 목록을 리턴합니다.
	 2. getInitParameter(name): 이름이 Name인 웹 어플리케이션 초기화 파라미터의 값을 읽어옵니다.
	 						    존재하지 않을 경우 null을 리턴합니다. --%>
<body>
		<span>404 error</span>
		<br><br>
		<strong>요청한 페이지는 존재하지 않습니다.</strong>
		<br><br>
		주소를 올바르게 입력했는지 확인해보시기 바랍니다.
</body>
</html>
