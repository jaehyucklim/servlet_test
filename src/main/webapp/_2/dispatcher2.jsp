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
<!-- request ��ü�� getAttribute()�޼ҵ带 �̿��ؼ� �Ӽ� "food"�� ���� �����ɴϴ�. -->
<%-- jsp���� <%=�� or ���� or ���� %>�� '�� or ���� or ����'�� ����϶�� �ǹ��Դϴ�. --%>
	<div>
		request �Ӽ� food ��: <%=request.getAttribute("food") %>
		<br>
		request �Ӽ� name ��: <%=request.getAttribute("name") %>
	</div>
	<p>
		��û �ּ�: <%=request.getRequestURL() %>
	</p>
</body>
</html>