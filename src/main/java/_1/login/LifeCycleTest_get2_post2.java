package _1.login;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(urlPatterns= {"/memReg"})
public class LifeCycleTest_get2_post2 extends HttpServlet{
	public static final long serialVersionUID = 1L;
	
	protected void doGet(HttpServletRequest request, 
		HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html; charset=euc-kr");
		
		// getParameter(): name=""인 곳에서 입력한 후 전송디어 온 파라미터 값을 반환
		String name = request.getParameter("name");
        String addr = request.getParameter("addr");
        String tel = request.getParameter("tel");
        String hobby = request.getParameter("hobby");
		
		PrintWriter out = response.getWriter();
		
		response.setContentType("text/html; charset=EUC-KR");
		out.println("<html><head>"
	            + "<style>"
	            + "table {"
	            + "    border-collapse: collapse;"
	            + "    width: 100%;"
	            + "}"
	            + "th, td {"
	            + "    padding: 8px;"
	            + "    text-align: left;"
	            + "    border-bottom: 1px solid #ddd;"
	            + "}"
	            + "th {"
	            + "    background-color: #f2f2f2;"
	            + "}"
	            + "</style></head>");
		out.println("<table>");
		out.println("<tr><th>항목</th><th>내용</th></tr>");
		out.println("<tr><td>회원명</td><td>" + name + "</td></tr>");
		out.println("<tr><td>주소</td><td>" + addr + "</td></tr>");
		out.println("<tr><td>전화번호</td><td>" + tel + "</td></tr>");
		out.println("<tr><td>취미</td><td>" + hobby + "</td></tr>");
		out.println("</table>");
		out.close();
	}
	
	protected void doPost(HttpServletRequest request, 
			HttpServletResponse response) throws ServletException, IOException {
			request.setCharacterEncoding("euc-kr");
			doGet(request, response);
	}
}
