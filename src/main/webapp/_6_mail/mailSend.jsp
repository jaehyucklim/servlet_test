<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ page import="_mail.java_mail" %>
<%@ page import="java.util.Properties" %>

<%-- �ڹ� ���� API ���� ��Ű�� import --%>
<%@ page import="javax.mail.*" %>
<%@ page import="javax.mail.internet.*" %>

<% 
    request.setCharacterEncoding("euc-kr");
    String sender = request.getParameter("sender");
    String receiver = request.getParameter("receiver");
    String subject = request.getParameter("subject");
    String content = request.getParameter("content");

    /* JavaMail�� ����Ͽ� �̸����� �����ϱ� ���� 3���� �ܰ�
    1. ȣ��Ʈ�̸�, ����ڸ�, ��й�ȣ ��� ���� ȣ��Ʈ�� ��� ������ �����ϴ� Session ��ü�� ����ϴ�.
    2. �޼����� ����
    3. �޼����� �����ϴ�
    */

    // SMTP ���� �ּ� ����
    String server = "smtp.naver.com";
    int port = 587;
    try {
    	// ���� ������ properties ��ü�� ����
    	Properties properties = new Properties();
    	
    	// SMTP ���� ���� ����
    	properties.put("mail.smtp.host", server);
    	properties.put("mail.smtp.port", port);
    	
    	// SSL(Secure Sockets Layer)�� ���� TLS(Transport Layer Security)��
    	// ��Ʈ��ũ�� ���� ���۵� �� �������� ������ �����ϱ� ���� ��ȣȭ �������� �Դϴ�.
    	// ���� ���ۿ� ���Ǵ� ���������� TLSv1.2�� ����
    	properties.put("mail.smtp.ssl.protocols", "TLSv1.2");
    	
    	// ������ properties ��ü�� ������ ������ �ν��Ͻ��� �����մϴ�.
    	// public static Session getInstance
    	// Session Ŭ������ ������� �̸�, ��ȣ, ���� ������ ����
    	// ���� ������ �̿��ϴµ� �ʿ��� �̸��� ���� ������ �����մϴ�.
    	Session s = Session.getInstance(properties);
    	
    	// ������ ���ϰ� �޴� �ּҸ� ����
    	Address sender_address = new InternetAddress(sender);
    	Address receiver_address = new InternetAddress(receiver);
    	
   		// ������ ������ ���� ������ �Է��ϱ� ���� Message ��ü ����
   		Message message = new MimeMessage(s);
   		
   		// ������ ������ ������ �ѱ��� ��� ������ �� ���� content-type ����
   		message.setHeader("content-type", "text/html; charset=euc-kr");
   		
   		// ������ ���� �ּ� ������ ����
   		message.setFrom(sender_address);
   		
   		// �޴� ���� �ּ� ������ ����
   		// Message.RecipientType: Message Ŭ�������� ����ϴ� ������ ����
   		// Message.RecipientType.TO: �޴� ��� 
   		message.addRecipient(Message.RecipientType.TO, receiver_address);
   		
   		// ���� ���� ����
   		message.setSubject(subject);
   		
   		// ���� ���� ����
   		message.setContent(content, "text/html; charset=euc-kr");
   		
   		// ������ ��¥ ����
   		message.setSentDate(new java.util.Date());
   		
   		// public Transport getTransport throws NoSuchProviderException
   		// ������ ��������(smpt)�� �����ϴ� Transport ��ü�� �����ɴϴ�.
   		// ������ �����ϴ� Ŭ����
   		Transport transport = s.getTransport("smtp");
   		
   		// ù��° ���ڴ� ������ ȣ��Ʈ
   		// �ι�° ���ڴ� ���̵�
   		// ����° ���ڴ� ��й�ȣ
   		transport.connect(server, _mail.java_mail.naverid, _mail.java_mail.naverpass); // ������ �κ�
   		
   		// getAllRecipients(): �޼����� ��� ������ �ּҸ� �����ɴϴ�.
   		// ������ �ּ� ������� �޼����� �����ϴ�.
   		transport.sendMessage(message, message.getAllRecipients());
   		
   		// ������ �����մϴ�.
   		transport.close();
   		
   		// ���� ���� ���� �޽����� ����մϴ�.
   		out.println("<h3>������ ���������� ���۵Ǿ����ϴ�.</h3>");
    	
    } catch(Exception e) {
        e.printStackTrace();
        // ���� ���� ���� �� ���� �޽����� ����մϴ�.
        out.println("<h3>���� ���� �� ������ �߻��߽��ϴ�.</h3>");
    }
%>

<html>
<head>
</head>
<body>
</body>
</html>
