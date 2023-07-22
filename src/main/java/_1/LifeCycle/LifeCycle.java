package _1.LifeCycle;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
/* @(annotation): 자바 주석문처럼 소스 안에 @기호와 함께 사용
   자바 프로그램 실행에 관한 내용을 설정하는 용도
   
   @WebServlet: urlPatterns 속성을 값으로 갖고 이 속성은
   해당 서블릿과 매핑될 URL 패턴을 지정
   
   "http://localhost:8088/프로젝트이름/LifeCycle"
 
@WebServlet(urlPatterns= {"/a", "/b", "/c"}) */
//@WebServlet(urlPatterns= {"/LifeCycle", "/a"})
public class LifeCycle extends HttpServlet{
	/* serialVersionUID: 같은 클래스임을 알려주는 식별자 
	   serializable 인터페이스를 구현한 클래스를 컴파일 하면 자동적으로
	   serialVersionUID 정적 필드 추가
	   
	   serialVersionUID: 자바의 직렬화(객체의 데이터 -> byte형태의 데이터)와 
	   역직렬화(btye로 변환된 데이터 -> 원래의 객체 데이터)
	   실행될 때 자동으로 부여
	   
	   역직렬화시 직렬화 가능 클래스의 내용이 그대로이면 같은 번호가 부여, 클래스의
	   구성 요소가 하나라도 바뀌면 다른 serialVersionUID가 부여(역직렬화 오류)
	   
	   명시적으로 클래스에 serialVersionUID가 선언되어 있으면 컴파일 시 따로
	   serialVersionUID를 추가하지 않기 때문에 동일한 값 유지 가능 */
	public static final long serialVersionUID = 1111640088774700454L;
	
	public LifeCycle() {
		super();
		System.out.println("저는 생성자 입니다.");
	}
	// init(): 서블릿 객체가 생성된 다음에 호출되는 메소드로 클라이언트로부터
	//   	   최초로 서블릿 요청이 있을 때 한 번만 실행(서블릿 초기화 작업)
	public void init() throws ServletException {
		System.out.println("저는 init() 입니다.");
	}
	
	// destroy(): 서블릿 객체가 메모리에서 삭제될 때 실행(자원 해체 작업)
	public void destroy() {
		System.out.println("저는 destroy() 입니다.");
	}
	
	/* service(): 클라이언트의 요청이 있을 때마다 실행합니다.
	   서버 프로그램 실행이 완료된 후에는 서블릿 컨테이너가 실행결과를 웹 서버에 전달하고
	   웹 서버는 서비스를 요청한 클라이언트에 응답합니다.(웹에서 하나의 요청 처리)
	   
	   HTTP메소드를 참조하여 doGet() or doPost()중 선택하여 요청시 마다 호출
	   (브라우저 새로고침) */
	public void service(HttpServletRequest request,
		HttpServletResponse response) throws ServletException, IOException {
		System.out.print("저는 service() 입니다.");
		System.out.println(" 요청 주소: " + request.getRequestURI());
	}
}
