package _2.dispatcher;
import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet(urlPatterns= "/_2/DispatcherServlet2")
public class DispatcherServlet_attr extends HttpServlet{
	public static final long serialVersionUID = 1L;
	
	public DispatcherServlet_attr() {
		super();
	}
	/* Dispatcher 방식:
	 - 클라이언트로 부터 요청 받은 Servlet 프로그램이 응답을 하지 않고 다른 서블릿이나 
	   JSP페이지 등에 ★재★요청을 ★전달★합니다.
	 - 이 방식으로 이동하면 주소 표시줄의 주소가 변경되지 않습니다.
	 - request 영역을 공유하게 됩니다.
	 - 방법: RequestDispatcher에서 제공하는 내장 메소드(forwar())를 사용하여 요청을 재지정합니다. 
	 */
	protected void doGet(HttpServletRequest request, 
		HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html; charset=euc-kr");
		
		System.out.println("요청방식: " + request.getMethod());
		System.out.println("파라미터 food의 값: " + request.getParameter("food"));
		String food = request.getParameter("food");
		
		request.setAttribute("food", food);
		request.setAttribute("name", "jsp");
		
		//dispatcher.jsp: 이동할 페이지 주소
		//http://localhost:8088/JSP/dispatcher.jsp
		// '/'로 시작하는 경로는 상대경로
		RequestDispatcher dispatcher = request.getRequestDispatcher("dispatcher2.jsp");
		
		// 이동
		dispatcher.forward(request, response);
	}
}
