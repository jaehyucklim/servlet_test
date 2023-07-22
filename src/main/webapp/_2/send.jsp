<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" %>
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
<div class="container">
  <h2>회원 정보</h2>
  <hr>
  <div>
    <p><label>아이디:</label> <%=session.getAttribute("id") %></p>
    <hr>
    <p><label>비밀번호:</label> <%=session.getAttribute("pass") %></p>
    <hr>
    <p><label>주민번호:</label> <%=session.getAttribute("jumin1") %>-<%=session.getAttribute("jumin2") %></p>
    <hr>
    <p><label>이메일:</label> <%=session.getAttribute("email") %>@<%=session.getAttribute("domain") %></p>
    <hr>
    <p><label>성별:</label> 
	<% String gender = (String) session.getAttribute("gender");
    	if (gender != null) {
      	  if (gender.equals("m")) {
          	  out.println("남성");
        	} else {
       	     out.println("여성");
       	 	}
   		}
	%>
	</p>
    <hr>
    <p class="hobbies">
      <label>취미:</label>
      <% String[] hobby = (String[]) session.getAttribute("hobby");
         if (hobby != null) {
           for (String h : hobby) {
             out.println("<span>" + h + "</span>");
           }
         }
      %>
    </p>
    <hr>
    <p><label>우편번호:</label> <%=session.getAttribute("post1") %></p>
    <hr>
    <p><label>주소:</label> <%=session.getAttribute("address") %></p>
    <hr>
    <p><label>자기소개:</label> <%=session.getAttribute("intro") %></p>
  </div>
</div>
</body>
</html>
