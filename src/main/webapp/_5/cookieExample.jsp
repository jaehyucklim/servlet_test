<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Cookie</title>
<style>
	body {
		font-family: Arial, sans-serif;
		background: #f2f2f2;
	}

	.container {
		max-width: 500px;
		margin: 0 auto;
		background: #fff;
		padding: 20px;
		border-radius: 5px;
	}


</style>
<script src="https://code.jquery.com/jquery-3.7.0.min.js"></script>
</head>
<body>
	<div class="container">
		<%
			String language = "korean";
		
			String cookie = request.getHeader("Cookie");
		
			if (cookie != null) {
				Cookie cookies[] = request.getCookies();
			
				for (int i = 0; i < cookies.length; i++) {
					if (cookies[i].getName().equals("language1")) {
						language = cookies[i].getValue();
					}
				}
			}
		
			if (language.equals("korean")) {
		%>
		<h3>안녕하세요. 이것은 쿠키 예제입니다.</h3>
		<%
			} else {
		%>
		<h3>Hello. This is an example of cookie.</h3>
		<%
			}
		%>
		<form action="cookieExample2.jsp" method="post">
			<fieldset>
				<label for="korean">한국어</label>
				<input type="radio" name="language" value="korean" id="korean">
				<label for="english">영어</label>
				<input type="radio" name="language" value="english" id="english">
				<input type="submit" value="설정">
			</fieldset>
		</form>
	</div>
</body>
<script>
	$(document).ready(function() {
		const id = "#<%=language%>";
		$(id).prop('checked', true);
	});
</script>
</html>
