<%@ page language="java" contentType="text/html; charset=EUC-KR" 
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Include Action Test </title>
<%-- include �׼� �±�: page�� �Ӽ��� ������ ó���� ������ ó�� ����� ���� �������� �����ϴ� ��� 

	 include direct�� ������: ��Ƽ��� ���� ������ ������ include ���þ�� ������ �������� 
	 �ҽ� �ڵ尡 �״�� ���� �Ǿ� ���� ������ include �׼� �±״� page �Ӽ��� �������� ���� ����� 
	 ���� ��ġ�� ���Խ�ŵ�ϴ�. --%>
</head>
<body>
	<h2>Include Action Test ����</h2>
	<jsp:include page="include1.jsp"></jsp:include>
	<br>
	<%-- <%=alias %> --%> <%-- ���� �߻�(�ҽ��� ��°�� ���� ���� �ƴ϶� ����� �´�) --%>
	<h2>Include Action Test ��</h2>
</body>
</html>
