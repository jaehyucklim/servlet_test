<%@ page language="java" contentType="text/html; charset=EUC-KR" 
	pageEncoding="EUC-KR"%>

<ul class="nav nav-pills flex-column">
	<li class="nav-item">			<!-- templatetest.jsp페이지의 매개변수 page 가져오기 -->
		<a class="nav-link active" href="templatetest.jsp?page=newitem">신상품</a>
	</li>							<!-- nav 클릭시 마다 -->
	<li class="nav-item">
		<a class="nav-link active" href="templatetest.jsp?page=bestitem">인기상품</a>
	</li>
	<li class="nav-item">
		<a class="nav-link active" href="templatetest.jsp?page=useditem">중고상품</a>
	</li>
</ul>
