<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>

<!-- ����(declaration): 
	 (1) JSP���������� �ڹ� �ڵ��� ��� ����(�ʵ�)�� �޼ҵ带 �����ϱ� ���� ��� 
	 (2) ������ ����� ����� ������ JSP�������� ��� ��ġ������ �ش� ������ �����ϴ� ���� �����մϴ�.
	 	 D:\workspace\_2023_05_02\.metadata\.plugins\org.eclipse.wst.server.core
	 	 \tmp0\work\Catalina\localhost\JSP\org\apache\jsp\_005f3
	 	 �ȿ� declarationTest_jsp.java �� declarationTest_jsp.class ���� ����
-->

<h1><%=getStr()%></h1>
<%! // �ڼ��� ����: <%! % >��
	private String getStr() {
		str += "�׽�Ʈ�Դϴ�.";
		return str;
	}

	private String str = "���� ";
%>

