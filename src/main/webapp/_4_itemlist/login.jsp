<%@page import="javax.imageio.metadata.IIOMetadataFormatImpl"%>
<%@page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%
	String id = "";
	Cookie[] cookies = request.getCookies();
	if(cookies != null) {
		for(int i = 0; i < cookies.length; i++) {
			if(cookies[i].getName().equals("id")) {
				id = cookies[i].getValue();
			}
		}
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
<link href="css/mycss2.css" type="text/css" rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.7.0.min.js"></script>
</head>
<style>
    .container{margin:3em auto; border:1px solid lightgray;width:500px}
</style>
<body>
	<div class="container">
		<form action="login_ok.jsp" method="post" class="border-light p-5">
			<p class="h4 mb-4 text-center">Login</p>
			<div class="form-group">
				<label for="id">ID</label>
				<input type="text" placeholder="Enter ID" name="id" id="id">
			</div>
			<div class="form-group">
				<label for="pass">Password</label>
				<input type="password" placeholder="Enter Password" name="pass" id="pass">
			</div>
			<div class="form-group custom-control custom-checkbox">
				<input type="checkbox" class="custom-control-input" 
					   id="remember" name="remember" value="store">
				<label class="custom-control-label" for="remember">Remember ID</label>
			</div>
			<button type="submit" class="btn btn-info my-4 btn-block">Submit</button>
		</form>
	</div>
</body>
<script>
	$(document).ready(function() {
		const id_val = "<%=id%>";
		if(id_val) {
			$("#id").val(id_val).css('font-weight', 'bold');
			$("#remember").prop('checked', true);
		}
		$("form").submit(function() {
			const inputid=$.trim($("#id").val());
			if(!inputid) {
				alert('아이디를 입력하세요.');
				$("#id").focus();
				return false;
			}
			const inputpass=$.trim($("#pass").val());
			if(!inputpass) {
				alert('비밀번호를 입력하세요.');
				$("#pass").focus();
				return false;
			}
		})
	});
</script>
</html>
