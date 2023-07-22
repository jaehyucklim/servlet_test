package _1.login;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet(urlPatterns= "/b")
public class LifeCycleTest_get extends HttpServlet{
	public static final long serialVersionUID = 1L;
	
	protected void doGet(HttpServletRequest request, 
		HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html; charset=euc-kr");
		
		// getParameter(): name=""인 곳에서 입력한 후 전송디어 온 파라미터 값을 반환
		String id = request.getParameter("id");
		String passwd = request.getParameter("passwd");
		
		PrintWriter out = response.getWriter();
		
		out.println("웹 애플리케이션 경로 정보: " + request.getContextPath());
		
		out.println("<br>" + "아이디: " + id + "<br>");
		out.println("비밀번호: " + passwd + "<br>");
		out.close();
	}
}
