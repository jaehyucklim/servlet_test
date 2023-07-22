package _2.ContextServlet;
import java.io.IOException;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
@WebServlet(urlPatterns= "/_2/context")
public class Context_attr extends HttpServlet{
	public static final long serialVersionUID = 1L;
	
	public Context_attr() {
		super();
	}
	
	protected void doGet(HttpServletRequest request, 
		HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html; charset=euc-kr");
		
		
		String food = request.getParameter("food");
		
		request.setAttribute("food", food); // request 객체에 저장
		HttpSession session = request.getSession();	
		session.setAttribute("food", food); // session 객체에 저장
		
		/* ServletContext: 웹 애플리케이션이 서브시되고 있는 동안 유지되고 생명주기가 같은 객체 
		   웹 애플리케이션 서비스가 시작될 때 생성되고 종료될 때 소멸 */
		ServletContext sc = request.getSession().getServletContext();	
		sc.setAttribute("food", food);
		
		response.sendRedirect("scope.jsp");
	}
}
