<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" %>
<%@ page import="java.util.Calendar" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>dispatcher.jsp</title>
<style>
	body {background: pink;}
	div {color: red}
	p {color: green}
</style>
</head>
<body>
<!-- request��ü�� getParameter()�޼ҵ带 �̿��ؼ� �Ķ���� "food"�� ���� �����ɴϴ�. -->
<%-- jsp���� <%=�� or ���� or ���� %>�� '�� or ���� or ����'�� ����϶�� �ǹ��Դϴ�. --%>
	<div>
		request �Ķ���� ��: <%=request.getParameter("food") %>
	</div>
	<p>
		�����ִ� ������ �ּ�: <%=request.getRequestURL() %>
	</p>
</body>
</html>