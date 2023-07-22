<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%	
	// 쿠키 객체 생성
	// 생성된 쿠키(객체)에 language1 이라는 이름으로 language 설정 값 대입
	Cookie cookie = new Cookie("language1", request.getParameter("language"));
	
	// 브라우저 종료 시 쿠키도 삭제
	// 또는 쿠키 setMaxAge를 0으로 주면 쿠키 삭제
	cookie.setMaxAge(60 * 60 * 24);
	
	// 클라이언트로 쿠키값을 전송(from server)
	response.addCookie(cookie);
%>
<script>
	location.href="cookieExample.jsp";
</script>
