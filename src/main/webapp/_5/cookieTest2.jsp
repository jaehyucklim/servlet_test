<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Cookie Test2</title>
</head>
<body>
	<%
		String name = "";
		String value = "";
		
		// ��Ű ����� ���� ��Ű�� ���� �Ǿ� �ִ��� Ȯ��
		String cookie = request.getHeader("Cookie");
		
		if (cookie != null) {
			// ��Ű���� ��������(�迭)
			Cookie cookies[] = request.getCookies();
			
			// ��Ű �迭���� ��Ű �̸��� "name"�� ���� ã�Ƽ� ��Ű�� �̸��� �� ��������
			for (int i = 0; i < cookies.length; i++) {
				if (cookies[i].getName().equals("name")) {
					name = cookies[i].getName();
					value = cookies[i].getValue();
					}
				}
	%>
	<h2>��Ű �̸�: <%= name %></h2>	
	<h2>��Ű ��: <%= value %></h2>
	<%
		} else {
	%>
		  �����ϴ� ��Ű�� �����ϴ�.
	<%
		}
	%>	  
</body>
</html>
