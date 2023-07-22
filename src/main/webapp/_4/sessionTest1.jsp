<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>sessionTest1</title>
<!-- 세션ID: 컨테이너 내부의 정보를 저장 및 관리하고 저장된 정보에 접근하기 위해 사용(쿠키사용{JSESSIONID}) -->
<link rel="stylesheet" 
	  href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>
	<div class="container">
		<h1>세션 설정 및 메소드 사용법</h1>
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
			<%-- 톰켓은 web.xml에 기본 세션 시간을 30분으로 설정되어 있음
				 <session-config>
        		 	<session-timeout>30</session-timeout>
    			 </session-config> --%>
			<tr>
			<%-- 세션 ID = 쿠키? --%>
				<td>세션 ID</td>
				<td><%=session.getId()%></td>
			</tr>
			<tr>
			<%-- getMaxInactiveInterval(): 세션 유효 시간을 초 단위로 가져옵니다. --%>
				<td>세션 유효 시간</td>
				<td><%=session.getMaxInactiveInterval()/60 + "분"%></td>
			</tr>
			<tr>
				<td>세션 설정</td>
				<td>속성 "id"를 "hong"로 설정<%session.setAttribute("id", "hong");%></td>
			</tr>
			<tr>
				<td>세션 "id" 설정값</td>
				<td><%=session.getAttribute("id")%></td>
			</tr>
		</table>
	</div>
</body>
</html>
