<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>request �׽�Ʈ</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-3.7.0.min.js"></script>
<script>
	$(function() {
		$("form").submit(function() {
			let selected = $("input:radio:checked").length;
			if(selected < 1) {
				alert('������ ������ �ּ���');
				return false;
			}
			selected = $("input:checkbox:checked").length;
			if(selected < 1) {
				alert('��̸� �Ѱ� �̻� ������ �ּ���');
				return false;
			}
		})
	})
</script>
<style>
	.comntainer {width: 70%; margin-top: 30px;}
	h3{text-align: center}
</style>
</head>
<body>
	<div class="container">
		<h3>Request �׽�Ʈ</h3>
		
		<form action="requestTest2.jsp" method="post">
			<table class="table">
				<tr>
					<td>�̸�</td>
					<td><input type="text" name="name" class="form-control" required></td>
				</tr>
				<tr>
					<td>����</td>
					<td>
						<div class="form-check">
							<input type="radio" name="gender" value="male" class="form-check-input" id="male">
							<label for="male" class="form-check-label">����</label>
						</div>
						<div class="form-check">
							<input type="radio" name="gender" value="female" class="form-check-input" id="female">
							<label for="female" class="form-check-label">����</label>
						</div>
					</td>
				</tr>
				<tr>
					<td>���</td>
					<td>
						<div class="form-check">
							<input type="checkbox" name="hobby" value="����" class="form-check-input" id="reading">
							<label for="reading" class="form-check-label">����</label>
						</div>
						<div class="form-check">
							<input type="checkbox" name="hobby" value="����" class="form-check-input" id="game">
							<label for="game" class="form-check-label">����</label>
						</div>
						<div class="form-check">
							<input type="checkbox" name="hobby" value="TV��û" class="form-check-input" id="tv">
							<label for="tv" class="form-check-label">TV��û</label>
						</div>
						<div class="form-check">
							<input type="checkbox" name="hobby" value="�౸" class="form-check-input" id="soccer">
							<label for="soccer" class="form-check-label">�౸</label>
						</div>
						<div class="form-check">
							<input type="checkbox" name="hobby" value="��Ÿ" class="form-check-input" id="other">
							<label for="other" class="form-check-label">��Ÿ</label>
						</div>
					</td>
				</tr>
				<tr>
					<td colspan="2"><button type="submit" class="btn btn-success">����</button></td>
				</tr>
			</table>
		</form>
	</div>
</body>
</html>
