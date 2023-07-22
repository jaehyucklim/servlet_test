package _DB;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/dept_select")
public class Dept_select extends HttpServlet{
	private static final long serialVersionUID = 1L;
	
	protected void doGet(HttpServletRequest request, 
			HttpServletResponse response) throws ServletException, IOException {
			
			DAO dao = new DAO();
			ArrayList<Dept> list = dao.selectAll();
			RequestDispatcher dispatcher = 
					request.getRequestDispatcher("/_6_DB/list.jsp"); // view
			request.setAttribute("list", list);
			dispatcher.forward(request, response);
		}
}