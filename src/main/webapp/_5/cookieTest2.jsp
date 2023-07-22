<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Cookie Test2</title>
</head>
<body>
	<%
		String name = "";
		String value = "";
		
		// 쿠키 헤더를 통해 쿠키가 생성 되어 있는지 확인
		String cookie = request.getHeader("Cookie");
		
		if (cookie != null) {
			// 쿠키들을 가져오기(배열)
			Cookie cookies[] = request.getCookies();
			
			// 쿠키 배열레서 쿠키 이름이 "name"인 것을 찾아서 쿠키의 이름과 값 가져오기
			for (int i = 0; i < cookies.length; i++) {
				if (cookies[i].getName().equals("name")) {
					name = cookies[i].getName();
					value = cookies[i].getValue();
					}
				}
	%>
	<h2>쿠키 이름: <%= name %></h2>	
	<h2>쿠키 값: <%= value %></h2>
	<%
		} else {
	%>
		  존재하는 쿠키가 없습니다.
	<%
		}
	%>	  
</body>
</html>
