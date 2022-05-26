package Student;

import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



@WebServlet("/updateStudent")
public class updateStudent extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public updateStudent() {
        super();
       
    }

	
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
		
		isTrue= StudentDBUtil.updatestudent(id,fname,lname,bdy,contactNum,email,school,address,medium,year,uName,passwd);
		
		if(isTrue == true) {
			
			List<Student> StudentDetails = StudentDBUtil.getStudentDetails(id);
			request.setAttribute("StudentDetails", stuDetails);
		
			RequestDispatcher dis = request.getRequestDispatcher("studentAccount.jsp");
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
