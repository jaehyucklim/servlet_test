<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%-- Connection ��ü�� JNDI�� ����ϱ� ���� ��Ű�� import --%>	
<%@ page import = "java.util.*, _DB.Dept" %>	
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>ArrayList View</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
<style>
.container {
	width: 500px;
	margin-top: 3em
}

table, h4 {
	text-align: center
}
</style>
</head>
<body>
	<div class="container">
	<% 
		ArrayList<Dept> list = (ArrayList<Dept>) request.getAttribute("list");
		
		if(!list.isEmpty()) {
	%>
		<table class="table">
			<thead>
				<tr>
					<th>DEPTNO</th>
					<th>DNAME</th>
					<th>LOC</th>
				</tr>
			</thead>
			<tbody>
				<%
					for(Dept dept : list) {
				%>
				<tr>	
					<td><%=dept.getDeptno() %></td>
					<td><%=dept.getDname() %></td>
					<td><%=dept.getLoc() %></td>
				</tr>
				<%
					}
				%>
			</tbody>
		</table>
		<%
			} else {
				out.println("<h4>��ȸ�� �����Ͱ� �����ϴ�.</h4>");
			}
		%>
	</div>
</body>
</html>
