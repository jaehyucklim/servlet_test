<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Cookie Test</title>
</head>
<body>
	<%
		// ��Ű ����
		// "name": ��Ű �̸�, "hong": ��Ű ��
		Cookie cookie = new Cookie("name", "hong");
		
		cookie.setMaxAge(6); // ��Ű ���� �ð�(6��)
		response.addCookie(cookie); // ������ ��Ű�� Ŭ���̾�Ʈ�� ����(from server)
	%>
	<h2>
		��Ű �̸�: <%=cookie.getName()%>
	</h2>
	<h2>
		��Ű ��: <%=cookie.getValue()%>
	</h2>
	<h2>
		��Ű �����ð�: <%=cookie.getMaxAge()%>s
		(�� �ð��� ���� �� �Ʒ��� anchor Ŭ��)
	</h2>
	<a href="cookieTest2.jsp">��Ű �� �ҷ�����</a>

</body>
</html>
