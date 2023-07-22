<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%-- webapp 폴더 아래 upload 폴더 생성 후 실행 --%>

<%-- 업로드하기 위해 MultipartRequest 객체를 import합니다. --%>
<%@ page import="com.oreilly.servlet.MultipartRequest" %>

<%-- 파일 이름 중복 처리를 하기 위해  DefaultFileRenamePolicy 객체를 import 합니다.--%>
<%@ page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy" %>

<% 
	String uploadPath = application.getRealPath("upload");
	out.print("upload 경로: " + uploadPath);
	
	int size = 10*1024*1024; // 10mb
	String name=""; String subject=""; String systemName1="";
	String systemName2=""; String origfileName1=""; String origfileName2="";
	
	try {
		/* 업로드 담당하는 부분
		1. 첫 번째 인자(request): form에서 가져온 값을 얻기 위해 request객체를 전달
		2. 두 번째 인자(uploadPath): 업로드될 파일의 위치
		3. 첫 번째 인자(size): 업로드 할 크기
		4. 첫 번째 인자("EUC-KR"): 파일 이름이 한글인 부분 처리
		5. 첫 번째 인자: 똑같은 파일 업로드시 처리 */
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
		out.print("에러 입니다.");
	}
%>
<html>
<head>
<title>파일 업로드</title>
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
			<input type="submit" name="업로드 확인 및 다운로드 페이지 이동" class="btn btn-info">
		</form>
	</div>
</body>
</html>
