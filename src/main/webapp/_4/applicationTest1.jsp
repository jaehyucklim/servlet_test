<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ page import="java.util.Enumeration"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>application Test - �ʱ�ȭ �Ķ���� �о����</title>
<!-- ����ID: �����̳� ������ ������ ���� �� �����ϰ� ����� ������ �����ϱ� ���� ���(��Ű���{JSESSIONID}) -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<%-- �ʱ�ȭ �Ķ���ʹ� web.sml�� �ۼ�
	 1. getInitParameterNames(): �� ���ø����̼� �ʱ�ȭ �Ķ������ �̸� ����� �����մϴ�.
	 2. getInitParameter(name): �̸��� Name�� �� ���ø����̼� �ʱ�ȭ �Ķ������ ���� �о�ɴϴ�.
	 						    �������� ���� ��� null�� �����մϴ�. --%>
<body>
	<h2>�ʱ�ȭ �Ķ���� ���</h2>
	<ul>
		<%
			Enumeration<String> initParamEnum = application.getInitParameterNames();
			while (initParamEnum.hasMoreElements()) {
				String initParamName = initParamEnum.nextElement();
		%>
			<li>
				<%=initParamName%> = 
				<%=application.getInitParameter(initParamName) %>
			</li>
		<%
			}
		%>	
	</ul>
</body>
</html>
