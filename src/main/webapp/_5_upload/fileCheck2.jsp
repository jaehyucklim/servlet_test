<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<html>
<head>
<title>���� �ٿ�ε� form</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
</head>
<% request.setCharacterEncoding("euc-kr"); %>
<body>
	<div class="container">
		<table class="table table-bordered">
			<tr>
				<td>�ۼ���</td>
				<td><%= request.getParameter("name") %></td>
			</tr>
			<tr>
				<td>����</td>
				<td><%= request.getParameter("subject") %></td>
			</tr>
			<tr>
				<td>���ϸ�1</td>
				<td>
					<a href="<%=request.getContextPath()%>/down?file_name=
					<%=request.getParameter("systemName1")%>">
					<%=request.getParameter("origfileName1")%></a>
				</td>
			</tr>
			<tr>
				<td>���ϸ�2</td>
				<td>
					<a href="<%=request.getContextPath()%>/down?file_name=
					<%=request.getParameter("systemName2")%>">
					<%=request.getParameter("origfileName2")%></a>
				</td>
			</tr>
			<tr>
				<td>uploadPath</td>
				<td><%= request.getParameter("uploadPath") %></td>
			</tr>
		</table>
	</div>
</body>
</html>
