<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>application Test - �ʱ�ȭ �Ķ���� �о����</title>
<style>
	div {background: <%=application.getInitParameter("color")%>}
</style>
</head>
<%-- �ʱ�ȭ �Ķ���ʹ� web.sml�� �ۼ�
	 1. getInitParameterNames(): �� ���ø����̼� �ʱ�ȭ �Ķ������ �̸� ����� �����մϴ�.
	 2. getInitParameter(name): �̸��� Name�� �� ���ø����̼� �ʱ�ȭ �Ķ������ ���� �о�ɴϴ�.
	 						    �������� ���� ��� null�� �����մϴ�. --%>
<body>
	<h2>web.xml���� ������ �������� ����</h2>
	
	<div>which color i am ?</div>
</body>
</html>
