<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%	
	// ��Ű ��ü ����
	// ������ ��Ű(��ü)�� language1 �̶�� �̸����� language ���� �� ����
	Cookie cookie = new Cookie("language1", request.getParameter("language"));
	
	// ������ ���� �� ��Ű�� ����
	// �Ǵ� ��Ű setMaxAge�� 0���� �ָ� ��Ű ����
	cookie.setMaxAge(60 * 60 * 24);
	
	// Ŭ���̾�Ʈ�� ��Ű���� ����(from server)
	response.addCookie(cookie);
%>
<script>
	location.href="cookieExample.jsp";
</script>
