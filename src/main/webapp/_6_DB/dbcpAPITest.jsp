<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%-- Connection 객체와 JNDI를 사용하기 위한 패키지 import --%>	
<%@ page import = "java.sql.*" %>	

<%-- javax.sql.DataSource 객체 사용하기 위해 --%>
<%@ page import = "javax.sql.*" %>	

<%-- JNDI 작업 하기위해 --%>
<%@ page import = "javax.naming.*" %>	
<%
	Connection conn = null;
	try {
		Context init = new InitialContext();
		DataSource ds = (DataSource) init.lookup("java:comp/env/jdbc/OracleDB");
		conn = ds.getConnection();
		out.println("<h3>커넥션 풀에 연결되었습니다.</h3>");
		conn.close();
	} catch (Exception e) {
		out.print("<h3>커넥션 풀 연결에 실패하였습니다.</h3>");
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
