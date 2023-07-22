<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>responsive</title>
<!-- @media: 미디어 쿼리는 CSS3에 도입된 CSS 기술 
	 미디어의 종류: 
	 1. Screen: 컴퓨터 스크린, 테블릿, 모바일 기기
	 2. print: 프린터
	 3. speech: 페이지를 읽어 주는 화면 낭독기
	 4. max-width: 최대 너비
	 5. min-width: 최소 너비
-->
<style>
	body {
		background-color: lightgreen;
	}
@media screen and (max-width: 600px) {
	body {
		background-color: lightblue;
	}
}

@media screen and (min-width: 601px) and (max-width: 900px) {
	body {
		background-color: lightgray;
	}
}
</style>
</head>
<body>
	<p>브라우저 사이즈가 최대 600px까지는 lightnlue<br>
	   601px~900px까지는 lightgray<br>
	   그 외는 lightgreen
	</p>
<script>
	window.onresize = function() {
		// window.innerWidth: 브라우저 화면의 너비
		// window.innerHeight: 브라우저 화면의 높이
		document.body.innerHTML = "window.innerWidth: " + window.innerWidth;
	}
</script>	
</body>
</html>
