<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ page import="java.util.Enumeration"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>errorNullPointer</title>
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
	<span>서비스 처리 과정에서 NULL에러가 발생했습니다.</span>
</body>
</html>
