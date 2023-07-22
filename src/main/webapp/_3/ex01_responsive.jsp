<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>responsive</title>
<!-- @media: �̵�� ������ CSS3�� ���Ե� CSS ��� 
	 �̵���� ����: 
	 1. Screen: ��ǻ�� ��ũ��, �׺�, ����� ���
	 2. print: ������
	 3. speech: �������� �о� �ִ� ȭ�� ������
	 4. max-width: �ִ� �ʺ�
	 5. min-width: �ּ� �ʺ�
-->
<style>
	body {
		background-color: lightgreen;
	}
@media screen and (max-width: 600px) {
	body {
		background-color: lightblue;
	}
}

@media screen and (min-width: 601px) and (max-width: 900px) {
	body {
		background-color: lightgray;
	}
}
</style>
</head>
<body>
	<p>������ ����� �ִ� 600px������ lightnlue<br>
	   601px~900px������ lightgray<br>
	   �� �ܴ� lightgreen
	</p>
<script>
	window.onresize = function() {
		// window.innerWidth: ������ ȭ���� �ʺ�
		// window.innerHeight: ������ ȭ���� ����
		document.body.innerHTML = "window.innerWidth: " + window.innerWidth;
	}
</script>	
</body>
</html>
