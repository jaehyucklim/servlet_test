<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>

<%-- ǥ����(Expression): 
	 (1) ���� �Ǵ� ��ũ��Ʈ�� �±׿��� ����� ������ �޼ҵ��� ���ϰ��� ����ϱ� ���� ���Ǵ� ���
	 (2) �� �����̳ʿ� ���� _jspService()�޼ҵ� ���ο��� ��� ��ü�� print()�޼ҵ� ��ȣ�ȿ�
	 ��°�� ���Ƿ� scriptlet�� �޸� �����ݷ�(';')�� ����ؼ��� �ȵ˴ϴ�. 
	 ����: <%= ���� %>
		  <%= �������� �ִ� �޼ҵ� %>
		  <%= ���� %>
--%>

<%! // 1���� 100������ ���� ���ϴ� sum() �޼��� �ڼ����
	public int sum() {
		int total = 0;
		for (int i = 1; i <= 100; i++) {
			total += i;
		}
		return total;
	}
%>
<%
	// ������ �Ҵ��մϴ�.
	String str = "1���� 100������ ��";
%>
<!DOCTYPE html>
<html>
<head>
<title>Expression Test</title>
<style>
	span {color: red}
</style>
<meta charset="EUC-KR">
</head>
<body>
	<h2><%=str%>�� <span><%=sum()%></span> �Դϴ�.</h2>
	<br>
	<h2><%=str%>�� 3�� ���ϸ� <span><%=sum() * 3 %></span> �Դϴ�.</h2>
	<br>
	<h2><%=str%>�� 1000���� ������ <span><%=sum() / 1000.0 %></span> �Դϴ�.</h2>
</body>
</html>
