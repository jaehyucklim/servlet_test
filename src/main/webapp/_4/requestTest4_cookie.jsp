<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ page import="java.util.Enumeration" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>requestTest3</title>
<!-- 세션ID: 컨테이너 내부의 정보를 저장 및 관리하고 저장된 정보에 접근하기 위해 사용(쿠키사용{JSESSIONID}) -->
<link rel="stylesheet" 
	  href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>
	<div class="container">
		<h1>쿠키, URL/URI, 요청방식에 관련된 정보 예제</h1>
		<table class="table table-striped">
			<tr>
				<td>쿠키정보</td>
				<%
					Cookie[] cookie = request.getCookies();
				if (cookie == null) {
				%>
				<td>쿠키가 존재하지 않습니다.</td>
				<%
					} else {
						for (int i = 0; i < cookie.length; i++) {
				%>
				<td><%= cookie[i].getName()%>(<%= cookie[i].getValue()%>)
					%nbsp;%nbsp;</td>
				<% 
						} // for end
					} // else end
				%>
			</tr>
			<tr>
				<td>서버 도메인명</td>
				<td><%=request.getServerName()%></td>
			</tr>
			<tr>
				<td>서버 포트번호</td>
				<td><%=request.getServerPort()%></td>
			</tr>
			<tr>
				<td>요청 URL</td>
				<td><%=request.getRequestURL()%></td>
			</tr>
			<tr>
				<td>요청 URI(Uniform Resource Identifier)</td>
				<td><%=request.getRequestURL()%></td>
			</tr>
			<tr>
				<td>요청 쿼리</td>
				<td><%=request.getQueryString()%></td>
			</tr>
			<tr>
				<td>클라이언트 호스트명</td>
				<td><%=request.getRemoteHost()%></td>
			</tr>
			<tr>
				<td>클라이언트 IP 주소</td>
				<td><%=request.getRemoteAddr()%></td>
			</tr>
				<tr>
				<td>프로토콜</td>
				<td><%=request.getProtocol()%></td>
			</tr>
			<tr>
				<td>요청방식</td>
				<td><%=request.getMethod()%></td>
			</tr>
			<tr>
				<td>컨텍스트 경로</td>
				<%-- ContextPath(톰켓에서 Context는 웹 애플리케이션을 의미) --%>
				<td><%=request.getContextPath()%></td>
			</tr>
		</table>
	</div>
</body>
</html>
