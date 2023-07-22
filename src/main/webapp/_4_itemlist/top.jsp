<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
  <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.1/dist/jquery.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
</head>
<style>
.navbar {
    background-color: #2db31e!important;
}

.navbar .navbar-nav .nav-link {
    color: rgb(255,255,255);
}
</style>
<body>
<nav class="navbar navbar-expand-sm navbar-dark">
  <!-- Brand -->
  <a class="navbar-brand" href="#">액션태그</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse"
  data-target="#collapsibleNavbar">
  <span class="navbar-toggler-icon"></span>
  </button>
  
  
<div class="collapse navbar-collapse flex-row-reverse" id="collapsibleNavbar">
	<ul class="navbar-nav">
	<%
		String id = (String) session.getAttribute("id");
		if (id != null && !id.equals("")) {
	%>
	<li class="nav-item"><a class="nav-link"><%=id%>님이 로그인 되었습니다.</a></li>
	<li class="nav-item"><a class="nav-link" href="logout.jsp">로그아웃</a></li>
	
	<%
		} else {
	%>
	<li class="nav-item"><a class="nav-link" href="login.jsp">로그인</a></li>
	<li class="nav-item"><a class="nav-link" href="logout.jsp">로그아웃</a></li>
	<%
		}
	%>
	</ul>
</div>
</nav>
</body>
</html>
