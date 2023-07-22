<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ page import="java.util.Enumeration" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>requestTest3</title>
<!-- ����ID: �����̳� ������ ������ ���� �� �����ϰ� ����� ������ �����ϱ� ���� ���(��Ű���{JSESSIONID}) -->
<link rel="stylesheet" 
	  href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>
	<div class="container">
		<h1>��Ű, URL/URI, ��û��Ŀ� ���õ� ���� ����</h1>
		<table class="table table-striped">
			<tr>
				<td>��Ű����</td>
				<%
					Cookie[] cookie = request.getCookies();
				if (cookie == null) {
				%>
				<td>��Ű�� �������� �ʽ��ϴ�.</td>
				<%
					} else {
						for (int i = 0; i < cookie.length; i++) {
				%>
				<td><%= cookie[i].getName()%>(<%= cookie[i].getValue()%>)
					%nbsp;%nbsp;</td>
				<% 
						} // for end
					} // else end
				%>
			</tr>
			<tr>
				<td>���� �����θ�</td>
				<td><%=request.getServerName()%></td>
			</tr>
			<tr>
				<td>���� ��Ʈ��ȣ</td>
				<td><%=request.getServerPort()%></td>
			</tr>
			<tr>
				<td>��û URL</td>
				<td><%=request.getRequestURL()%></td>
			</tr>
			<tr>
				<td>��û URI(Uniform Resource Identifier)</td>
				<td><%=request.getRequestURL()%></td>
			</tr>
			<tr>
				<td>��û ����</td>
				<td><%=request.getQueryString()%></td>
			</tr>
			<tr>
				<td>Ŭ���̾�Ʈ ȣ��Ʈ��</td>
				<td><%=request.getRemoteHost()%></td>
			</tr>
			<tr>
				<td>Ŭ���̾�Ʈ IP �ּ�</td>
				<td><%=request.getRemoteAddr()%></td>
			</tr>
				<tr>
				<td>��������</td>
				<td><%=request.getProtocol()%></td>
			</tr>
			<tr>
				<td>��û���</td>
				<td><%=request.getMethod()%></td>
			</tr>
			<tr>
				<td>���ؽ�Ʈ ���</td>
				<%-- ContextPath(���Ͽ��� Context�� �� ���ø����̼��� �ǹ�) --%>
				<td><%=request.getContextPath()%></td>
			</tr>
		</table>
	</div>
</body>
</html>
