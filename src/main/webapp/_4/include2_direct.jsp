<%@ page language="java" contentType="text/html; charset=EUC-KR" 
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Include Directive Text </title>
<%-- include �׼� �±�: page�� �Ӽ��� ������ ó���� ������ ó�� ����� ���� �������� �����ϴ� ��� 

	 include direct�� ������: ��Ƽ��� ���� ������ ������ include ���þ�� ������ �������� 
	 �ҽ� �ڵ尡 �״�� ���� �Ǿ� ���� ������ include �׼� �±״� page �Ӽ��� �������� ���� ����� 
	 ���� ��ġ�� ���Խ�ŵ�ϴ�. --%>
</head>
<body>
	<h2>include ��Ƽ�� �׽�Ʈ ����</h2>
	<%@include file='include1.jsp' %>
	<br>
	<%=alias %> <%-- �ҽ��� ��°�� �´�(alias ���� ����) --%>
	<h2>include ��Ƽ�� �׽�Ʈ ��</h2>
</body>
</html>
