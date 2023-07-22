<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%-- Connection 객체와 JNDI를 사용하기 위한 패키지 import --%>	
<%@ page import = "java.util.*, _DB.Emp" %>	
<!DOCTYPE html>
<html>
<head>
 <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.4/dist/jquery.slim.min.js"></script>
 <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<meta charset="EUC-KR">
<title>ArrayList View</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
<style>
.container {
	width: 1000px;
	margin-top: 3em
}

table, h4 {
	text-align: center
}
</style>
</head>
<body>
	<div class="container">
	<p>검색어를 입력하세요.</p>  
  	<input class="form-control" id="myInput" type="search" placeholder="Search..">
  	<br>
	<% 
		ArrayList<Emp> list = (ArrayList<Emp>) request.getAttribute("list");
		
		if(!list.isEmpty()) {
	%>
		<table class="table">
			<thead>
				<tr>
					<th>사원번호</th>
					<th>사원이름</th>
					<th>직급</th>
					<th>매니저</th>
					<th>입사일자</th>
					<th>급여</th>
					<th>커미션</th>
					<th>부서번호</th>
				</tr>
			</thead>
			<tbody id="myTable">
				<%
					for(Emp emp : list) {
				%>
				<tr>	
					<td><%=emp.getEmpno() %></td>
					<td><%=emp.getEname() %></td>
					<td><%=emp.getJob() %></td>
					<td><%=emp.getMgr() %></td>
					<td><%=emp.getHiredate() %></td>
					<td><%=emp.getSal() %></td>
					<td><%=emp.getComm() %></td>
					<td><%=emp.getDeptno() %></td>
				</tr>
				<%
					}
				%>
			</tbody>
		</table>
		<%
			} else {
				out.println("<h4>조회된 데이터가 없습니다.</h4>");
			}
		%>
	</div>
	<script>
$(document).ready(function(){
  $("#myInput").on("keyup", function() {
    var value = $(this).val().toLowerCase();
    $("#myTable tr").each(function() {
    	console.log($(this).text().toLowerCase().indexOf(value) > -1)
      //toggle(true): 선택한 요소를 보이도록 설정하는 메소드
   	  //toggle(false): 선택한 요소를 style="display: none;" 속성이 추가되어 보이지 않도록 합니다.
      $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
    });
  });
});
</script>
</body>
</html>
