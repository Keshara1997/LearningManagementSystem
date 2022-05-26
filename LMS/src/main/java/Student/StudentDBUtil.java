package Student;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class StudentDBUtil {

	public static List<Student> validate(String userName, String password){
		
		
		
		ArrayList<Student> stu = new ArrayList<>();
		
		//create db connection 
		String url = "jdbc:mysql://localhost:3306/lms?autoReconnect=true&useSSL=false";
		String user ="root" ;
		String pass ="";
		
		
		//validate
		try {
			
			Class.forName("com.mysql.jdbc.Driver");
			
			Connection con = DriverManager.getConnection(url,user,pass);
			//Statement stmt = con.createStatement();
			java.sql.Statement stmt = ((java.sql.Connection) con).createStatement();
			
			
			
			String sql = "SELECT * from student where userD='"+ userName+"' and passD='"+ password+"'";
			//ResultSet rs = stmt.executeQuery(sql);
			ResultSet rs = ((java.sql.Statement) stmt).executeQuery(sql);
		
			
			if(rs.next()) {
				
				int id = rs.getInt(1);
				String fname = rs.getString(2);
				String lname = rs.getString(3);
				String bdy = rs.getString(4);
				String contactNum = rs.getString(5);
				String email = rs.getString(6);
				String school = rs.getString(7);
				String address = rs.getString(8);
				String medium = rs.getString(9);
				String year = rs.getString(10);
				String uName = rs.getString(11);
				String passwd = rs.getString(12);
				
				
				Student s = new Student(id,fname,lname,bdy,contactNum,email,school,address,medium,year,uName,passwd);
				
				stu.add(s);
			
			}
		}
		
		catch(Exception e){
			e.printStackTrace();
			
			
		}
		
		return stu;
		
	}
	public static boolean updatestudent(String id,String fname,String lname,String bdy,String contactNum ,String email,String school, String address, String medium,String year, String uName, String passwd) {
		
		boolean isSuccess=false;
		
		String url = "jdbc:mysql://localhost:3306/lms?autoReconnect=true&useSSL=false";
		String user ="root" ;
		String pass ="kaveetha1996";
		
		try {
			
			Class.forName("com.mysql.jdbc.Driver");
			
			Connection con = DriverManager.getConnection(url,user,pass);
			//Statement stmt = con.createStatement();
			java.sql.Statement stmt = ((java.sql.Connection) con).createStatement();
			
			
			
			String sql = "update student set id='"+id+"', fname='"+fname+"',lname='"+lname+"',bdy='"+bdy+"', contactNum='"+contactNum+"', email='"+email+"',school='"+school+"',address='"+address+"',medium='"+medium+"',year='"+year+"', uName='"+uName+"', passwd='"+passwd+"'"+"where id='"+id+"'";
			//ResultSet rs = stmt.executeQuery(sql);
			int rs= stmt.executeUpdate(sql);
			
			if(rs > 0) {
				
				isSuccess = true;
			}
			else {
				isSuccess = false;
			}
			
		}
		
		catch(Exception e) {
			 e.printStackTrace();
			
		}
		
		
		return isSuccess;
	}
	
	public static List<Student> getStudentDetails(String Id){
		
		int convertedID = Integer.parseInt(Id);
		ArrayList<Student> stu = new ArrayList<>();
		
		String url = "jdbc:mysql://localhost:3306/lms?autoReconnect=true&useSSL=false";
		String user ="root" ;
		String pass ="";
		
		 try {
			 Class.forName("com.mysql.jdbc.Driver");
				
				Connection con = DriverManager.getConnection(url,user,pass);
				//Statement stmt = con.createStatement();
				java.sql.Statement stmt = ((java.sql.Connection) con).createStatement();
				
				
				
				String sql = "select * from student where id ='"+convertedID+"'";
				ResultSet rs = stmt.executeQuery(sql);
				
				 
				 while(rs.next()) {
					 
							
					 int id = rs.getInt(1);
						String fname = rs.getString(2);
						String lname = rs.getString(3);
						String bdy = rs.getString(4);
						String contactNum = rs.getString(5);
						String email = rs.getString(6);
						String school = rs.getString(7);
						String address = rs.getString(8);
						String medium = rs.getString(9);
						String year = rs.getString(10);
						String uName = rs.getString(11);
						String passwd = rs.getString(12);
						
							
					
							Student s = new Student(id,fname,lname,bdy,contactNum,email,school,address,medium,year,uName,passwd);
							
							stu.add(s);
						
						}
			 
			 
			 
		 }
		 catch(Exception e) {
			 
			 e.printStackTrace();
		 }
		
		return stu;
	}
	
	public static boolean deleteStudent(String id) {
		boolean isSuccess=false;
		String url = "jdbc:mysql://localhost:3306/lms?autoReconnect=true&useSSL=false";
		String user ="root" ;
		String pass ="";
		
		int convertedID = Integer.parseInt(id);
		
		
		try {
			 Class.forName("com.mysql.jdbc.Driver");
				
				Connection con = DriverManager.getConnection(url,user,pass);
				//Statement stmt = con.createStatement();
				java.sql.Statement stmt = ((java.sql.Connection) con).createStatement();
				
				
				
				String sql = "delete from student where id ='"+convertedID+"'";
				
				
				int r= stmt.executeUpdate(sql);
				
				if(r > 0) {
					
					isSuccess = true;
				}
				else {
					isSuccess = false;
				}
			
		}
		catch(Exception e) {
			
			e.printStackTrace();
		}
		
		
		return isSuccess;
	}
	public static boolean insertstudent(String id,String fname,String lname,String bdy,String contactNum ,String email,String school, String address, String medium,String year, String uName, String passwd) {
			
boolean isSuccess=false;
		
		
		
		//create db connection
			String url = "jdbc:mysql://localhost:3306/lms?autoReconnect=true&useSSL=false";
			String user ="root" ;
			String pass ="";
			
			try {
				Class.forName("com.mysql.jdbc.Driver");
				
				Connection con = DriverManager.getConnection(url,user,pass);
				//Statement stmt = con.createStatement();
				java.sql.Statement stmt = ((java.sql.Connection) con).createStatement();
				
				String sql = "insert into student values(0,'"+fname+"','"+lname+"','"+bdy+"','"+contactNum+"','"+email+"','"+school+"','"+address+"','"+medium+"','"+year+"','"+uName+"','"+passwd+"')";
				int rs = stmt.executeUpdate(sql);
				//ResultSet rs = stmt.executeQuery(sql);
				//ResultSet rs = ((java.sql.Statement) stmt).executeQuery(sql);
				
				if(rs > 0) {
					
					isSuccess = true;
				}
				else {
					isSuccess = false;
				}
					
				
			}
			catch(Exception e) {
				
				e.printStackTrace();
			}
		
		return isSuccess;
		
	}
		
		


}
