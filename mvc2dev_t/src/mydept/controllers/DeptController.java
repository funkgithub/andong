package mydept.controllers;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import mydept.models.DeptDAO;
import mydept.models.DeptDTO;

@WebServlet("/dept")
public class DeptController extends HttpServlet {
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		DeptDAO deptDAO = DeptDAO.getInstance();
		List<DeptDTO> list = deptDAO.getDeptList();
		
		request.setAttribute("list", list);
		request.setAttribute("title", "부서정보");
		RequestDispatcher dispatcher = 
			request.getRequestDispatcher("/WEB-INF/views/dept.jsp");
		dispatcher.forward(request, response);
	}
}
