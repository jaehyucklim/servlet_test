package _tp_hw;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet("/ServletExample")
public class ServletExample extends HttpServlet{
	
	public static final long serialVersionUID = 1L;
	
	public void doGet(HttpServletRequest request, 
		HttpServletResponse response) throws IOException {
		response.setContentType("text/html");
		response.setCharacterEncoding("euc-kr");
		
		PrintWriter out = response.getWriter();
		out.write("HelloWorld");
	}

}
