<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href= "css/index1.css" rel = "stylesheet" type = "text/css">
	<link rel="stylesheet" type="text/css" href="css/login1.css">
<header>
			<div class="container3">
				<div id="branding">
					<h1><span class ="highlight">Learning </span>Management</h1>
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
	<br><br><br><br><br><br>
	<div class="container">
	<form action= "StudentInsertServlet" method="post">
	
	<label for="fName"><b>First Name :</b></label>
	<input type="text" placeholder="Enter First Name here" class="input" name="fName" required><br>
	
	<label for="lName"><b>Last Name :</b></label>
	<input type="text" placeholder="Enter Last Name here" class="input" name="lName" required><br>
	
	<label for="bdy"><b>Birthday :</b></label><br>
	<input type="date" placeholder="Enter Your Birthday" class="input"name="bdy" required><br>
	
	<label for="contactNum"><b>Contact Number :</b></label>	
	<input type="text" placeholder="Enter Your Contact number here"  class="input" name="contactNum"required><br>
	
	<label for="email"><b>E mail :</b></label>	
	<input type="text" placeholder="Enter Your Contact number here"  class="input" name="email"required><br>
	
	<label for="school"><b>School:</b></label>
	<input type="text" placeholder="Enter the School" class="input"name="school" required><br>
	
	<label for="address"><b>address :</b></label>
	<input type="text" placeholder="Enter Address here" class="input"name="address"required ><br>
	
	<label for="medium"><b>Enter the Medium:</b></label>
	<input type="text" placeholder="Medium" class="input" name="medium"required><br>

	<label for="year"><b>Enter the Examination Year :</b></label>
	<input type="text" placeholder="Enter Examination Year" class="input" name="year"required><br>
	
	
	<label for="uName"><b>User Name:</b></label>
	<input type="text" placeholder="Enter the User Name here" class="input" name="uName"required><br>
	
	
	<label for="password"><b>Password:</b></label>
	<input type="password" placeholder="Enter the password here" class="input" name="passwd"required><br>
	
	<button type="submit">Register</button>
	
	</form>

</div>

		<footer class="sticky-footer">
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

