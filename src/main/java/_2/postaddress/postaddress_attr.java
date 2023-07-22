package _2.postaddress;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
@WebServlet(urlPatterns= "/_2/postaddress")
public class postaddress_attr extends HttpServlet{
	public static final long serialVersionUID = 1L;
	
	public postaddress_attr() {
		super();
	}
	/* Redirect 방식: 포워딩될 때 브라우저의 주소 표시줄의 URL이 변경되므로 요청이 바뀌게 됩니다.
	   포워딩된 jsp페이지에서는 서블릿에서 request 영역의 공유한 속성 값에 접근할 수 없습니다. 
	 */
	protected void doGet(HttpServletRequest request, 
		HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html; charset=euc-kr");
		
		HttpSession session = request.getSession();		
		
		String food = request.getParameter("food");
		
		request.setAttribute("food", food); // request 객체에 저장
		session.setAttribute("food", food); // session 객체에 저장
		
		response.sendRedirect("redirect.jsp");
		
		//dispatcher.jsp: 이동할 페이지 주소
		//http://localhost:8088/JSP/dispatcher.jsp
		// '/'로 시작하는 경로는 상대경로
		//RequestDispatcher dispatcher = request.getRequestDispatcher("redirect.jsp");
		
		// 이동
		//dispatcher.forward(request, response);
	}
}
