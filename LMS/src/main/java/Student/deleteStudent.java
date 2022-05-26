package Student;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



public class deleteStudent {
	/**
	 * Servlet implementation class deleteStudent
	 */
	@WebServlet("/deleteStudent")
	public class deletestudent extends HttpServlet {
		private static final long serialVersionUID = 1L;
	       
	   
	    public deletestudent() {
	        super();
	    }
		
		protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			
			String id = request.getParameter("id");
			
			boolean isTrue;
			
			isTrue= StudentDBUtil.deleteStudent(id);
			
			if(isTrue == true) {
				
				RequestDispatcher dis = request.getRequestDispatcher("success.jsp");
				dis.forward(request, response);
			}
			else
			{
				List<Student> stuDetails = StudentDBUtil.getStudentDetails(id);
				request.setAttribute("stuDetails", stuDetails);
			
				RequestDispatcher dis = request.getRequestDispatcher("studentAccount.jsp");
				dis.forward(request, response);
			}
		
		}

	}
}
