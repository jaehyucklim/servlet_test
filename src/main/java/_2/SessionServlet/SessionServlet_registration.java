package _2.SessionServlet;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
@WebServlet(urlPatterns= "/_2/send")
public class SessionServlet_registration extends HttpServlet{
	public static final long serialVersionUID = 1L;
	
	public SessionServlet_registration() {
		super();
	}
	/* Redirect 방식: 포워딩될 때 브라우저의 주소 표시줄의 URL이 변경되므로 요청이 바뀌게 됩니다.
	   포워딩된 jsp페이지에서는 서블릿에서 request 영역의 공유한 속성 값에 접근할 수 없습니다. 
	 */
	protected void doPost(HttpServletRequest request, 
		HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("euc-kr");
		response.setContentType("text/html; charset=euc-kr");

		
		HttpSession session = request.getSession();		
		
		String id = request.getParameter("id");
		String pass = request.getParameter("pass");
		String jumin1 = request.getParameter("jumin1");
		String jumin2 = request.getParameter("jumin2");
		String email = request.getParameter("email");
		String domain = request.getParameter("domain");
		String gender = request.getParameter("gender");
		String[] hobby = request.getParameterValues("hobby"); // hobby를 배열로 받음
		String post1 = request.getParameter("post1");
		String address = request.getParameter("address");
		String intro = request.getParameter("intro");

		session.setAttribute("id", id);
		session.setAttribute("pass", pass);
		session.setAttribute("jumin1", jumin1);
		session.setAttribute("jumin2", jumin2);
		session.setAttribute("email", email);
		session.setAttribute("domain", domain);
		session.setAttribute("gender", gender);
		session.setAttribute("hobby", hobby); // hobby를 배열로 저장
		session.setAttribute("post1", post1);
		session.setAttribute("address", address);
		session.setAttribute("intro", intro);

		
//		session.setAttribute("food", food); // session 객체에 저장
		
		response.sendRedirect("write.jsp");
		
		//dispatcher.jsp: 이동할 페이지 주소
		//http://localhost:8088/JSP/dispatcher.jsp
		// '/'로 시작하는 경로는 상대경로
		//RequestDispatcher dispatcher = request.getRequestDispatcher("redirect.jsp");
		
		// 이동
		//dispatcher.forward(request, response);
	}
}
