package _2.SessionServlet;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
@WebServlet(urlPatterns= "/_2/login_ok")
public class SessionServlet_login extends HttpServlet{
	public static final long serialVersionUID = 1L;
	
	public SessionServlet_login() {
		super();
	}
	/* Redirect 방식: 포워딩될 때 브라우저의 주소 표시줄의 URL이 변경되므로 요청이 바뀌게 됩니다.
	   포워딩된 jsp페이지에서는 서블릿에서 request 영역의 공유한 속성 값에 접근할 수 없습니다. 
	 */
	protected void doPost(HttpServletRequest request, 
		HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("euc-kr");
		response.setContentType("text/html; charset=euc-kr");

		// 출력 스트림
		PrintWriter out = response.getWriter();
		
		// parameter(id, pass) 가져오기
		String id = request.getParameter("id");
		String pass = request.getParameter("pass");
		
		if(id.equals("java") && pass.equals("java")) {//★성공시 => login.jsp로 이동
			HttpSession session = request.getSession();		
			session.setAttribute("id", id);
			session.setAttribute("pass", pass);
			response.sendRedirect("login.jsp");
		} else if(id.equals("java")) { // 성공하지 않을 시
			out.println("<script>");			
			out.println("alert('비밀번호가 일치하지 않습니다.')");			
			out.println("history.back()"); // 이전 페이지로 이동
			out.println("</script>");
			out.close();
		} else {
			out.println("<script>");			
			out.println("alert('id가 일치하지 않습니다.')");			
			out.println("history.back()"); // 이전 페이지로 이동		 
			out.println("</script>");
			out.close();
		}
	}
}
