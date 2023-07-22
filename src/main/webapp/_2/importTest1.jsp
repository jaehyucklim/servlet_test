<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" %>
    
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>import 속성 테스트</title>
<link href="css/ch03-5.css" type="text/css" rel="stylesheet">
</head>
<body>
<h1> 현재 시간은 <%=new SimpleDateFormat().format(new Date()) %> 입니다.</h1>
</body>
</html>