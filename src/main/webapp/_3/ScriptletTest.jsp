<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>

<%-- -- ��ũ��Ʈ��(Scriptlet): 
	 (1) HTML �ڵ�� �� �κ��� �Ϲ� HTML ����ó�� �״�� ����Ͽ� �ڹ� �ڵ��
	 �̷���� ���� �κ��� <%. . .%>�� ǥ���Ǵ� ��ũ��Ʈ�� �±׸� ����Ͽ� �����մϴ�.
	 (2) JSP������ ����� �� �� �����̳ʿ� ���� JSP �ڵ尡 ���� Ŭ������ ��ȯ�˴ϴ�.
	 �̶� �Ϲ� ���� Ŭ������ service() �޼ҵ忡 �ش��ϴ� _jspService()�޼ҵ尡
	 �� �����̳ʿ� ���� �ڵ����� �����ǵǸ� �� �޼ҵ��� ���ο� JSP�ڵ尡 ���� �˴ϴ�.
	 �̷��� �� �����̳ʿ� ���� ���� Ŭ������ �����Ǹ� �ν��Ͻ��� �����尡 �����ǰ� 
	 _jspService()�޼ҵ忡 ���� ���� �������� ������� Ŭ���̾�Ʈ�� ���۵Ǿ�
	 ��� �������� ǥ�õ˴ϴ�.
	 D:\workspace\_2023_05_02\.metadata\.plugins\org.eclipse.wst.server.core
	 \tmp0\work\Catalina\localhost\JSP\org\apache\jsp\_005f3
	 �ȿ� ScriptletTest_jsp.java �� ScriptletTest_jsp.class ���� ����
--%>

<%@ page import="java.util.Calendar" %>
<!DOCTYPE html>
<html>
<head>
<%
	Calendar c = Calendar.getInstance();
	int hour = c.get(Calendar.HOUR_OF_DAY);
	int minute = c.get(Calendar.MINUTE);
	int second = c.get(Calendar.SECOND);
%>
<meta charset="EUC-KR">
<title>Scriptlet Test</title>
</head>
<body>
 <h1>���� �ð��� <%=hour %>�� <%=minute %>�� <%=second %>�� �Դϴ�.</h1>
</body>
</html>
