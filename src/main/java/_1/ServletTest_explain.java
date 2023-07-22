package _1;
/*  import:
    javax.servlet.*와 javax.servlet.http.* 필수
    javax.servlet.*: 서블릿 관련 클래스
    javax.servlet.http.*: http 요청 처리 클래스
 */
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Calendar;
import javax.servlet.http.*;

/*  서블릿 정의:
    서블릿 클래스 정의 => HttpServle 클래스를 상속 받는다.
    HttpServlet 클래스를 상속 받으면 서블릿 클래스가 된다.
 */
//@WebServlet(urlPatterns= {"/currentTime"})
public class ServletTest_explain extends javax.servlet.http.HttpServlet{

	public static final long serialVersionUID = 1L;
	// 클라이언트에서 요청이 GET 방식으로 전송되어 오면 doGEt메소드가 자동 실행
	public void doGet(HttpServletRequest request,
					  HttpServletResponse response) throws IOException {
		
		// 응답 데이터의 MIME 타입을 HTML의 text로 지정
		response.setContentType("text/html"); 
		//response.setContentType("text/plain"); 
		
		// 응답 데이터 타입의 문자 인코딩을 한글이 출력 가능한 "euc-kr"로 지정
		response.setCharacterEncoding("euc-kr");
		
		//response.setContentType("text/html; charset=euc-kr");
		
		// Calender 객체 생성
		Calendar c = Calendar.getInstance();
		int hour = c.get(Calendar.HOUR_OF_DAY);
		int minute= c.get(Calendar.MINUTE);
		int second = c.get(Calendar.SECOND);
		
		PrintWriter out = response.getWriter();
		out.write("<HTML><HEAD><TITLE>ServeltTest</TITLE></HEAD>");
		out.write("<BODY><H1>");
		out.write("현재시각은 ");
		out.write(Integer.toString(hour));
		out.write("시 ");
		out.write(Integer.toString(minute));
		out.write("분 ");
		out.write(Integer.toString(second));
		out.write("초 입니다.");
		out.write("</H1></BODY></HTML>");
		out.close();
	}
}
