<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>ȸ�� ����</title>
<style>
<!-- ���� -->
</style>
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
        alert("ID: <%=id%> �α���");
        location.href = "templatetest.jsp";
    </script>
<%
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
