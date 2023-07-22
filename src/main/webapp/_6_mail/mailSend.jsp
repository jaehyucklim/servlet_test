<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ page import="_mail.java_mail" %>
<%@ page import="java.util.Properties" %>

<%-- 자바 메일 API 관련 패키지 import --%>
<%@ page import="javax.mail.*" %>
<%@ page import="javax.mail.internet.*" %>

<% 
    request.setCharacterEncoding("euc-kr");
    String sender = request.getParameter("sender");
    String receiver = request.getParameter("receiver");
    String subject = request.getParameter("subject");
    String content = request.getParameter("content");

    /* JavaMail을 사용하여 이메일을 전송하기 위한 3가지 단계
    1. 호스트이름, 사용자명, 비밀번호 등과 같은 호스트의 모든 정보를 저장하는 Session 객체를 얻습니다.
    2. 메세지를 구성
    3. 메세지를 보냅니다
    */

    // SMTP 서버 주소 지정
    String server = "smtp.naver.com";
    int port = 587;
    try {
    	// 서버 정보를 properties 객체에 저장
    	Properties properties = new Properties();
    	
    	// SMTP 서버 정보 설정
    	properties.put("mail.smtp.host", server);
    	properties.put("mail.smtp.port", port);
    	
    	// SSL(Secure Sockets Layer)과 같은 TLS(Transport Layer Security)는
    	// 네트워크를 통해 전송될 때 데이터의 보안을 유지하기 위한 암호화 프로토콜 입니다.
    	// 메일 전송에 사용되는 프로토콜을 TLSv1.2로 지정
    	properties.put("mail.smtp.ssl.protocols", "TLSv1.2");
    	
    	// 저장한 properties 객체의 값으로 세션을 인스턴스를 생성합니다.
    	// public static Session getInstance
    	// Session 클래스는 사용자의 이름, 암호, 메일 서버와 같이
    	// 메일 서버를 이용하는데 필요한 이메일 계정 정보를 관리합니다.
    	Session s = Session.getInstance(properties);
    	
    	// 보내는 메일과 받는 주소를 설정
    	Address sender_address = new InternetAddress(sender);
    	Address receiver_address = new InternetAddress(receiver);
    	
   		// 메일을 보내기 위한 정보를 입력하기 위해 Message 객체 생성
   		Message message = new MimeMessage(s);
   		
   		// 보내는 메일의 내용이 한글일 경우 깨지는 것 방지 content-type 설정
   		message.setHeader("content-type", "text/html; charset=euc-kr");
   		
   		// 보내는 메일 주소 정보를 설정
   		message.setFrom(sender_address);
   		
   		// 받는 메일 주소 정보를 설정
   		// Message.RecipientType: Message 클래스에서 허용하는 수진자 유형
   		// Message.RecipientType.TO: 받는 사람 
   		message.addRecipient(Message.RecipientType.TO, receiver_address);
   		
   		// 제목 정보 설정
   		message.setSubject(subject);
   		
   		// 내용 정보 설정
   		message.setContent(content, "text/html; charset=euc-kr");
   		
   		// 보내는 날짜 설정
   		message.setSentDate(new java.util.Date());
   		
   		// public Transport getTransport throws NoSuchProviderException
   		// 지정된 프로토콜(smpt)를 구현하는 Transport 객체를 가져옵니다.
   		// 메일을 전송하는 클래스
   		Transport transport = s.getTransport("smtp");
   		
   		// 첫번째 인자는 연결할 호스트
   		// 두번째 인자는 아이디
   		// 세번째 인자는 비밀번호
   		transport.connect(server, _mail.java_mail.naverid, _mail.java_mail.naverpass); // 수정된 부분
   		
   		// getAllRecipients(): 메세지의 모든 수신자 주소를 가져옵니다.
   		// 지정한 주소 목록으로 메세지를 보냅니다.
   		transport.sendMessage(message, message.getAllRecipients());
   		
   		// 연결을 종료합니다.
   		transport.close();
   		
   		// 메일 전송 성공 메시지를 출력합니다.
   		out.println("<h3>메일이 정상적으로 전송되었습니다.</h3>");
    	
    } catch(Exception e) {
        e.printStackTrace();
        // 메일 전송 실패 시 오류 메시지를 출력합니다.
        out.println("<h3>메일 전송 중 오류가 발생했습니다.</h3>");
    }
%>

<html>
<head>
</head>
<body>
</body>
</html>
