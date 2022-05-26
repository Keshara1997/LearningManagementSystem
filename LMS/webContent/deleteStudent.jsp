<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href= "css/index1.css" rel = "stylesheet" type = "text/css">
<link rel="stylesheet" type="text/css" href="css/login1.css">
<header>
			<div class="container3">
				<div id="branding">
					<h1><span class ="highlight">Learning</span>Management</h1>
				</div>
			</div>
			<nav>
				<ul>
					<li class="current"><a href="Home.jsp">Home</a></li>
					<li><a href="about.jsp">About</a></li>
					<li><a href="contact.jsp">Contact Us</a></li>
					<li><a href="login.jsp">Login</a></li>
					<li><a href="career.jsp">Teachers</a></li>
					<li><a href="career.jsp">Career</a></li>
					
				</ul>
			</nav>

	</header>
		
<style>
body {font-family: Arial, Helvetica, sans-serif;}
* {box-sizing: border-box;}

input[type=text], select, textarea {
  width: 100%;
  padding: 12px;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
  margin-top: 6px;
  margin-bottom: 16px;
  resize: vertical;
}

input[type=submit] {
  background-color: #04AA6D;
  color: white;
  padding: 12px 20px;
  border: none;
  border-radius: 4px;
  cursor: pointer;
}

input[type=submit]:hover {
  background-color: #45a049;
}
button {
  background-color: #3399ff;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 100%;
}

button:hover {
  opacity: 0.8;
}

.container3 {
  border-radius: 5px;
  background-color: #f2f2f2;
  padding: 60px 300px 100px 300px;
  background: #0D586A;
  color:#ffffff;
   z-index: 10;
	min-height: 70px;
	border-bottom: #dd3822 2px solid;
	width: 100%;
  
}
body{
	min-height:100vh;
}

.sticky-footer{
	position:stickey;
	top:100%

}
</style>

</head>
<body>


	<br>
	<br>
	<br><br>
	<br>
	<br>
	<br>
	<br>
	<%
	
	String id = request.getParameter("id");
	String fName = request.getParameter("fName");
 	String lName = request.getParameter("lName");
 	String bdy = request.getParameter("bdy");
 	String contactNum= request.getParameter("contactNum");
 	String email = request.getParameter("email");
 	String school = request.getParameter("school");
 	String address= request.getParameter("address");
 	String medium = request.getParameter("medium");
 	String year = request.getParameter("year");
 	String uName = request.getParameter("uName");
	String passwd = request.getParameter("passwd");
	%>
	<div class="container">
	
	<h1>Account Delete</h1>
	
	
	<form action ="deleteStudent" method="post">
	
	Student ID <input type="text" name ="id" value ="<%=id%>"readonly><br>
	Student First Name <input type="text" name ="fName" value ="<%=fName%>" readonly><br>
	Student Last Name <input type="text" name ="lName" value ="<%=lName%>"readonly><br>
	Student Birthday <input type="text" name ="bdy" value ="<%=bdy%>"readonly><br>
	Student Contact Number <input type="text" name ="contactNum" value ="<%=contactNum%>"readonly><br>
	Student Email <input type="text" name ="email" value ="<%=email%>"readonly><br>
	Student School <input type="text" name ="school" value ="<%=school%>"readonly><br>
	Student Address <input type="text" name ="address" value ="<%=address%>"readonly><br>
	Student Medium <input type="password" name ="medium" value ="<%=medium%>"readonly><br>
	Student Year<input type="text" name ="year" value ="<%=year%>"readonly><br>
	Student User Name <input type="text" name ="uName" value ="<%=uName%>"readonly><br>
	Student Password <input type="text" name ="passwd" value ="<%=passwd%>"readonly><br>
	
	 <button type="submit">Delete</button>
	
	</form>
	</div>
	

		<footer>
                  <ul class="breadcrumb">
  <li><a href="terms.jsp">Terms and Conditions</a></li>
  <li><a href="faq.jsp">FAQ</a></li>
  <li><a href="career.jsp">Careers</a></li>
</ul>
         
                   <ul class="breadcrumb2">
                   <u class="foll">Follow us on:</u>
  <li><a href="http://www.facebook.com" target="_blank">Facebook</a></li>
  <li><a href="http://www.twitter.com" target="_blank">Twitter</a></li>
  <li><a href="https://www.instagram.com" target="_blank">Instagram</a></li>
</ul>
            
			<p>
			LMS, Copyright &copy; 2022
			</p>

		</footer>

	</body>
</html> 


