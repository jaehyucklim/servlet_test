<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%-- webapp ���� �Ʒ� upload ���� ���� �� ���� --%>

<%-- ���ε��ϱ� ���� MultipartRequest ��ü�� import�մϴ�. --%>
<%@ page import="com.oreilly.servlet.MultipartRequest" %>

<%-- ���� �̸� �ߺ� ó���� �ϱ� ����  DefaultFileRenamePolicy ��ü�� import �մϴ�.--%>
<%@ page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy" %>

<% 
	String uploadPath = application.getRealPath("upload");
	out.print("upload ���: " + uploadPath);
	
	int size = 10*1024*1024; // 10mb
	String name=""; String subject=""; String systemName1="";
	String systemName2=""; String origfileName1=""; String origfileName2="";
	
	try {
		/* ���ε� ����ϴ� �κ�
		1. ù ��° ����(request): form���� ������ ���� ��� ���� request��ü�� ����
		2. �� ��° ����(uploadPath): ���ε�� ������ ��ġ
		3. ù ��° ����(size): ���ε� �� ũ��
		4. ù ��° ����("EUC-KR"): ���� �̸��� �ѱ��� �κ� ó��
		5. ù ��° ����: �Ȱ��� ���� ���ε�� ó�� */
		MultipartRequest multi = new MultipartRequest(
								 request,
								 uploadPath,
								 size,
								 "EUC-KR",
								 new DefaultFileRenamePolicy());
		name = multi.getParameter("name");
		subject = multi.getParameter("subject");
		
		systemName1 = multi.getFilesystemName("fileName1");
		origfileName1 = multi.getOriginalFileName("fileName1");
				
		systemName2 = multi.getFilesystemName("fileName2");
		origfileName2 = multi.getOriginalFileName("fileName2");
	} catch(Exception e) {
		e.printStackTrace();
		out.print("���� �Դϴ�.");
	}
%>
<html>
<head>
<title>���� ���ε�</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
</head>
<body>
	<div class="container">
		<form action="fileCheck2.jsp" name="filecheck" method="post">
			<input type="hidden" name="name" value="<%=name%>">
			<input type="hidden" name="subject" value="<%=subject%>">
			<input type="hidden" name="systemName1" value="<%=systemName1%>">
			<input type="hidden" name="systemName2" value="<%=systemName2%>">
			<input type="hidden" name="origfileName1" value="<%=origfileName1%>">
			<input type="hidden" name="origfileName2" value="<%=origfileName2%>">
			<input type="hidden" name="uploadPath" value="<%=uploadPath%>">
			<input type="submit" name="���ε� Ȯ�� �� �ٿ�ε� ������ �̵�" class="btn btn-info">
		</form>
	</div>
</body>
</html>
