<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>request �׽�Ʈ ���</title>
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
		<h3>Request �׽�Ʈ ���2</h3>
		<table class="table">
		
			<tr>
				<td>�̸�</td>
				<td><%= request.getParameter("name") %></td>
			</tr>
			<tr>
				<td>����</td>
				<td>
				<%
				if (request.getParameter("gender").equals("male")) {
					out.print("����");
				} else {
					out.print("����");
				}
				%>
				</td>
			</tr>
			<tr>
				<td>���</td>
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
