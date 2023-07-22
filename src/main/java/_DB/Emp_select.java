package _DB;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//@WebServlet("/emp_select")
public class Emp_select extends HttpServlet{
	private static final long serialVersionUID = 1L;
	
	protected void doGet(HttpServletRequest request, 
			HttpServletResponse response) throws ServletException, IOException {
			
			DAO2 dao2 = new DAO2();
			ArrayList<Emp> list = dao2.selectAll();
			RequestDispatcher dispatcher = 
					request.getRequestDispatcher("/_6_DB/list2.jsp"); // view
			request.setAttribute("list", list);
			dispatcher.forward(request, response);
		}
}