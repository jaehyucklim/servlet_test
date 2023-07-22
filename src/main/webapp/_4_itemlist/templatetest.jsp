<%@ page language="java" contentType="text/html; charset=EUC-KR" 
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>templatetest.jsp</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
  <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.1/dist/jquery.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
<style>
footer {
	position: fixed;
	bottom: 0px;
	height: 3rem;
	background-color: #ccc;
	width: 100%;
	text-align: center;
	line-height: 3rem;
}
</style>  
</head>
<%
	String pagefile = request.getParameter("page");
	if (pagefile == null) { // 처음에는 page 값이 없으므로 
		pagefile = "newitem"; // 초기값 설정
	}
%>
<body>
	<header>
		<div class="jumbotron text-center" style="margin-bottom: 0">
			<h1>상품목록</h1>
		</div>
	</header>
	<nav>
		<jsp:include page="top.jsp" /><br><br>
	</nav>
	<div class="container" style="margin-top: 10px">
		<div class="row">
			<div class="col-sm-4">
				<aside>
					<jsp:include page="left.jsp" />
				</aside>
			</div>	
			<div class="col-sm-8" style="margin-bottom: 5rem">
				<section>
					<jsp:include page='<%=pagefile + ".jsp"%>' />
				</section>
			</div>
		</div>
	</div>
	
	<footer>
		<jsp:include page="bottom.jsp" />
	</footer>
	
	<script>
		const pagefile = '<%=pagefile%>'
		const filelist = ["newitem", "bestitem", "useditem"];
		
		for (let index = 0; index < filelist.length; index++) {
			if(pagefile==filelist[index]) { // 클래스와 이름이 같으면 active
				$('.nav-pills > .nav-item > .nav-link').eq(index).addClass('active');
			} else {
				$('.nav-pills > .nav-item > .nav-link').eq(index).removeClass('active');
			}
		}
	</script>
</body>
</html>
