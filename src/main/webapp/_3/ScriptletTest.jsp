<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>

<%-- -- 스크립트릿(Scriptlet): 
	 (1) HTML 코드로 된 부분은 일반 HTML 파일처럼 그대로 사용하여 자바 코드로
	 이루어진 로직 부분은 <%. . .%>로 표현되는 스크립트릿 태그를 사용하여 구분합니다.
	 (2) JSP파일이 실행될 때 웹 컨테이너에 의해 JSP 코드가 서블릿 클래스로 변환됩니다.
	 이때 일반 서블릿 클래스의 service() 메소드에 해당하는 _jspService()메소드가
	 웹 컨테이너에 의해 자동으로 재정의되며 이 메소드의 내부에 JSP코드가 들어가게 됩니다.
	 이렇게 웹 컨테이너에 의해 서블릿 클래스가 생성되면 인스턴스와 스레드가 생성되고 
	 _jspService()메소드에 의해 응답 페이지가 만들어져 클라이언트에 전송되어
	 결과 페이지가 표시됩니다.
	 D:\workspace\_2023_05_02\.metadata\.plugins\org.eclipse.wst.server.core
	 \tmp0\work\Catalina\localhost\JSP\org\apache\jsp\_005f3
	 안에 ScriptletTest_jsp.java 와 ScriptletTest_jsp.class 파일 존재
--%>

<%@ page import="java.util.Calendar" %>
<!DOCTYPE html>
<html>
<head>
<%
	Calendar c = Calendar.getInstance();
	int hour = c.get(Calendar.HOUR_OF_DAY);
	int minute = c.get(Calendar.MINUTE);
	int second = c.get(Calendar.SECOND);
%>
<meta charset="EUC-KR">
<title>Scriptlet Test</title>
</head>
<body>
 <h1>현재 시간은 <%=hour %>시 <%=minute %>분 <%=second %>초 입니다.</h1>
</body>
</html>
