<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Cookie Test</title>
</head>
<body>
	<%
		// 쿠키 생성
		// "name": 쿠키 이름, "hong": 쿠키 값
		Cookie cookie = new Cookie("name", "hong");
		
		cookie.setMaxAge(6); // 쿠키 유지 시간(6초)
		response.addCookie(cookie); // 생성한 쿠키를 클라이언트로 전송(from server)
	%>
	<h2>
		쿠키 이름: <%=cookie.getName()%>
	</h2>
	<h2>
		쿠키 값: <%=cookie.getValue()%>
	</h2>
	<h2>
		쿠키 유지시간: <%=cookie.getMaxAge()%>s
		(이 시간이 지나 후 아래의 anchor 클릭)
	</h2>
	<a href="cookieTest2.jsp">쿠키 값 불러오기</a>

</body>
</html>
