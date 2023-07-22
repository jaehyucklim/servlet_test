<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%-- webapp ���� �Ʒ� upload ���� ���� �� ���� --%>
<%-- �Ϲ� �Ķ���͸� ������ �� ����ϴ� ���ڵ��� ������ ���ε� �� �� ����ϴ� ���ڵ��� �ٸ��ϴ�.
	 ��Ʈ�� ����� ���� ����� POST����� ������ �� ���� ���ڵ� ��Ŀ� ���� �����ϴ� ������ ������ �޶����ϴ�.
	 1. application/x-www-form-urlencoded 
	 2. multipart/form-data
	 
	 ���ݱ����� �������� 1�� ���ڵ��� ����ؼ� �����͸� ����
	 ������ ���ε� �ϱ� ���ؼ��� 2�� ���ڵ��� ����ؾ� �մϴ�.
	 form �±��� enctype �Ӽ� ���� multipart/form-data�� ����
	 (POST���)--%>
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
		<%-- ������ ���ε��ϱ� ���ؼ� enctype �Ӽ��� "multipart/form-data"�� ����--%>
		<form action="fileUpload2.jsp" method="post" enctype="multipart/form-data">
			<p class="h4 mb-4 text-center">���� ���ε� form</p>
			<div class="input-group mb-3">
				<div class="input-group-prepend">
					<span class="input-group-text">�ۼ���</span>
				</div>
				<input type="text" class="form-control" name="name">
			</div>

			<div class="input-group mb-3">
				<div class="input-group-prepend">
					<span class="input-group-text">�� ��</span>
				</div>
				<input type="text" class="form-control" name="subject">
			</div>

			<div class="input-group">
				<!-- file ���� �� ���� -->
				<input type="file" class="form-control-file border" name="fileName1">
			</div>
			
			<div class="input-group">
				<!-- file ���� �� ���� -->
				<input type="file" class="form-control-file border" name="fileName2">
			</div>
			<button type="submit" class="btn btn-info my-4 btn-block">submit</button>
		</form>
	</div>
</body>
</html>
