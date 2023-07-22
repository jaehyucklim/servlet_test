<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>scope.jsp</title>
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
		request �Ӽ� food ��: <%=request.getAttribute("food") %>
		<br>
		<!-- ��Ŭ���̾�Ʈ(���� ��ü)(��������) ���� ���� �α���(����) �ʿ�� -->
		session �Ӽ� food ��: <%=session.getAttribute("food") %>
		<br>
		<!-- ��Ŭ���̾�Ʈ(��ü) ���� ���� �α���(����) �ʿ���� �׻� �� �� ������ �ٴԡ� -->
		ServletContext �Ӽ� food ��: <%=application.getAttribute("food") %>
	</div>
	<p>
		�����ִ� ������ �ּ�: <%=request.getRequestURL() %>
	</p>
</body>
</html>