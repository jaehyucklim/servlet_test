<%@ page language="java" contentType="text/html; charset=EUC-KR" 
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>after forward</title>
<%-- �׼� �±�: �±׸� �̿��ؼ� �ٸ� �������� ������ ������ �� �ֵ��� ������ ���
	 forward �׼��� ���� �������� �ٸ� �������� ��ȯ�� �� ����մϴ�. --%>
</head>
<body>
	<div>after forward</div>
	<%=request.getAttribute("forwardTest1")%>
</body>
</html>
