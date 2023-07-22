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
		<h1>헤더정보 예시</h1>
		<table class="table table-striped">
			<tr>
				<td>헤더이름</td>
				<td>헤더 값</td>
			</tr>
			<%
				// getHeaderNames(): HTTP요청 헤더에 포함된 모든 헤더 이름을
				// Enumeration 객체로 반환
				Enumeration<String> e = request.getHeaderNames();
				while (e.hasMoreElements()) {
					String headerName = e.nextElement();
			%>
			<tr>
				<td><%=headerName%></td>
				<td>	
					<!-- getHeader(): 매개변수로 지정된 이름을 할당된 값을 리턴(없을시: null) -->
					<%=request.getHeader(headerName)%>
				</td>
			</tr>
			<%
				}
			%>
		</table>
	</div>

</body>
</html>
