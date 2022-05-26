<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
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
type="text/css">
body{
font-family: Hind SemiBold;
}

table, th, td {
border: 1px solid black;
width:100%;

}
</style>

</head>
<body>


	
	<br>
	
	<br>
	<br>
	<br><br>
	<br>
	<br>
	
	<div class="container">
	<table class="center">
	
	<c:forEach var="stu" items="${stuDetails}">
	
	<c:set var= "id" value="${stu.id}"/>
	<c:set var= "fname" value="${stu.fname}"/>
	<c:set var= "lname" value="${stu.lname}"/>
	<c:set var= "bdy" value="${stu.bdy}"/>
	<c:set var= "contactNum" value="${stu.contactNum}"/>
	<c:set var= "email" value="${stu.email}"/>
	<c:set var= "school" value="${stu.school}"/>
	<c:set var= "address" value="${stu.address}"/>
	<c:set var= "medium" value="${stu.medium}"/>
	<c:set var= "year" value="${stu.year}"/>
	<c:set var= "uName" value="${stu.uName}"/>
	<c:set var= "passwd" value="${stu.passwd}"/>
	
	
	
	
<br><br>
	<tr>
		<td>Student ID</td>
		<td>${stu.id}</td>
	</tr>
	<tr>
		<td>First Name</td>
		<td>${stu.fname}</td>
	</tr>
	
	<tr>
		<td>Last Name</td>
		<td>${stu.lname}</td>
	</tr>
	<tr>
		<td>Birthday</td>
		<td>${stu.bdy}</td>
	</tr>
	<tr>
		<td>Contact Number</td>
		<td>${stu.contactNum}</td>
	</tr>
	<tr>
		<td>Student Email</td>
		<td>${stu.email}</td>
	</tr>
	<tr>
		<td>School</td>
		<td>${stu.school}</td>
	</tr>
	<tr>
		<td>Address</td>
		<td>${stu.address}</td>
	</tr>
	<tr>
		<td>Medium</td>
		<td>${stu.medium}</td>
	</tr>
	<tr>
		<td>Year</td>
		<td>${stu.year}</td>
	</tr>
	<tr>
		<td>Student User Name</td>
		<td>${stu.uName}</td>
	</tr>
	<tr>
		<td>Password</td>
		<td>${stu.passwd}</td>
	</tr>

	</c:forEach>
	
	</table>


	<c:url value = "updateStudent.jsp" var="stuupdate">
		<c:param name="id" value="${id}"/>
		<c:param name="fname" value="${fname}"/>
		<c:param name="lname" value="${lname}"/>
		<c:param name="bdy" value="${bdy}"/>
		<c:param name="contactNum" value="${contactNum}"/>
		<c:param name="email" value="${email}"/>
		<c:param name="school" value="${school}"/>
		<c:param name="address" value="${address}"/>
		<c:param name="medium" value="${medium}"/>
		<c:param name="year" value="${year}"/>
		<c:param name="uName" value="${uName}"/>
		<c:param name="passwd" value="${passwd}"/>
		
	</c:url>
	
	<br><br>
	<a href="${stuupdate}">
	<button type="submit">Update My Account</button>
		
	
	
	</a>
	

	
	<c:url value = "deletestudent.jsp" var="studelete">
		<c:param name="id" value="${id}"/>
		<c:param name="fname" value="${fname}"/>
		<c:param name="lname" value="${lname}"/>
		<c:param name="bdy" value="${bdy}"/>
		<c:param name="contactNum" value="${contactNum}"/>
		<c:param name="email" value="${email}"/>
		<c:param name="school" value="${school}"/>
		<c:param name="address" value="${address}"/>
		<c:param name="medium" value="${medium}"/>
		<c:param name="year" value="${year}"/>
		<c:param name="uName" value="${uName}"/>
		<c:param name="passwd" value="${passwd}"/>
		
	</c:url>
	
	<br>
	<br>
	<a href="${studelete}">
	<button type="submit">Delete My Account</button>
	
	
	</a>

	<br>
	<br>
	
	
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
