package myservlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import myservlet.models.EmployeeDTO;

@WebServlet("/employee")
public class EmployeeController extends HttpServlet {

    public EmployeeController() {
    }
    
    @Override
    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	List<EmployeeDTO> list = new ArrayList<>();
    	list.add(new EmployeeDTO("King", "대표", 6000000));
    	list.add(new EmployeeDTO("Abel", "과장", 5000000));
    	list.add(new EmployeeDTO("Grant", "사원", 4000000));
    	
    	request.setAttribute("list", list);
    	RequestDispatcher dispatcher = 
    			request.getRequestDispatcher(
    				"/WEB-INF/views/employee.jsp");
    	dispatcher.forward(request, response);
    }

}
