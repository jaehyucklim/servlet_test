<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>회원 정보</title>
<style>
<!-- 생략 -->
</style>
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
        alert("ID: <%=id%> 로그인");
        location.href = "templatetest.jsp";
    </script>
<%
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
