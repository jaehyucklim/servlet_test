<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%-- webapp 폴더 아래 upload 폴더 생성 후 실행 --%>
<%-- 일반 파라미터를 전송할 때 사용하는 인코딩과 파일을 업로드 할 때 사용하는 인코딩은 다릅니다.
	 스트림 기반의 전송 방식인 POST방식은 다음의 두 가지 인코딩 방식에 따라서 전송하는 데이터 형식이 달라집니다.
	 1. application/x-www-form-urlencoded 
	 2. multipart/form-data
	 
	 지금까지의 예제들을 1번 인코딩을 사용해서 데이터를 전송
	 파일을 업로드 하기 우해서는 2번 인코딩을 사용해야 합니다.
	 form 태그의 enctype 속성 값을 multipart/form-data로 지정
	 (POST방식)--%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<meta name="viewport" content="width=deviced-width, initial-sacle=1">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
<title>FileUpload form</title>
<style>
.container {
	width: 500px;
	margin-top: 3em;
}

.input-group-text {
	width: 74px;
}
</style>
<script src="https://code.jquery.com/jquery-3.7.0.min.js"></script>
</head>
<body>
	<div class="container">
		<%-- 파일을 업로드하기 위해서 enctype 속성을 "multipart/form-data"로 설정--%>
		<form action="fileUpload2.jsp" method="post" enctype="multipart/form-data">
			<p class="h4 mb-4 text-center">파일 업로드 form</p>
			<div class="input-group mb-3">
				<div class="input-group-prepend">
					<span class="input-group-text">작성자</span>
				</div>
				<input type="text" class="form-control" name="name">
			</div>

			<div class="input-group mb-3">
				<div class="input-group-prepend">
					<span class="input-group-text">제 목</span>
				</div>
				<input type="text" class="form-control" name="subject">
			</div>

			<div class="input-group">
				<!-- file 선택 및 전송 -->
				<input type="file" class="form-control-file border" name="fileName1">
			</div>
			
			<div class="input-group">
				<!-- file 선택 및 전송 -->
				<input type="file" class="form-control-file border" name="fileName2">
			</div>
			<button type="submit" class="btn btn-info my-4 btn-block">submit</button>
		</form>
	</div>
</body>
</html>
