package _1.LifeCycle;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet(urlPatterns= "/html/lifeCycleTest")
public class LifeCycle2 extends HttpServlet{
	public static final long serialVersionUID = 1111640088774700454L;
	
	public LifeCycle2() {
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
