<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ page import="java.util.Enumeration"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>error404</title>
<style>
	body {
		background-color: pink
	}
	@keyframes colorChange {
		0% { color: red; }
		25% {color: yellow;}
		50% { color: blue; }
		75% { color: gray; }
		100% { color: green; }
	}

	span {
		font-weight: bold;
		font-size: 40px;
		animation: colorChange 5s infinite;
	}
</style>
</head>
<%-- �ʱ�ȭ �Ķ���ʹ� web.xml�� �ۼ�
	 1. getInitParameterNames(): �� ���ø����̼� �ʱ�ȭ �Ķ������ �̸� ����� �����մϴ�.
	 2. getInitParameter(name): �̸��� Name�� �� ���ø����̼� �ʱ�ȭ �Ķ������ ���� �о�ɴϴ�.
	 						    �������� ���� ��� null�� �����մϴ�. --%>
<body>
		<span>404 error</span>
		<br><br>
		<strong>��û�� �������� �������� �ʽ��ϴ�.</strong>
		<br><br>
		�ּҸ� �ùٸ��� �Է��ߴ��� Ȯ���غ��ñ� �ٶ��ϴ�.
</body>
</html>
