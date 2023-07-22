<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>

<!-- 선언문(declaration): 
	 (1) JSP페이지에서 자바 코드의 멤버 변수(필드)와 메소드를 선언하기 위해 사용 
	 (2) 선언문을 사용해 선언된 변수는 JSP페이지의 어느 위치에서도 해당 변수를 참조하는 것이 가능합니다.
	 	 D:\workspace\_2023_05_02\.metadata\.plugins\org.eclipse.wst.server.core
	 	 \tmp0\work\Catalina\localhost\JSP\org\apache\jsp\_005f3
	 	 안에 declarationTest_jsp.java 와 declarationTest_jsp.class 파일 존재
-->

<h1><%=getStr()%></h1>
<%! // ★선언 형식: <%! % >★
	private String getStr() {
		str += "테스트입니다.";
		return str;
	}

	private String str = "선언문 ";
%>

