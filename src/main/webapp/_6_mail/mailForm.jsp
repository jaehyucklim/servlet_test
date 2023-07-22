<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<meta name="viewport" content="width=deviced-width, initial-sacle=1">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.2/dist/css/bootstrap.min.css">
<title></title>
<style>
.container {
	width: 50%;
}

label {
	width: 50%
}

fieldset {
	border: 1px solid gray;
	padding: 50px
}

legend {
	text-align: center;
	width: auto;
	padding: 10px;
}

.input-group-text {
	width: 74px;
}
</style>
<script src="https://code.jquery.com/jquery-3.7.0.min.js"></script>
</head>
<body>
	<div class="container mt-5">
		<form action="mailSend.jsp" method="post" class="form-horizontal">
			<fieldset>
				<legend>
					<strong>���� �ۼ�</strong>
				</legend>

				<div class="form-group">
					<label class="control-lable" for="sender">������ �ּ�<font color='red'>*</font></label>
						<input type="text" name="sender" id="sender" class="form-control"
							   placeholder="������ ���� �̸��� �ּҸ� �Է��ϼ���."
							    value="<%=_mail.java_mail.naverid %>" required>
				</div>
				
				<div class="form-group">
					<label class="control-lable" for="receiver">�޴� �ּ�<font color='red'>*</font></label>
						<input type="email" name="receiver" id="receiver" class="form-control"
							   placeholder="�޴� ���� �̸��� �ּҸ� �Է��ϼ���." required>
				</div>
				
				<div class="form-group">
					<label class="control-lable" for="subject">���� ����<font color='red'>*</font></label>
						<input type="text" name="subject" id="subject" class="form-control"
							   placeholder="�̸����� ������ �Է��ϼ���." required>
				</div>
				
				<div class="form-group">
					<label class="control-lable" for="content">���� �Է�<font color='red'>*</font></label>
						<textarea name="content" id="content" class="form-control" rows="5" required></textarea>
				</div>
				<div class="form-action">
					<input type="submit" class="btn btn-primary" value="���Ϻ�����">
					<input type="reset" class="btn btn-danger" value="�ٽ��ۼ�">
				</div>
			</fieldset>
		</form>
	</div>
</body>
</html>
