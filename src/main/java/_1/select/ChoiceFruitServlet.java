package _1.select;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet(urlPatterns= "/choiceFruit")
public class ChoiceFruitServlet extends HttpServlet{
	public static final long serialVersionUID = 1L;
	
	public ChoiceFruitServlet() {
		super();
	}
	
	protected void doGet(HttpServletRequest request, 
		HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html; charset=euc-kr");
		PrintWriter out = response.getWriter();
		
		System.out.println(request.getParameter("fruit"));
		// getParameterValues(): 반환형 배열
		// 하나의 파라미터 이름(fruit)로 값이 여러개 전송될 경우 사용
		// ex) 체크박스
		String[] f = request.getParameterValues("fruit");
		
		//System.out.println("===== 선택한 모든 과일 시작 =====");
		out.println("<html><head>"
				+ "<style>"
		        + "body {"
		        + "    background-color: black;"
		        + "}"
		        + "table {"
		        + "    margin: 0 auto;"
		        + "    top: 30%;"
		        + "    background-color: yellow;"
		        + "    position: relative;"
		        + "}"
		        + "td {"
		        + "    font-size: 20px;"
		        + "    text-align: center;"
		        + "    border: 1px solid black;"
		        + "    width: 200px;"
		        + "    color: red;"
		        + "    height: 2em;"
		        + "}"
		        + "img {"
		        + "    width: 100px;"
		        + "    height: auto;"
		        + "}"
		        + "</style></head>");
		out.println("<body>");
		out.println("<table>");
		out.println("<tr>");
		for (String fruit : f) {
		    out.println("<td>" + fruit + "</td>");
		}
		out.println("</tr>");
		
		out.println("<tr>");
		for (String fruit : f) {
		    out.println("<td><img src='image/" + fruit + "'></td>");
		}
		out.println("</tr>");
		out.println("</table>");
		out.println("</body></html>");
		out.close();


		//out.println("===== 선택한 모든 과일 끝 =====");
	}
}
