<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>회원 정보</title>
<style>
body {
  background: #f2f2f2;
  font-family: Arial, sans-serif;
}

.container {
  max-width: 500px;
  margin: 0 auto;
  background: #fff;
  padding: 20px;
  border-radius: 5px;
  box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
}

.container h2 {
  color: #333;
  text-align: center;
}

.container hr {
  margin-top: 10px;
  margin-bottom: 10px;
  border: 0;
  border-top: 1px solid #ccc;
}

.container label {
  font-weight: bold;
  color: #555;
}

.container p {
  margin: 5px 0;
}

.container .hobbies {
  margin-top: 5px;
}

.container .hobbies label {
  margin-right: 10px;
}

.container .hobbies span {
  color: #555;
}

</style>
</head>
<body>
   <% 	 // session.removeAttribute("id") "id" 속성 삭제
   		session.invalidate(); // 세션의 모든 속성 삭제
   %>
   <script>
        location.href = "templatetest.jsp";
        alert('로그아웃 되었습니다.')
    </script>
</body>
</html>
