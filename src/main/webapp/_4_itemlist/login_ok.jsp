<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>회원 정보</title>
</head>
<body>
	<%
	String id = request.getParameter("id");
	String pass = request.getParameter("pass");

	// String inputid = getServletContext().getInitParameter("id")   
	String inputid = application.getInitParameter("id");

	// String inputpass = getServletContext().getInitParameter("password");
	String inputpass = application.getInitParameter("password");

	if (id.equals(inputid) && pass.equals(inputpass)) {
		session.setAttribute("id", id);
	%>
	<script>
        alert("<%=id%>님 로그인에 성공했습니다.");
		location.href = "templatetest.jsp";
	</script>
	<%
		String check_value = request.getParameter("remember");
		Cookie cookie = new Cookie("id", request.getParameter("id"));
		// id 기억하기 클릭시
		/* remember라는 이름을 가진 파라미터를 login.jsp에서 가져오는 부분
		   이 파라미터는 체크 박스의 상태를 나타내며, 체크되어 있는 경우에는 값으로 
		   "store"가 전달될 것입니다. */
		if (check_value != null && check_value.equals("store")) {
			cookie.setMaxAge(2*60);
			response.addCookie(cookie); // 클라이언트로 쿠키값 전송
		} else {
			cookie.setMaxAge(0);
			response.addCookie(cookie); // 클라이언트로 쿠키값 전송
		}
	} else if (id.equals(inputid)) {
	%>
	<script>
		alert("비밀번호가 일치하지 않습니다.");
		history.back(); // 바로 그 전 단계로 되돌아간다.
	</script>
	<%
	} else {
	%>
	<script>
		alert("아이디가 일치하지 않습니다.");
		history.back(); // 바로 그 전 단계로 되돌아간다.
	</script>
	<%
	}
	%>
</body>
</html>
