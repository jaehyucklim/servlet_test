<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>request 테스트 결과</title>
<style>
	.container {
		width: 70%;
		margin-top: 30px;
	}

	table {
		width: 100%;
		border-collapse: collapse;
	}

	th, td {
		padding: 8px;
		border: 1px solid #ddd;
		text-align: left;
	}

	th {
		background-color: #f2f2f2;
	}
</style>
</head>
<body>
<% request.setCharacterEncoding("euc-kr"); %>
	<div class="container">
		<h3>Request 테스트 결과2</h3>
		<table class="table">
		
			<tr>
				<td>이름</td>
				<td><%= request.getParameter("name") %></td>
			</tr>
			<tr>
				<td>성별</td>
				<td>
				<%
				if (request.getParameter("gender").equals("male")) {
					out.print("남자");
				} else {
					out.print("여자");
				}
				%>
				</td>
			</tr>
			<tr>
				<td>취미</td>
				<td>
				<%
				String[] hobbies = request.getParameterValues("hobby");
				for(String h : hobbies) {
			 	out.print(h + "  ");
				}
				%>
				</td>
			</tr>
		</table>
	</div>

</body>
</html>
