<%@ page language="java" contentType="text/html; charset=EUC-KR" 
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>�׼� �±� - forward</title>
<%-- �׼� �±�: �±׸� �̿��ؼ� �ٸ� �������� ������ ������ �� �ֵ��� ������ ���
	 forward �׼��� ���� �������� �ٸ� �������� ��ȯ�� �� ����մϴ�. --%>
</head>
<body>
	<%
		request.setAttribute("food", "����");
	%>
	<jsp:forward page="forwardTest2.jsp"/>
</body>
</html>
