package _tp_hw;
import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/ServletExample2")
public class ServletExample2 extends HttpServlet {

    private static final long serialVersionUID = 1L;

    public ServletExample2() {
        super();
    }

    public void doGet(HttpServletRequest request, HttpServletResponse response) 
    		throws ServletException, IOException {
        response.setContentType("text/html");
        response.setCharacterEncoding("euc-kr");
        
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("_tp_hw/ServletExample.jsp");
        
        requestDispatcher.forward(request, response);
    }
}
