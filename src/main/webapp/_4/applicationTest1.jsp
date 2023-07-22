<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ page import="java.util.Enumeration"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>application Test - 초기화 파라미터 읽어오기</title>
<!-- 세션ID: 컨테이너 내부의 정보를 저장 및 관리하고 저장된 정보에 접근하기 위해 사용(쿠키사용{JSESSIONID}) -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<%-- 초기화 파라미터는 web.sml에 작성
	 1. getInitParameterNames(): 웹 어플리케이션 초기화 파라미터의 이름 목록을 리턴합니다.
	 2. getInitParameter(name): 이름이 Name인 웹 어플리케이션 초기화 파라미터의 값을 읽어옵니다.
	 						    존재하지 않을 경우 null을 리턴합니다. --%>
<body>
	<h2>초기화 파라미터 목록</h2>
	<ul>
		<%
			Enumeration<String> initParamEnum = application.getInitParameterNames();
			while (initParamEnum.hasMoreElements()) {
				String initParamName = initParamEnum.nextElement();
		%>
			<li>
				<%=initParamName%> = 
				<%=application.getInitParameter(initParamName) %>
			</li>
		<%
			}
		%>	
	</ul>
</body>
</html>
