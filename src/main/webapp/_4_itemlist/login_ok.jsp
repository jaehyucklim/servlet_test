<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>ȸ�� ����</title>
</head>
<body>
	<%
	String id = request.getParameter("id");
	String pass = request.getParameter("pass");

	// String inputid = getServletContext().getInitParameter("id")   
	String inputid = application.getInitParameter("id");

	// String inputpass = getServletContext().getInitParameter("password");
	String inputpass = application.getInitParameter("password");

	if (id.equals(inputid) && pass.equals(inputpass)) {
		session.setAttribute("id", id);
	%>
	<script>
        alert("<%=id%>�� �α��ο� �����߽��ϴ�.");
		location.href = "templatetest.jsp";
	</script>
	<%
		String check_value = request.getParameter("remember");
		Cookie cookie = new Cookie("id", request.getParameter("id"));
		// id ����ϱ� Ŭ����
		/* remember��� �̸��� ���� �Ķ���͸� login.jsp���� �������� �κ�
		   �� �Ķ���ʹ� üũ �ڽ��� ���¸� ��Ÿ����, üũ�Ǿ� �ִ� ��쿡�� ������ 
		   "store"�� ���޵� ���Դϴ�. */
		if (check_value != null && check_value.equals("store")) {
			cookie.setMaxAge(2*60);
			response.addCookie(cookie); // Ŭ���̾�Ʈ�� ��Ű�� ����
		} else {
			cookie.setMaxAge(0);
			response.addCookie(cookie); // Ŭ���̾�Ʈ�� ��Ű�� ����
		}
	} else if (id.equals(inputid)) {
	%>
	<script>
		alert("��й�ȣ�� ��ġ���� �ʽ��ϴ�.");
		history.back(); // �ٷ� �� �� �ܰ�� �ǵ��ư���.
	</script>
	<%
	} else {
	%>
	<script>
		alert("���̵� ��ġ���� �ʽ��ϴ�.");
		history.back(); // �ٷ� �� �� �ܰ�� �ǵ��ư���.
	</script>
	<%
	}
	%>
</body>
</html>
