<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>request 테스트</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-3.7.0.min.js"></script>
<script>
	$(function() {
		$("form").submit(function() {
			let selected = $("input:radio:checked").length;
			if(selected < 1) {
				alert('성별을 선택해 주세요');
				return false;
			}
			selected = $("input:checkbox:checked").length;
			if(selected < 1) {
				alert('취미를 한개 이상 선택해 주세요');
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
		<h3>Request 테스트</h3>
		
		<form action="requestTest2.jsp" method="post">
			<table class="table">
				<tr>
					<td>이름</td>
					<td><input type="text" name="name" class="form-control" required></td>
				</tr>
				<tr>
					<td>성별</td>
					<td>
						<div class="form-check">
							<input type="radio" name="gender" value="male" class="form-check-input" id="male">
							<label for="male" class="form-check-label">남성</label>
						</div>
						<div class="form-check">
							<input type="radio" name="gender" value="female" class="form-check-input" id="female">
							<label for="female" class="form-check-label">여성</label>
						</div>
					</td>
				</tr>
				<tr>
					<td>취미</td>
					<td>
						<div class="form-check">
							<input type="checkbox" name="hobby" value="독서" class="form-check-input" id="reading">
							<label for="reading" class="form-check-label">독서</label>
						</div>
						<div class="form-check">
							<input type="checkbox" name="hobby" value="게임" class="form-check-input" id="game">
							<label for="game" class="form-check-label">게임</label>
						</div>
						<div class="form-check">
							<input type="checkbox" name="hobby" value="TV시청" class="form-check-input" id="tv">
							<label for="tv" class="form-check-label">TV시청</label>
						</div>
						<div class="form-check">
							<input type="checkbox" name="hobby" value="축구" class="form-check-input" id="soccer">
							<label for="soccer" class="form-check-label">축구</label>
						</div>
						<div class="form-check">
							<input type="checkbox" name="hobby" value="기타" class="form-check-input" id="other">
							<label for="other" class="form-check-label">기타</label>
						</div>
					</td>
				</tr>
				<tr>
					<td colspan="2"><button type="submit" class="btn btn-success">전송</button></td>
				</tr>
			</table>
		</form>
	</div>
</body>
</html>
