package myservlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(value="/hello", loadOnStartup = 5)
public class HelloServlet extends HttpServlet {
	public HelloServlet() {
		System.out.println("HelloServlet()");
	}
	
	@Override
	protected void service(
			HttpServletRequest request, 
			HttpServletResponse response) throws ServletException, IOException {
			request.setAttribute("say", "Hello~");
			request.setAttribute("say2", "Servlet~");
			RequestDispatcher dispatcher = 
					request.getRequestDispatcher("/views/hello.jsp");
			dispatcher.forward(request, response);
	}
}
