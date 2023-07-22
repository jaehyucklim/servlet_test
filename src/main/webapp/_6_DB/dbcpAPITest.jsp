<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%-- Connection ��ü�� JNDI�� ����ϱ� ���� ��Ű�� import --%>	
<%@ page import = "java.sql.*" %>	

<%-- javax.sql.DataSource ��ü ����ϱ� ���� --%>
<%@ page import = "javax.sql.*" %>	

<%-- JNDI �۾� �ϱ����� --%>
<%@ page import = "javax.naming.*" %>	
<%
	Connection conn = null;
	try {
		Context init = new InitialContext();
		DataSource ds = (DataSource) init.lookup("java:comp/env/jdbc/OracleDB");
		conn = ds.getConnection();
		out.println("<h3>Ŀ�ؼ� Ǯ�� ����Ǿ����ϴ�.</h3>");
		conn.close();
	} catch (Exception e) {
		out.print("<h3>Ŀ�ؼ� Ǯ ���ῡ �����Ͽ����ϴ�.</h3>");
		e.printStackTrace();
	}
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title></title>
</head>
<body>
</body>
</html>
