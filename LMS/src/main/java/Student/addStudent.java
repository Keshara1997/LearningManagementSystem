package Student;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class addStudent
 */
@WebServlet("/addStudent")
public class addStudent extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id = request.getParameter("id");
		String fname = request.getParameter("fname");
		String lname = request.getParameter("lname");
		String bdy = request.getParameter("bdy");
		String contactNum = request.getParameter("contactNum");
		String email = request.getParameter("email");
		String school = request.getParameter("school");
		String address = request.getParameter("address");
		String medium = request.getParameter("medium");
		String year = request.getParameter("year");
		String uName = request.getParameter("uName");
		String passwd = request.getParameter("passwd");
		
		
		boolean isTrue;
		
		isTrue=StudentDBUtil.insertstudent(id, fname, lname, bdy, contactNum, email, school, address, medium, year, uName, passwd );
	
		if(isTrue == true) {
			
			RequestDispatcher dis = request.getRequestDispatcher("success.jsp");
			dis.forward(request, response);
			
		}
		else
		{
			RequestDispatcher dis = request.getRequestDispatcher("unsuccess.jsp");
			dis.forward(request, response);
			
		}
		
	}
}
